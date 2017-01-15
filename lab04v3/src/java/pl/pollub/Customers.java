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
    public static List<Customer> getCustomers() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session session = sf.openSession();
        List<Customer> customers = (List<Customer>)session.createQuery("from Customer").list();
        session.close();
        return customers;
    }
    
}
