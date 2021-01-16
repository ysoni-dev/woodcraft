package com.niit.Dao;

import java.util.List;

import com.niit.model.CustomerDetails;

public interface CustomerDao {

	boolean addcustomerDetails(CustomerDetails cd);
	boolean deletecustomerDetails(CustomerDetails customerEmail);
	
	CustomerDetails getcustomerByEmail(String customerEmail);
	
	
	public boolean validate(String e , String p);
	
	public List<CustomerDetails>getAllUser();
	List<CustomerDetails> getUsersByEmail(String Email);
	
     public boolean updatecustomer(CustomerDetails c);
     
     public CustomerDetails getCustomerById(int dataid);
     
}
