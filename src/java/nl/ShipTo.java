/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package nl;

/**
 *
 * @author Dick
 */
public class ShipTo {
    
    String name;
    String city;

    public ShipTo(String name, String city) {
        this.name = name;
        this.city = city;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
}
