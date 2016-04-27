package org.hamroparty.district

class District {
    String name;
    String code;
    String abbreviation

    static constraints = {
        abbreviation(nullable: true)
    }

    String toString(){
        return name
    }
}
