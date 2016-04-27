package org.hamroparty.registration

import constant.MgmtConstants

class Registration {

    String firstName;
    String middleName;
    String lastName;
    String zone;
    String district;
    String vdcMunicipality;
    String wardNo;
    String streetTole
    Date dateOfBirth;
    String gender;
    Date applicationDate;
    Date registrationDate = new Date();
    String educationDetails
    String occupation;
    byte[] image
    String fatherName
    String motherName
    String grandFatherName
    String grandMotherName
    String contractNo;
    String emailAddress;
    String howDidYouHearAboutUs


    Boolean acceptMember = false;
    String acceptedBy
    String rejectedBy
    String memberStatus
    int sequence=0
    String memberId

    String s_field1
    String s_field2
    String s_field3
    String s_field4
    int i_field1
    int i_field2
    int i_field3
    int i_field4
    Date df1
    Date df2
    Date df3
    Date df4



    static constraints = {
        firstName(blank: false, maxSize: 50)
        middleName(blank: true)
        lastName(blank: false, maxSize: 50)
        zone(blank: false)
        district(blank: false, maxSize: 50, inList:MgmtConstants.districtList.sort())
        vdcMunicipality(blank: false, maxSize: 50)
        wardNo(blank: false, maxSize: 50)
        streetTole(blank: false, maxSize: 150)
        dateOfBirth()
        gender(blank: false, inList: ["Male","Female","Other"])
        applicationDate(nullable: true,blank: true)
        registrationDate(nullable: true,blank: true);
        educationDetails(blank: false, inList: ["No school","Under SLC","SLC","+2","Bachelor","Master","PhD","Other"])
        occupation(blank: false, maxSize: 150);
        image(nullable: true,blank: true,  maxSize:1073741824)
        fatherName(blank: false, maxSize: 150)
        motherName(blank: false, maxSize: 150)
        grandFatherName(blank: false, maxSize: 150)
        grandMotherName(blank: false, maxSize: 150)
        contractNo(maxSize: 10,minSize: 10, blank: false)
        emailAddress(email: true)
        howDidYouHearAboutUs(blank: true, inList: ["Social Media","Newspaper","Television","Radio","Search Engine","Friends/Family","Others"])

        memberId(nullable: true,blank: true)
        memberStatus(nullable: true,blank: true)
        acceptedBy(nullable: true,blank: true)
        rejectedBy(nullable: true,blank: true)
        sequence(nullable: true,blank: true)



        s_field1 (nullable:true,blank:true)
        s_field2 (nullable:true,blank:true)
        s_field3 (nullable:true,blank:true)
        s_field4 (nullable:true,blank:true)
        i_field1 (nullable:true,blank:true)
        i_field2 (nullable:true,blank:true)
        i_field3 (nullable:true,blank:true)
        i_field4 (nullable:true,blank:true)
        df1(nullable:true,blank:true)
        df2(nullable:true,blank:true)
        df3(nullable:true,blank:true)
        df4(nullable:true,blank:true)

    }

    String toString(){
        return firstName+" "+middleName+" "+lastName+"("+emailAddress+")"
    }
}
