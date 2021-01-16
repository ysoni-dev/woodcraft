package com.niit.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.niit.model.Category;
import com.niit.model.CustomerDetails;
import com.niit.util.hibernateUtil;

public  class CategoryDaoimpl implements CategoryDao {

	public boolean addCategory(Category category) {
		
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		
		session.save(category);
		session.flush();
		tt.commit();
		
		
		return true;
		
	}
	
	
	
	
		
		public List<Category> getAllCategory(){
			SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tt = session.beginTransaction();
			Query qq = session.createQuery("from Category");
			List<Category> categoryList = (List<Category>)qq.list();
			session.flush();
			tt.commit();
			return categoryList;
		}

	
//		@Override
//		public List<Category> getCategoryByname(String name) {
//			SessionFactory sf = hibernateUtil.getSessionFactory();
//			Session session = sf.openSession();
//			Transaction tt = session.beginTransaction();
//			Query qq = session.createQuery("from Category where catName= '"+name+"' ");
//			List<Category> CLIst =(List<Category>) qq.list();
//			session.flush();
//			tt.commit();
//			return CLIst;
//		}






		@Override
		public boolean deleteAllCategory(int categoryid) {
			SessionFactory sf = hibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tt = session.beginTransaction();
			session.delete(getCategoryByID(categoryid));
			session.flush();
			tt.commit();
			session.close();
			return true;
		}





		@Override
		public Category getCategoryByID(int id) {
			SessionFactory sf = hibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tt = session.beginTransaction();
			Category cat = (Category) session.get(Category.class, id);
			session.flush();
			tt.commit();
			session.close();
			return cat;
		
		}





		@Override
		public boolean UpdateCategory(Category cc) {
			SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tt = session.beginTransaction();
			session.update(cc);
			session.flush();
			tt.commit();
			
			
			return true;
		}





		@Override
		public Category getCategoryById(int dataid) {
			SessionFactory sf = hibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tt = session.beginTransaction();
			Category cat = (Category) session.get(Category.class, dataid);
			session.flush();
			tt.commit();
			session.close();
			return cat;
		}




	
	
	
	
}
