package com.eco.Service;

import java.util.List;

import com.eco.model.Product;

public interface productservice {

public 	List<Product> getAllProducts();
   public Product addprod(Product newprod);
   public Product getprodbyid(int id);
   List<Product> getProductByCategory(String category);
   public void update(Product prod);
   public void delete(int id);

}

	
	
