package org.hamroparty.registration

import org.hamroparty.District
import org.hamroparty.base.BaseController
import org.springframework.dao.DataIntegrityViolationException

import java.text.DateFormat
import java.text.SimpleDateFormat

class RegistrationController extends BaseController{

    def beforeInterceptor=  [action: this.&auth, except: ['create', "registration",'save']]


    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [registrationInstanceList: Registration.list(params), registrationInstanceTotal: Registration.count()]
    }

    def create() {
        [registrationInstance: new Registration(params)]
    }

    def save() {
        if (!params.sn || params.sn == null) {
            def registration = Registration.list([max: 1, sort: "sn", order: "desc"])
            params.sn = Integer.parseInt(registration.get(0).sn)+1
        }
        params.memberId = generateMemberId(params.registrationDate.toString(), params.district)
        params.sequence = getMemberSequence(params.district)

        def registrationInstance = new Registration(params)
        if (!registrationInstance.save(flush: true)) {
            render(view: "create", model: [registrationInstance: registrationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'registration.label', default: 'Registration'), registrationInstance.id])
        redirect(action: "show", id: registrationInstance.id)
    }

    def show(Long id) {
        def registrationInstance = Registration.get(id)
        if (!registrationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), id])
            redirect(action: "list")
            return
        }

        [registrationInstance: registrationInstance]
    }

    def edit(Long id) {
        def registrationInstance = Registration.get(id)
        if (!registrationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), id])
            redirect(action: "list")
            return
        }

        [registrationInstance: registrationInstance]
    }

    def update(Long id, Long version) {
        def registrationInstance = Registration.get(id)
        if (!registrationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (registrationInstance.version > version) {
                registrationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'registration.label', default: 'Registration')] as Object[],
                          "Another user has updated this Registration while you were editing")
                render(view: "edit", model: [registrationInstance: registrationInstance])
                return
            }
        }


        Registration registration = Registration.findByIdAndMemberId(params.id, "")
        if (registration) {
            params.memberId = generateMemberId(params.registrationDate.toString(), params.district)
            params.sequence = getMemberSequence(params.district)
        }


        registrationInstance.properties = params

        if (!registrationInstance.save(flush: true)) {
            render(view: "edit", model: [registrationInstance: registrationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'registration.label', default: 'Registration'), registrationInstance.id])
        redirect(action: "show", id: registrationInstance.id)
    }

    def delete(Long id) {
        def registrationInstance = Registration.get(id)
        if (!registrationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), id])
            redirect(action: "list")
            return
        }

        try {
            registrationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'registration.label', default: 'Registration'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'registration.label', default: 'Registration'), id])
            redirect(action: "show", id: id)
        }
    }

    def registration(){
        redirect(action: "create", params: params)
    }

    def acceptMember(){

        Registration registration = Registration.get(params.id);
        if(session.user.role=="admin"){
            registration.acceptedBy=session['user'].id
            registration.acceptMember = true;
        }

        redirect(controller: "user", action: "home", params:[name:session.user.name, password:session.user.password])

    }
    def deniedMember(){
        Registration registration = Registration.get(params.id);
        if (params.acceptMember && params.acceptMember == "false") {
            registration.acceptMember = false;
        }else{
            registration.rejectedBy = session['user'].id
            registration.delete();
        }

        redirect(controller: "user", action: "home", params:[name:session.user.name, password:session.user.password])
    }

    def search(){

    }

    public String generateMemberId(String date, String districtName) {

        District district = District.findByName(districtName)
        String districtCode= district? district.code:'-';
        String memberId = formatDate(date)+'-'+districtCode+'-'+getSequence(districtName)
        println "memberId------->"+memberId

        return memberId
    }

    public int getMemberSequence(String districtName){

        def c = Registration.createCriteria()
        def results = c.list {
            eq("district", districtName)

            maxResults(1)
            order("sequence", "desc")
        }

        Registration result = results.get(0);

        int sequence = result.sequence;
        println "seq-----------"+sequence
        if (sequence && sequence>=101) {
            sequence = sequence+1;
        } else sequence = 101;
        return sequence;
    }

    public String formatDate(String date) {
        try {

            DateFormat originalFormat = new SimpleDateFormat("E MMM dd HH:mm:ss Z yyyy", Locale.ENGLISH);
            DateFormat targetFormat = new SimpleDateFormat("yyyy");
            Date date1 = originalFormat.parse(date);
            String formattedDate = targetFormat.format(date1);
            return formattedDate
        } catch (Exception e) {
            DateFormat originalFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.S", Locale.ENGLISH);
            DateFormat targetFormat = new SimpleDateFormat("yyyy");
            Date date1 = originalFormat.parse(date);
            String formattedDate = targetFormat.format(date1);
            return formattedDate
        }
    }

    String padZeroToLeft(String character) {
        while (character.length() < 8) {
            character = '0'+character;
            padZeroToLeft(character)
        }
        return character;
    }

    def getSequence(String districtName) {
        int sequence = getMemberSequence(districtName)
        return padZeroToLeft(String.valueOf(sequence))
    }

    def updateAll() {

         String query = "update Registration set sequence=0,memberId='' ";

        Registration.executeUpdate(query)

        Map<String,String> genderMap = new HashMap<>();
        genderMap.put("M","Male")
        genderMap. put("F","Female")

        List<Registration> registrations = Registration.findAll().sort{it.id}
        for (Registration re : registrations) {
            re.memberId = generateMemberId(re.registrationDate.toString(), re.district)
            re.sequence = getMemberSequence(re.district)

            if (genderMap.containsKey(re.gender)) {

                re.gender = genderMap.get(re.gender)
            }else{
                re.gender = 'Unknown'
            }

            if (genderMap.containsKey(re.parentGender)) {

                re.parentGender = genderMap.get(re.parentGender)
            }else{
                re.parentGender = 'Unknown'
            }

            if (!re.state) {
                re.state='NA'
            }
            if (!re.zone) {
                re.zone='NA'
            }
            if (!re.vdcMunicipality) {
                re.vdcMunicipality='NA'
            }
            if (!re.permanentAddress) {
                re.permanentAddress='NA'
            }
            if (!re.temporaryAddress) {
                re.temporaryAddress='NA'
            }
           // println re.district

            if (!re.save(flush: true)) {

                println "ID not generated for "+re.emailAddress
            }
        }

       forward(controller: 'user', action: 'home')
    }
}
