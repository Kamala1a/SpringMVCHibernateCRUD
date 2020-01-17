package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.dao.ProductDAO;
import com.demo.entities.Product;

@Repository("productService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<Product> findAll() {
		return this.productDAO.findAll();
	}

	@Override
	public Product find(int id) {
		return this.productDAO.find(id);
	}

	@Override
	public void create(Product product) {
		this.productDAO.create(product);
	}

	@Override
	public void update(Product product) {
		this.productDAO.update(product);
	}

	@Override
	public void delete(int id) {
		this.productDAO.delete(id);
	}

}
