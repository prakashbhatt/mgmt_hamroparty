import constant.MgmtConstants
import org.hamroparty.district.District
import org.hamroparty.registration.Registration
import org.hamroparty.user.User

class BootStrap {

    def init = {servletContext->

       // new MgmtConstants().distList();
        println "------------------+++++++++++++++>>>>>>>>>>??????????????---------------"
        /*new User(name: "admin",password: "admin123#",email: "admin@gmail.com",role: "admin").save()
        new User(name: "Prakash",password: "prakash",email: "prakash@gmail.com",role: "app").save()*/


/*     new Registration(sn :"1",firstName : "AAA" ,middleName : "aaa",lastName : "aaa" ,
                permanentAddress : "Ktm" ,temporaryAddress : "Ktm" ,zone : "Mahakali",state : "7",district : "Baitadi",
                vdcMunicipality : "Rauleshwar",wardNo : "6" ,gender : "M" ,dateOfBirth : new Date(2010, 02, 22) ,
                occupation : "Engineer",registrationDate : new Date(2011, 07, 10) ,emailAddress : "prakash.bhatt51@gmail.com",
                contractNo : "9849982457",parentFirstName : "BBB",parentMiddleName : "bbb",parentLastName : "bbb",parentGender : "M",
                acceptMember : true ).save()*/


        new District(name:"Achham"        ,code:"01 ").save();
        new District(name:"Arghakhanchi"  ,code:"02 ").save();
        new District(name:"Baglung"       ,code:"03 ").save();
        new District(name:"Baitadi"       ,code:"04 ").save();
        new District(name:"Bajhang"       ,code:"05 ").save();
        new District(name:"Bajura"        ,code:"06 ").save();
        new District(name:"Banke"         ,code:"07 ").save();
        new District(name:"Bara"          ,code:"08 ").save();
        new District(name:"Bardiya"       ,code:"09 ").save();
        new District(name:"Bhaktapur"     ,code:"10").save();
        new District(name:"Bhojpur"       ,code:"11").save();
        new District(name:"Chitawan"      ,code:"12").save();
        new District(name:"Dadeldhura"    ,code:"13").save();
        new District(name:"Dailekh"       ,code:"14").save();
        new District(name:"Dang"          ,code:"15").save();
        new District(name:"Darchula"      ,code:"16").save();
        new District(name:"Dhading"       ,code:"17").save();
        new District(name:"Dhankuta"      ,code:"18").save();
        new District(name:"Dhanusa"       ,code:"19").save();
        new District(name:"Dolakha"       ,code:"20").save();
        new District(name:"Dolpa"         ,code:"21").save();
        new District(name:"Doti"          ,code:"22").save();
        new District(name:"Gorkha"        ,code:"23").save();
        new District(name:"Gulmi"         ,code:"24").save();
        new District(name:"Humla"         ,code:"25").save();
        new District(name:"Ilam"          ,code:"26").save();
        new District(name:"Jajarkot"      ,code:"27").save();
        new District(name:"Jhapa"         ,code:"28").save();
        new District(name:"Jumla"         ,code:"29").save();
        new District(name:"Kailali"       ,code:"30").save();
        new District(name:"Kalikot"       ,code:"31").save();
        new District(name:"Kanchanpur"    ,code:"32").save();
        new District(name:"Kapilbastu"    ,code:"33").save();
        new District(name:"Kaski"         ,code:"34").save();
        new District(name:"Kathmandu"     ,code:"35").save();
        new District(name:"Kavrepalanchok",code:"36").save();
        new District(name:"Khotang"       ,code:"37").save();
        new District(name:"Lalitpur"      ,code:"38").save();
        new District(name:"Lamjung"       ,code:"39").save();
        new District(name:"Mahottari"     ,code:"40").save();
        new District(name:"Makwanpur"     ,code:"41").save();
        new District(name:"Manang"        ,code:"42").save();
        new District(name:"Morang"        ,code:"43").save();
        new District(name:"Mugu"          ,code:"44").save();
        new District(name:"Mustang"       ,code:"45").save();
        new District(name:"Myagdi"        ,code:"46").save();
        new District(name:"Nawalparasi"   ,code:"47").save();
        new District(name:"Nuwakot"       ,code:"48").save();
        new District(name:"Okhaldhunga"   ,code:"49").save();
        new District(name:"Palpa"         ,code:"50").save();
        new District(name:"Panchthar"     ,code:"51").save();
        new District(name:"Parbat"        ,code:"52").save();
        new District(name:"Parsa"         ,code:"53").save();
        new District(name:"Pyuthan"       ,code:"54").save();
        new District(name:"Ramechhap"     ,code:"55").save();
        new District(name:"Rasuwa"        ,code:"56").save();
        new District(name:"Rautahat"      ,code:"57").save();
        new District(name:"Rolpa"         ,code:"58").save();
        new District(name:"Rukum"         ,code:"59").save();
        new District(name:"Rupandehi"     ,code:"60").save();
        new District(name:"Salyan"        ,code:"61").save();
        new District(name:"Sankhuwasabha" ,code:"62").save();
        new District(name:"Saptari"       ,code:"63").save();
        new District(name:"Sarlahi"       ,code:"64").save();
        new District(name:"Sindhuli"      ,code:"65").save();
        new District(name:"Sindhupalchok" ,code:"66").save();
        new District(name:"Siraha"        ,code:"67").save();
        new District(name:"Solukhumbu"    ,code:"68").save();
        new District(name:"Sunsari"       ,code:"69").save();
        new District(name:"Surkhet"       ,code:"70").save();
        new District(name:"Syangja"       ,code:"71").save();
        new District(name:"Taplejung"     ,code:"72").save();
        new District(name:"Tanahu"        ,code:"73").save();
        new District(name:"Terhathum"     ,code:"74").save();
        new District(name:"Udayapur"      ,code:"75").save();

    }

    def destroy = {
    }
}
