package org.hamroparty.user

import org.hamroparty.base.BaseController
import org.hamroparty.registration.Registration
import org.springframework.dao.DataIntegrityViolationException

class UserController extends BaseController{

   def beforeInterceptor = [action:this.&auth, except:['login','logout']]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create() {
        [userInstance: new User(params)]
    }

    def save() {
        def userInstance = new User(params)
        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'user.label', default: 'User')] as Object[],
                        "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }

    def home() {
       String sortField = "id"
       String sortOrder = "asc"
        def  newRegistration;
        def  oldRegistration;
        def criteria = Registration.createCriteria();
        def criteria1 = Registration.createCriteria();
        (sortOrder, sortField) = sortParams(sortOrder, sortField)
        println params;

            newRegistration = criteria.list(max: 10, offset: params.offset) {
                and {
                    if(params.memberId && params.memberId!=null && params.newMember)like("memberId", "%"+params.memberId+"%")
                    if(params.firstName && params.firstName!=null && params.newMember)like("firstName", "%"+params.firstName+"%")
                    if(params.lastName && params.lastName!=null && params.newMember)like("lastName", "%"+params.lastName+"%")
                    if(params.emailAddress && params.emailAddress!=null && params.newMember)like("emailAddress", "%"+params.emailAddress+"%")
                    if(params.contractNo && params.contractNo!=null && params.newMember)like("contractNo", "%"+params.contractNo+"%")
                    eq('acceptMember',false)
                }
                order(sortField, sortOrder)

            }

            oldRegistration = criteria1.list(max: 10, offset: params.offset) {
                and {
                    if(params.memberId && params.memberId!=null && params.oldMember)like("memberId", "%"+params.memberId+"%")
                    if(params.firstName && params.firstName!=null && params.oldMember)like("firstName", "%"+params.firstName+"%")
                    if(params.lastName && params.lastName!=null && params.oldMember)like("lastName", "%"+params.lastName+"%")
                    if(params.emailAddress && params.emailAddress!=null && params.oldMember)like("emailAddress", "%"+params.emailAddress+"%")
                    if(params.contractNo && params.contractNo!=null && params.oldMember)like("contractNo", "%"+params.contractNo+"%")
                    if(params.memberStatus && params.memberStatus!=null && params.oldMember)like("memberStatus", "%"+params.memberStatus+"%")
                    eq('acceptMember',true)
                }
                order(sortField, sortOrder)
            }
        newRegistration.each {
            if (!it.memberStatus) {
               it.memberStatus = "Requested"
            }
        }

        [newRegistration: newRegistration, newTotal: Registration.findAllByAcceptMember(false).size(), oldRegistration: oldRegistration, total: Registration.findAllByAcceptMember(true).size()]
    }

    private List sortParams(sortOrder, sortField) {
        println params
        if (params.sort && params.order && !params.sort.equals('action')) {
            sortField = params.sort;
            sortOrder = params.order
           // println sortOrder+"---------"+sortField
        }
        [sortOrder, sortField]
    }

    def login(){

        User user = User.findByNameAndPassword(params.name, params.password)
        if (user) {
            session["user"] = user;
            redirect(action: 'home')

        } else {
            if(params.name|| params.password) flash.message = "Invalid username or password"
            render (view: "login")
        }

    }

    def logout(){
        session.user = null
        flash['message'] = 'Successfully logged out'
        redirect(action:'login')
    }

}
