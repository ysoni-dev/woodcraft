package com.niit.Dao;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface ProductDao {

	boolean addProduct(Product product);
//	boolean updateProduct(Product product);
boolean deleteProduct(int productid);

public boolean UpdateProduct(Product pp); 
public List <Product> getproductbycategory (int category);
public List <Product> getAllproduct();
public Product getProductByID (int id);	
}
