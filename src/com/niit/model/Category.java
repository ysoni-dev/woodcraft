package com.niit.model;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.osgi.service.component.annotations.Component;


@Entity
@Component
@Table(name="CATEGORY")
public class Category {

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int catId;
		
		@OneToMany(mappedBy="category", fetch=FetchType.EAGER, cascade= CascadeType.REMOVE)
	      Set<Product>product;
		

	@Column(unique=true)

	
	public String catName;
	public String catDesc;
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}
	
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public String getCatDesc() {
		return catDesc;
	}
	public void setCatDesc(String catDesc) {
		this.catDesc = catDesc;
	}
	
	
	
	
	
	
	
}
