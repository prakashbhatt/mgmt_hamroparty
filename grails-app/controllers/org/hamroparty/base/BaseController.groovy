package org.hamroparty.base

abstract class BaseController {

 //   def index() {}

        def auth() {
            if(session.user==null) {
                redirect(controller:'user',action:'login')
                return false
            }
        }
    }

