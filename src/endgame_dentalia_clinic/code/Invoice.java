
package endgame_dentalia_clinic.code;

public class Invoice {
   
     int id, patient_id;
     String patientname, treatment_id, date, paid_by;
     double treatment_fee, payment, balance;

    public Invoice(int id, int patient_id, String patientname, String treatment_id, String date, String paid_by, double treatment_fee, double payment, double balance) {
        this.id = id;
        this.patient_id = patient_id;
        this.patientname = patientname;
        this.treatment_id = treatment_id;
        this.date = date;
        this.paid_by = paid_by;
        this.treatment_fee = treatment_fee;
        this.payment = payment;
        this.balance = balance;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(int patient_id) {
        this.patient_id = patient_id;
    }

    public String getPatientname() {
        return patientname;
    }

    public void setPatientname(String patientname) {
        this.patientname = patientname;
    }

    public String getTreatment_id() {
        return treatment_id;
    }

    public void setTreatment_id(String treatment_id) {
        this.treatment_id = treatment_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPaid_by() {
        return paid_by;
    }

    public void setPaid_by(String paid_by) {
        this.paid_by = paid_by;
    }

    public double getTreatment_fee() {
        return treatment_fee;
    }

    public void setTreatment_fee(double treatment_fee) {
        this.treatment_fee = treatment_fee;
    }

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

   
    
     
}
