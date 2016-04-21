import org.hamroparty.District
import org.hamroparty.registration.Registration
import org.hamroparty.user.User

class BootStrap {

    def init = {servletContext->
        println "------------------+++++++++++++++>>>>>>>>>>??????????????---------------"
        /*new User(name: "admin",password: "admin123#",email: "admin@gmail.com",role: "admin").save()
        new User(name: "Prakash",password: "prakash",email: "prakash@gmail.com",role: "app").save()*/


/*     new Registration(sn :"1",firstName : "AAA" ,middleName : "aaa",lastName : "aaa" ,
                permanentAddress : "Ktm" ,temporaryAddress : "Ktm" ,zone : "Mahakali",state : "7",district : "Baitadi",
                vdcMunicipality : "Rauleshwar",wardNo : "6" ,gender : "M" ,dateOfBirth : new Date(2010, 02, 22) ,
                occupation : "Engineer",registrationDate : new Date(2011, 07, 10) ,emailAddress : "prakash.bhatt51@gmail.com",
                contractNo : "9849982457",parentFirstName : "BBB",parentMiddleName : "bbb",parentLastName : "bbb",parentGender : "M",
                acceptMember : true ).save()*/


        new District(name:"Illam",code:"027").save();
        new District(name:"Arghakhanchi",code:"027").save();
        new District(name:"Jhapa",code:"023").save();
        new District(name:"Pachthar",code:"024").save();
        new District(name:"Taplejung",code:"024").save();
        new District(name:"Bhojpur",code:"029").save();
        new District(name:"Dhankuta",code:"026").save();
        new District(name:"Morang",code:"021").save();
        new District(name:"Sunsari",code:"025").save();
        new District(name:"Sankhuwasaba",code:"029").save();
        new District(name:"Tehrathum",code:"026").save();
        new District(name:"Khotang",code:"036").save();
        new District(name:"Okhaldhunga",code:"037").save();
        new District(name:"Saptari",code:"031").save();
        new District(name:"Siraha",code:"033").save();
        new District(name:"Solukhumbu",code:"038").save();
        new District(name:"Udaypur",code:"035").save();
        new District(name:"Dhanusha",code:"041").save();
        new District(name:"Dolakha",code:"049").save();
        new District(name:"Mahottari",code:"044").save();
        new District(name:"Ramechhap",code:"048").save();
        new District(name:"Sarlahi",code:"046").save();
        new District(name:"Sindhuli",code:"047").save();
        new District(name:"Bhaktapur",code:"01").save();
        new District(name:"Dhading",code:"010").save();
        new District(name:"Kathmandu",code:"01").save();
        new District(name:"Kavrepalanchok",code:"011").save();
        new District(name:"Lalitpur",code:"01").save();
        new District(name:"Nuwakot",code:"010").save();
        new District(name:"Rasuwa",code:"010").save();
        new District(name:"Sindhupalchok",code:"011").save();
        new District(name:"Bara",code:"053").save();
        new District(name:"Chitwan",code:"056").save();
        new District(name:"Makawanpur",code:"057").save();
        new District(name:"Parsa",code:"051").save();
        new District(name:"Rautahat",code:"055").save();
        new District(name:"Gorkha",code:"064").save();
        new District(name:"Kaski",code:"061").save();
        new District(name:"Lamjung",code:"066").save();
        new District(name:"Manang",code:"066").save();
        new District(name:"Syangja",code:"063").save();
        new District(name:"Tanahun",code:"065").save();
        new District(name:"Baglung",code:"068").save();
        new District(name:"Parwat",code:"067").save();
        new District(name:"Mustang",code:"069").save();
        new District(name:"Myagdi",code:"069").save();
        new District(name:"Agrghakanchi",code:"077").save();
        new District(name:"Gulmi",code:"079").save();
        new District(name:"Kapilvastu",code:"076").save();
        new District(name:"Nawalparasi",code:"078").save();
        new District(name:"Palpa",code:"075").save();
        new District(name:"Rupandehi",code:"071").save();
        new District(name:"Dang",code:"082").save();
        new District(name:"Pyuthan",code:"086").save();
        new District(name:"Rolpa",code:"086").save();
        new District(name:"Rukum",code:"088").save();
        new District(name:"Salyan",code:"088").save();
        new District(name:"Banke",code:"081").save();
        new District(name:"Bardiya",code:"084").save();
        new District(name:"Dailekh",code:"089").save();
        new District(name:"Jajarkot",code:"089").save();
        new District(name:"Surkhet",code:"083").save();
        new District(name:"Dolpa",code:"087").save();
        new District(name:"Humla",code:"019").save();
        new District(name:"Jumla",code:"087").save();
        new District(name:"Kalikot",code:"087").save();
        new District(name:"Mugu",code:"019").save();
        new District(name:"Achham",code:"097").save();
        new District(name:"Bajhang",code:"092").save();
        new District(name:"Bajura",code:"097").save();
        new District(name:"Doti",code:"094").save();
        new District(name:"Kailali",code:"091").save();
        new District(name:"Baitadi",code:"095").save();
        new District(name:"Dadeldhura",code:"096").save();
        new District(name:"Darchula",code:"093").save();
        new District(name:"Kanchanpur",code:"099").save();
    }

    def destroy = {
    }
}
