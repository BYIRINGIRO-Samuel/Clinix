package com.pms.dao;

import com.pms.model.User;
import com.pms.model.Appointment;
import com.pms.model.Billing;
import java.util.List;
import java.util.Map;
import com.pms.model.Department;

public interface AdminDAO {
    // Counters
    long getTotalPatients();
    long getTotalDoctors();
    long getTotalAppointments();
    double getTotalRevenue();

    // Data lists
    List<User> getAllUsers();
    List<User> getAllPatients();
    List<User> getAllDoctors();
    List<Appointment> getAllAppointments();
    List<Billing> getAllBillings();
    
    // Recent activity
    List<Object[]> getRecentActivity(); // [Activity String, User Name, Timestamp, Status Badge]

    // Department management
    List<com.pms.model.Department> getAllDepartments();
    void addDepartment(com.pms.model.Department dept);
    void deleteDepartment(Long id);
    java.util.Map<String, Long> getMonthlyPatientGrowth();
    java.util.Map<String, Double> getRevenueByDepartment();
}
