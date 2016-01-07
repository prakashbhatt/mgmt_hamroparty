package org.hamroparty.user

class User {

    String name;
    String password;
    String email;
    String role;


    static constraints = {
        name(blank: false, maxSize: 50,unique: true)
        password(blank: false, mixSize: 6)
        email(email: true,unique: true)
        role(inList: ["admin","app"])
    }
    String toString(){
        return name;
    }
}
