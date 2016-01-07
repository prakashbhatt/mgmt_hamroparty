package org.hamroparty.payrole

import org.hamroparty.base.BaseController
import org.springframework.dao.DataIntegrityViolationException

class PayRoleController extends BaseController{

    def beforeInterceptor=  [action: this.&auth]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [payRoleInstanceList: PayRole.list(params), payRoleInstanceTotal: PayRole.count()]
    }

    def create() {
        [payRoleInstance: new PayRole(params)]
    }

    def save() {
        def payRoleInstance = new PayRole(params)
        if (!payRoleInstance.save(flush: true)) {
            render(view: "create", model: [payRoleInstance: payRoleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'payRole.label', default: 'PayRole'), payRoleInstance.id])
        redirect(action: "show", id: payRoleInstance.id)
    }

    def show(Long id) {
        def payRoleInstance = PayRole.get(id)
        if (!payRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payRole.label', default: 'PayRole'), id])
            redirect(action: "list")
            return
        }

        [payRoleInstance: payRoleInstance]
    }

    def edit(Long id) {
        def payRoleInstance = PayRole.get(id)
        if (!payRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payRole.label', default: 'PayRole'), id])
            redirect(action: "list")
            return
        }

        [payRoleInstance: payRoleInstance]
    }

    def update(Long id, Long version) {
        def payRoleInstance = PayRole.get(id)
        if (!payRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payRole.label', default: 'PayRole'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (payRoleInstance.version > version) {
                payRoleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'payRole.label', default: 'PayRole')] as Object[],
                          "Another user has updated this PayRole while you were editing")
                render(view: "edit", model: [payRoleInstance: payRoleInstance])
                return
            }
        }

        payRoleInstance.properties = params

        if (!payRoleInstance.save(flush: true)) {
            render(view: "edit", model: [payRoleInstance: payRoleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'payRole.label', default: 'PayRole'), payRoleInstance.id])
        redirect(action: "show", id: payRoleInstance.id)
    }

    def delete(Long id) {
        def payRoleInstance = PayRole.get(id)
        if (!payRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payRole.label', default: 'PayRole'), id])
            redirect(action: "list")
            return
        }

        try {
            payRoleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'payRole.label', default: 'PayRole'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'payRole.label', default: 'PayRole'), id])
            redirect(action: "show", id: id)
        }
    }
}
