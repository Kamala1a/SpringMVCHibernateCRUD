package com.demo.dao;

import java.util.List;

import com.demo.entities.Product;

public interface ProductDAO {

	public List<Product> findAll();
	
	public Product find(int id);
	
	public void create(Product product);
	
	public void update(Product product);
	
	public void delete(int id);
	
}
