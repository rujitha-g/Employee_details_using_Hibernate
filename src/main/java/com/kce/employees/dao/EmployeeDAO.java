package com.kce.employees.dao;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.hibernate.Transaction;
import java.util.List;
import com.kce.employees.entity.Employee;
import com.kce.employees.util.HibernateUtil;

public class EmployeeDAO {

    public void saveEmployee(Employee employee) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        Transaction transaction = session.beginTransaction();

        session.persist(employee);

        transaction.commit();

        session.close();

        System.out.println("Employee Saved Successfully");
    }
    
    public Employee getEmployeeById(int empid) {
    	
    	Session session= HibernateUtil.getSessionFactory().openSession();
    	
    	Employee employee= session.get(Employee.class, empid);
    	
    	session.close();
    	
    	return employee;
    }
    
    public void updateEmployee(Employee employee) {
    	
    	Session session=HibernateUtil.getSessionFactory().openSession();
    	
    	Transaction transaction = session.beginTransaction();
    	
    	session.merge(employee);
    	
    	transaction.commit();
    	
    	session.close();
    	
    	System.out.println("Employee updated successfully!");
    }
    
    public void deleteEmployee(int empid) {
    	Session session=HibernateUtil.getSessionFactory().openSession();
    	
    	Transaction transaction= session.beginTransaction();
    	
    	Employee employee= session.get(Employee.class, empid);
    	
    	if(employee!=null) {
    		session.remove(employee);
    		transaction.commit();
    		System.out.println("Employee deleted succesfully!");
    	}
    	else {
    		System.out.println("Employee not found!");
    		transaction.rollback();
    	}
    }
    
    public void fetchEmployeeById(int empid) {
    	Session session=HibernateUtil.getSessionFactory().openSession();
    	
    	Transaction transaction=session.beginTransaction();
    	
    	Employee employee=session.get(Employee.class, empid);
    	
    	if(employee!=null) {
    		System.out.println("Employee details");
    		System.out.println(employee);
    	}
    	else {
    		System.out.println("No employees found!");
    	}
    }
    
    public List<Employee> fetchAllEmployees() {
    	Session session=HibernateUtil.getSessionFactory().openSession();
    	Transaction transaction=session.beginTransaction();
    	
    	Query <Employee> query=session.createQuery("FROM Employee", Employee.class); 
    	
    	List<Employee> employees=query.getResultList();
    	
    	session.close();
    	
    	return employees;
        }
}