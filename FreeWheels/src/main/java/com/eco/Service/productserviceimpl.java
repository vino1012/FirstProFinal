package com.eco.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eco.DAO.productdaoimpl;
import com.eco.model.Product;

@Service
public class productserviceimpl implements productservice{


	@Autowired
	productdaoimpl newprod;

	public List<Product> getAllProducts() {
	
		return newprod.getAllProducts();
	}

	public Product addprod(Product a) {
	newprod.addprod(a);
	return a;	
	}

	public Product getprodbyid(int id) {
		// TODO Auto-generated method stub
		return newprod.getprodbyid(id);
	}

	public List<Product>getProductByCategory(String category) 
	{
		
		return (newprod.getProductByCategory(category));
	}
	
	public void update(Product prod) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int id) {
		newprod.deleteprod(id);
		
	}
	

}
	
	
	