package com.demo.service;

import java.util.List;

import com.demo.entities.Product;

public interface ProductService {

	public List<Product> findAll();
	
	public Product find(int id);
	
	public void create(Product product);
	
	public void update(Product product);
	
	public void delete(int id);
	
}
