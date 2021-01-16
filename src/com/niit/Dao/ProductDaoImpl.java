package com.niit.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.util.hibernateUtil;

public class ProductDaoImpl implements ProductDao{

	@Override
	public boolean addProduct(Product product) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		session.save(product);
		session.flush();
		tt.commit();
		return true;
	}

	@Override
	public List<Product> getAllproduct() {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query qq = session.createQuery("from Product");
		List<Product> productList = (List<Product>)qq.list();
		session.flush();
		tt.commit();
		return productList;
		
	}

	@Override
	public boolean deleteProduct(int productid) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		session.delete(getProductByID(productid));
		session.flush();
		tt.commit();
		session.close();
		return true;
	}

	@Override
	public Product getProductByID(int id) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Product pp = (Product) session.get(Product.class, id);
		session.flush();
		tt.commit();
		session.close();
		return pp;
		
	}

	@Override
	public boolean UpdateProduct(Product pp) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		session.update(pp);
		session.flush();
		tt.commit();
		
		
		return true;
	}

	@Override
	public List<Product> getproductbycategory (int category) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query qq = session.createQuery("from Product where catId =" +category);
		List<Product> productList = (List<Product>)qq.list();
		session.flush();
		tt.commit();
		return productList;
	}

}
