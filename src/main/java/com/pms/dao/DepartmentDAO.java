package com.pms.dao;

import com.pms.model.Department;
import java.util.List;

public interface DepartmentDAO {
    void addDepartment(Department dept);
    List<Department> getAllDepartments();
    void deleteDepartment(Long id);
    void updateDepartment(Department dept);
    Department getDepartmentById(Long id);
}
