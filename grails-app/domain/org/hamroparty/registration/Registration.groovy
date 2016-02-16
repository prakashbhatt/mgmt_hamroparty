package org.hamroparty.registration

import constant.MgmtConstants
import org.hamroparty.payrole.PayRole

class Registration {

    String sn;
    String firstName;
    String middleName;
    String lastName;
    String permanentAddress;
    String temporaryAddress;
    String zone;
    String state;
    String district;
    String vdcMunicipality;
    String wardNo;
    String gender;
    Date dateOfBirth;
    String occupation;
    Date registrationDate;
    String emailAddress;
    String contractNo;
    String parentFirstName;
    String parentLastName;
    String parentMiddleName;
    String parentGender;
    Boolean acceptMember = false;
    String acceptedBy
    String rejectedBy


    static constraints = {
        sn(unique: true);
        firstName(blank: false, maxSize: 50)
        middleName(blank: true)
        lastName(blank: false, maxSize: 50)
        permanentAddress(blank: false)
        temporaryAddress(blank: false)
        zone(blank: false)
        state(blank: false)
        district(blank: false, maxSize: 50, inList:MgmtConstants.districtList.sort())
        vdcMunicipality(blank: false, maxSize: 50)
        wardNo(blank: false, maxSize: 50)
        gender(blank: false, inList: ["Male","Female","Unknown"])
        dateOfBirth();
        occupation();
        registrationDate();
        emailAddress(email: true)
        contractNo(maxSize: 10,minSize: 10)
        parentFirstName();
        parentMiddleName()
        parentLastName()
        parentGender(blank: false, inList: ["Male","Female","Unknown"])
        acceptedBy(nullable: true,blank: true)
        rejectedBy(nullable: true,blank: true)
    }

    String toString(){
        return firstName+" "+middleName+" "+lastName+"("+emailAddress+")"
    }
}
