package com.eco.controller;
import java.io.File;
import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eco.Service.productserviceimpl;
import com.eco.model.Product;


@Controller
public class ProductController {

	@Autowired
	productserviceimpl newprod;
	
	@RequestMapping(value="/Product", method=RequestMethod.GET)
	public ModelAndView pdt()
	{
		return new ModelAndView("Product", "productform", new Product());
	}
	
	@RequestMapping(value = "/productadd",method=RequestMethod.POST)
	public ModelAndView addprod(@ModelAttribute("productform") Product p, ModelMap model)
	{

		p.setImage(p.getPicture().getOriginalFilename());
		newprod.addprod(p);
		
		MultipartFile picture=p.getPicture();
		System.out.println(picture.getOriginalFilename());
		try {
picture.transferTo(new File("D://GitHub/eco/eco/src/main/webapp/Image/Img/"+picture.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		model.addAttribute("successmg", "Product added Succesfully");
				return  new ModelAndView("Product");
				
	}

	@RequestMapping(value="/pdcontrol", method=RequestMethod.GET)
	public ModelAndView adminScreen(Model model)
	{	ObjectMapper mapper = new ObjectMapper();
		List<Product> allproducts;
		
		allproducts=newprod.getAllProducts();
		try {
			String products=mapper.writeValueAsString(allproducts);
			System.out.println(products);
			model.addAttribute("products", products);
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
		return new ModelAndView("pdcontrol");
		
	}
	
	@RequestMapping(value="/dbproduct", method=RequestMethod.GET)
	public ModelAndView db(Model model)
	{	ObjectMapper mapper = new ObjectMapper();
		List<Product> allproducts;
		
		allproducts=newprod.getAllProducts();
		try {
			String products=mapper.writeValueAsString(allproducts);
			System.out.println(products);
			model.addAttribute("products", products);
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
		return new ModelAndView("dbproduct");
		
	}
	
	@RequestMapping("/mountainbike")  
    public ModelAndView mtbike(Model model) 
	{  
		ObjectMapper mapper=new ObjectMapper();
		
		List<Product> bike1=newprod.getProductByCategory("Mountain Bike");
		try {
			String productlist=mapper.writeValueAsString(bike1);
			model.addAttribute("products",productlist);
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
        return new ModelAndView("mountainbike");
	}
	@RequestMapping("/hybridbike")  
    public ModelAndView hybridbike(Model model) 
	{  
		ObjectMapper mapper=new ObjectMapper();
		
		List<Product> bike2=newprod.getProductByCategory("Hybrid Bike");
		try {
			String productlist=mapper.writeValueAsString(bike2);
			model.addAttribute("products",productlist);
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
        return new ModelAndView("hybridbike");
	}
	@RequestMapping("/halfbike")  
    public ModelAndView halfbike(Model model) 
	{  
		ObjectMapper mapper=new ObjectMapper();
		
		List<Product> bike3=newprod.getProductByCategory("Half Bike");
		try {
			String productlist=mapper.writeValueAsString(bike3);
			model.addAttribute("products",productlist);
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
        return new ModelAndView("halfbike");
	}
	
	@RequestMapping("/roadbike")  
    public ModelAndView roadbike(Model model) 
	{  
		ObjectMapper mapper=new ObjectMapper();
		
		List<Product> bike4=newprod.getProductByCategory("Road Bike");
		try {
			String productlist=mapper.writeValueAsString(bike4);
			model.addAttribute("products",productlist);
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
        return new ModelAndView("roadbike");
	}
}	

			
	
	
	
	
