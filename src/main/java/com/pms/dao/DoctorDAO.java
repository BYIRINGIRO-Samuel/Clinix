package com.pms.dao;

import com.pms.model.Appointment;
import com.pms.model.MedicalRecord;
import com.pms.model.Prescription;
import com.pms.model.User;
import java.util.List;

public interface DoctorDAO {
    List<Appointment> getAppointmentsForDoctor(Long doctorId);
    List<User> getPatientsForDoctor(Long doctorId);
    void createMedicalRecord(MedicalRecord record);
    List<MedicalRecord> getPatientHistory(Long patientId);
    void writePrescription(Prescription prescription);
    List<Prescription> getPrescriptionsForPatient(Long patientId);
}
