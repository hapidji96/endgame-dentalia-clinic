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
public class Patient {
   int patient_id;
   String firstname,lastname, dob, gender, date_first_visit, date_last_visit, tel_number, mobile_number, marital_status, address, membership;

    public Patient(int patient_id, String firstname, String lastname, String dob, String gender, String date_first_visit, String date_last_visit, String tel_number, String mobile_number, String marital_status, String address, String membership) {
        this.patient_id = patient_id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.dob = dob;
        this.gender = gender;
        this.date_first_visit = date_first_visit;
        this.date_last_visit = date_last_visit;
        this.tel_number = tel_number;
        this.mobile_number = mobile_number;
        this.marital_status = marital_status;
        this.address = address;
        this.membership = membership;
    }

    public int getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(int patient_id) {
        this.patient_id = patient_id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDate_first_visit() {
        return date_first_visit;
    }

    public void setDate_first_visit(String date_first_visit) {
        this.date_first_visit = date_first_visit;
    }

    public String getDate_last_visit() {
        return date_last_visit;
    }

    public void setDate_last_visit(String date_last_visit) {
        this.date_last_visit = date_last_visit;
    }

    public String getTel_number() {
        return tel_number;
    }

    public void setTel_number(String tel_number) {
        this.tel_number = tel_number;
    }

    public String getMobile_number() {
        return mobile_number;
    }

    public void setMobile_number(String mobile_number) {
        this.mobile_number = mobile_number;
    }

    public String getMarital_status() {
        return marital_status;
    }

    public void setMarital_status(String marital_status) {
        this.marital_status = marital_status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMembership() {
        return membership;
    }

    public void setMembership(String membership) {
        this.membership = membership;
    }

   
}
