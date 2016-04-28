package org.hamroparty.district

class District {
    String name;
    String code;
    String abbreviation

    static constraints = {
        name(nullable: false, unique: true)
        code(nullable: false, unique: true)
        abbreviation(nullable: true)
    }

    String toString(){
        return name
    }
}
