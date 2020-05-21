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
public class TreatmentRecord {
    int id,  treatment_id;
    String type, treatment, remark, price;

    public TreatmentRecord(int id, int treatment_id, String type, String treatment, String remark, String price) {
        this.id = id;
        this.treatment_id = treatment_id;
        this.type = type;
        this.treatment = treatment;
        this.remark = remark;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTreatment_id() {
        return treatment_id;
    }

    public void setTreatment_id(int treatment_id) {
        this.treatment_id = treatment_id;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    
    
    
}
