package com.pms.dao;

import com.pms.model.Appointment;
import com.pms.model.Billing;
import com.pms.model.User;
import com.pms.util.HibernateUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import java.util.List;

public class AdminDAOImpl implements AdminDAO {

    private EntityManagerFactory emf = HibernateUtil.getEntityManagerFactory();

    @Override
    public long getTotalPatients() {
        EntityManager em = emf.createEntityManager();
        try {
            return (long) em.createQuery("SELECT COUNT(u) FROM User u WHERE u.role = 'Patient'").getSingleResult();
        } finally {
            em.close();
        }
    }

    @Override
    public long getTotalDoctors() {
        EntityManager em = emf.createEntityManager();
        try {
            return (long) em.createQuery("SELECT COUNT(u) FROM User u WHERE u.role = 'Doctor'").getSingleResult();
        } finally {
            em.close();
        }
    }

    @Override
    public long getTotalAppointments() {
        EntityManager em = emf.createEntityManager();
        try {
            return (long) em.createQuery("SELECT COUNT(a) FROM Appointment a").getSingleResult();
        } finally {
            em.close();
        }
    }

    @Override
    public double getTotalRevenue() {
        EntityManager em = emf.createEntityManager();
        try {
            Double revenue = (Double) em.createQuery("SELECT SUM(b.amount) FROM Billing b").getSingleResult();
            return revenue != null ? revenue : 0.0;
        } finally {
            em.close();
        }
    }

    @Override
    public List<User> getAllUsers() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT u FROM User u", User.class).getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<User> getAllPatients() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT u FROM User u WHERE u.role = 'Patient'", User.class).getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<User> getAllDoctors() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT u FROM User u WHERE u.role = 'Doctor'", User.class).getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<Appointment> getAllAppointments() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT a FROM Appointment a ORDER BY a.appointmentDate DESC", Appointment.class).getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<Billing> getAllBillings() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT b FROM Billing b ORDER BY b.billingDate DESC", Billing.class).getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<Object[]> getRecentActivity() {
        EntityManager em = emf.createEntityManager();
        try {
            // Mocking activity since we don't have an 'ActivityLog' table yet.
            // But we can get recent appointments or users.
            return em.createNativeQuery("SELECT 'New Appointment' as activity, p.fullName as userName, a.appointmentDate as timestamp, a.status as status " +
                                       "FROM appointments a JOIN users p ON a.patient_id = p.id " +
                                       "UNION ALL " +
                                       "SELECT 'New Signup' as activity, fullName as userName, CURRENT_TIMESTAMP as timestamp, role as status FROM users " +
                                       "ORDER BY timestamp DESC")
                     .setMaxResults(10)
                     .getResultList();
        } finally {
            em.close();
        }
    }
}
