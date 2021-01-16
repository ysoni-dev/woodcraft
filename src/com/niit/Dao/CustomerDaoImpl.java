package com.niit.Dao;

import java.sql.Connection;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.niit.model.CustomerDetails;
import com.niit.util.hibernateUtil;

public  class CustomerDaoImpl implements CustomerDao {

	public boolean addcustomerDetails(CustomerDetails cd) {
		
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
				
				Session session =  sessionFactory.openSession();
				Transaction tt = session.beginTransaction();
				session.save(cd);
				session.flush();
				tt.commit();
		
		return true;
	}
	
		public List<CustomerDetails> getAllUser(){
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query  query =session.createQuery("from CustomerDetails");
		List<CustomerDetails> cdList = (List<CustomerDetails>)query.list();
		session.flush();
		tt.commit();
		return cdList;
		
	}
		@Override
		public List<CustomerDetails> getUsersByEmail(String Email){
			SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tt = session.beginTransaction();
			Query  query =session.createQuery("from CustomerDetails where email ='"+Email+"'");
			List<CustomerDetails> cdList = (List<CustomerDetails>)query.list();
			session.flush();
			tt.commit();
			return cdList;
		}
	
	
		@Override
		public CustomerDetails getcustomerByEmail(String customerEmail) {
			SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tt = session.beginTransaction();
			CustomerDetails cd = (CustomerDetails)session.get(CustomerDetails.class,customerEmail);
			tt.commit();
			return cd;
		
		}

//execute

	@Override
	public boolean deletecustomerDetails(CustomerDetails customerEmail) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		session.delete(customerEmail);
		tt.commit();
		session.flush();
		return true;
	}

	@Override
	public boolean validate(String e, String p) {
		try {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query query = session.createQuery("from CustomerDetails where " + "email=:email and password=:password");
		query.setParameter("email", e);
		query.setParameter("password", p);
		CustomerDetails cd = (CustomerDetails)query.uniqueResult();
		tt.commit();
		session.flush();
		if(cd!=null) {
			System.out.println(true);
			return true;
		}
		else 
		{
			System.out.println(e+"-" + p);
			return false;
		}
	}
		
		catch(HibernateException e1) {
			
			System.out.println(e1);
			return false;	
		}
		
	}

	@Override
	public boolean updatecustomer(CustomerDetails c) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		session.update(c);
		tt.commit();
		session.flush();
		return true;
		
	}

	@Override
	public CustomerDetails getCustomerById(int dataid) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		CustomerDetails cd = (CustomerDetails)session.get(CustomerDetails.class,dataid);
		tt.commit();
		session.flush();
		return cd;
		
	}


}

