package com.eco.model;

import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7597863634638574333L;
	private List<CartItem> cartItems;
    private double grandTotal;
    private	int cartCount=0;
    
    
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public int getCartCount() {
		return cartCount;
	}
	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	} 

	public void calcGrandTotal()
	{
		double tot=0;
		
		for(int i=0;i<cartItems.size();i++)
		{
			tot+=cartItems.get(i).getTotalPrice();
		}
		this.grandTotal=tot;
		
	}

}




