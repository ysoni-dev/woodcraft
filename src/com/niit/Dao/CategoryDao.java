package com.niit.Dao;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.CustomerDetails;

public interface CategoryDao {

	 boolean addCategory(Category category);
	 //get
	 public List<Category> getAllCategory();
	 
	// del 
	 public boolean  deleteAllCategory(int categoryid);
	
//	public List<Category> getCategoryByname(String name);
	public Category getCategoryByID (int id);	
	
	
	
	
	// update
	public boolean UpdateCategory(Category cc); 
	public Category getCategoryById(int dataid);
}
