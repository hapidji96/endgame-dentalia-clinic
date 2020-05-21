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
public class Treatment {
    int patient_id, treatment_id;
    String date, dentistInCharge, otherfindings, type, treatment, remark;
    double price;

    public Treatment(int patient_id, int treatment_id, String date, String dentistInCharge, String otherfindings, String type, String treatment, String remark, double price) {
        this.patient_id = patient_id;
        this.treatment_id = treatment_id;
        this.date = date;
        this.dentistInCharge = dentistInCharge;
        this.otherfindings = otherfindings;
        this.type = type;
        this.treatment = treatment;
        this.remark = remark;
        this.price = price;
    }

    public int getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(int patient_id) {
        this.patient_id = patient_id;
    }

    public int getTreatment_id() {
        return treatment_id;
    }

    public void setTreatment_id(int treatment_id) {
        this.treatment_id = treatment_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDentistInCharge() {
        return dentistInCharge;
    }

    public void setDentistInCharge(String dentistInCharge) {
        this.dentistInCharge = dentistInCharge;
    }

    public String getOtherfindings() {
        return otherfindings;
    }

    public void setOtherfindings(String otherfindings) {
        this.otherfindings = otherfindings;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTreatment() {
        return treatment;
    }

    public void setTreatment(String treatment) {
        this.treatment = treatment;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    
}
