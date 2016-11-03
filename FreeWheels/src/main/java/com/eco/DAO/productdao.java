package com.eco.DAO;

import java.util.List;

import com.eco.model.Product;


public interface productdao {



public 	List<Product> getAllProducts();
   public Product addprod(Product newprod);
   public Product getprodbyid(int id);
   List<Product> getProductByCategory(String category);
   public void updateprod(Product prod);
   public void deleteprod(int id);
}


