/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package endgame_dentalia_clinic.code;

/**
 *
 * @author Karim
 */
public class Appointment {

   String appointment_code, name, date, timeslot, treatment_type;

    public Appointment(String appointment_code, String name, String date, String timeslot, String treatment_type) {
        this.appointment_code = appointment_code;
        this.name = name;
        this.date = date;
        this.timeslot = timeslot;
        this.treatment_type = treatment_type;
    }

    public String getAppointment_code() {
        return appointment_code;
    }

    public void setAppointment_code(String appointment_code) {
        this.appointment_code = appointment_code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(String timeslot) {
        this.timeslot = timeslot;
    }

    public String getTreatment_type() {
        return treatment_type;
    }

    public void setTreatment_type(String treatment_type) {
        this.treatment_type = treatment_type;
    }

   

    
}
