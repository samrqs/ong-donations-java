/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author samara
 */
public class Leg {
    private Distance distance;
    private DestinoLocation end_location;
    private OrigemLocation start_location;

    public Distance getDistance() {
        return distance;
    }
     
    public DestinoLocation getEndLocation() {
        return end_location;
    }
    
    public OrigemLocation getStartLocation() {
        return start_location;
    }
}