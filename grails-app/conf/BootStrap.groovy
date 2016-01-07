import org.hamroparty.registration.Registration
import org.hamroparty.user.User

class BootStrap {

    def init = { servletContext ->
        new User(name: "admin",password: "admin",email: "admin@gmail.com",role: "admin").save()
        new User(name: "Prakash",password: "prakash",email: "prakash@gmail.com",role: "app").save()


     new Registration(sn :"1",firstName : "AAA" ,middleName : "aaa",lastName : "aaa" ,
                permanentAddress : "Ktm" ,temporaryAddress : "Ktm" ,zone : "Mahakali",state : "7",district : "Baitadi",
                vdcMunicipality : "Rauleshwar",wardNo : "6" ,gender : "M" ,dateOfBirth : new Date(2010, 02, 22) ,
                occupation : "Engineer",registrationDate : new Date(2011, 07, 10) ,emailAddress : "prakash.bhatt51@gmail.com",
                contractNo : "9849982457",parentFirstName : "BBB",parentMiddleName : "bbb",parentLastName : "bbb",parentGender : "M",
                acceptMember : true ).save()


    }
    def destroy = {
    }
}
