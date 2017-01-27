/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.pollub;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author linuxlite
 */
public class Customers {
    private static Session getSession() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session session = sf.openSession();
        return session;
    }
 
    public static List<Customer> getCustomers() {
        Session session = getSession();
        List<Customer> customers = (List<Customer>)session.createQuery("from Customer").list();
        session.close();
        return customers;
    }
    
    public static Customer getCustomer(int id) {
        Session session = getSession();
        Customer customer = (Customer)session.get(Customer.class, id);
        return customer;
    }
    
    public static void insertCustomer(Customer c) {
        Session session = getSession();
        session.beginTransaction();
        session.save(c);
        session.getTransaction().commit();
        session.close();
    }
}
