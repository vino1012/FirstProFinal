package com.eco.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.eco.Service.productserviceimpl;
import com.eco.model.Cart;
import com.eco.model.CartItem;
import com.eco.model.Product;

@Controller
@SessionAttributes({"personObj","cartObj"})
public class CartController {

	@Autowired
	productserviceimpl newprod;
	
	@Autowired
	
HttpSession session;
	
	@RequestMapping(value="/addtocart", method=RequestMethod.GET)
	public String addtoCart(@RequestParam("productid") String idParam1,Model model)
	{
		System.out.println("Reached");
		Cart cart=(Cart)session.getAttribute("cartObj");
		if(cart==null)
		{
			cart=new Cart();
		}
		Integer id=Integer.valueOf(idParam1);
		int qty=1;
		Product p=newprod.getprodbyid(id);
		System.out.println(p.getProductName());
		
		CartItem item= new CartItem();
		item.setProduct(p);
		item.setQuantity(qty);
		
		System.out.println(Double.parseDouble(p.getPrice()));
		double totalPrice=Double.parseDouble(p.getPrice())*qty;
		item.setTotalPrice(totalPrice);		
	
		List<CartItem> cartList = new ArrayList<CartItem>();
		if(cart.getCartItems()==null)
		{
			cartList.add(item);
			cart.setCartItems(cartList);
		}
		else
		{
			cartList = cart.getCartItems();
			int flag=0;
			
			for(int i=0;i<cartList.size();i++)
			{
				if(cartList.get(i).getProduct().getId()==p.getId())
				{
					cartList.get(i).setQuantity(cartList.get(i).getQuantity()+1);
	cartList.get(i).setTotalPrice(cartList.get(i).getTotalPrice()+Double.parseDouble(p.getPrice()));
					flag=1;
					break;
				}
			
			}
			if(flag==0)
				{
				cartList.add(item);
				cart.setCartItems(cartList);
				}
				
		}
		cart.calcGrandTotal();
		cart.setCartCount(cart.getCartCount()+1);
		model.addAttribute("cartObj",cart);
	
		return "redirect:" + "viewcart?productid="+idParam1;
	}			
	
	@RequestMapping("/viewcart")
	public ModelAndView viewCart(Model model)
	{
		Cart cart=(Cart) session.getAttribute("cartObj");
		
		if(cart==null|| cart.getCartCount()==0)
		{
			model.addAttribute("emptycart","emptycart");
		}
		else
		{
			model.addAttribute("emptycart", "notempty");
			model.addAttribute("grandtotal", cart.getGrandTotal());
			System.out.println(cart.getGrandTotal());
			ObjectMapper mapper = new ObjectMapper();
			List<CartItem> cartitems= cart.getCartItems();
			
			try {
				String cartitemlist=mapper.writeValueAsString(cartitems);
				System.out.println(cartitemlist);
				model.addAttribute("cartitems", cartitemlist);
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		return new ModelAndView("viewcart");
	}
}





