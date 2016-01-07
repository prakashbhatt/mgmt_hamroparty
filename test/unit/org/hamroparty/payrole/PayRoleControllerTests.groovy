package org.hamroparty.payrole



import org.junit.*
import grails.test.mixin.*

@TestFor(PayRoleController)
@Mock(PayRole)
class PayRoleControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/payRole/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.payRoleInstanceList.size() == 0
        assert model.payRoleInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.payRoleInstance != null
    }

    void testSave() {
        controller.save()

        assert model.payRoleInstance != null
        assert view == '/payRole/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/payRole/show/1'
        assert controller.flash.message != null
        assert PayRole.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/payRole/list'

        populateValidParams(params)
        def payRole = new PayRole(params)

        assert payRole.save() != null

        params.id = payRole.id

        def model = controller.show()

        assert model.payRoleInstance == payRole
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/payRole/list'

        populateValidParams(params)
        def payRole = new PayRole(params)

        assert payRole.save() != null

        params.id = payRole.id

        def model = controller.edit()

        assert model.payRoleInstance == payRole
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/payRole/list'

        response.reset()

        populateValidParams(params)
        def payRole = new PayRole(params)

        assert payRole.save() != null

        // test invalid parameters in update
        params.id = payRole.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/payRole/edit"
        assert model.payRoleInstance != null

        payRole.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/payRole/show/$payRole.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        payRole.clearErrors()

        populateValidParams(params)
        params.id = payRole.id
        params.version = -1
        controller.update()

        assert view == "/payRole/edit"
        assert model.payRoleInstance != null
        assert model.payRoleInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/payRole/list'

        response.reset()

        populateValidParams(params)
        def payRole = new PayRole(params)

        assert payRole.save() != null
        assert PayRole.count() == 1

        params.id = payRole.id

        controller.delete()

        assert PayRole.count() == 0
        assert PayRole.get(payRole.id) == null
        assert response.redirectedUrl == '/payRole/list'
    }
}
