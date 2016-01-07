package org.hamroparty.payrole

import org.hamroparty.registration.Registration

class PayRole {

    Integer paidAmount
    Date paidDate
    Registration registration

    static constraints = {
        paidAmount(nullable: false)
        paidDate(nullable: false)

    }
}
