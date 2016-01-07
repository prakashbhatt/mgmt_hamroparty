package org.hamroparty.registration

import org.hamroparty.base.BaseController
import org.springframework.dao.DataIntegrityViolationException

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

    def srearch(){

    }
}
