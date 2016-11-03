package com.eco.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eco.Service.registerserviceimpl;
import com.eco.model.register;

@Controller
public class RegisterController {

	@Autowired
	registerserviceimpl newuser;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView log()
	{
		return new ModelAndView("register", "registerform", new register());
	}
	

	@RequestMapping(value = "/registeruser",method=RequestMethod.POST)
	public ModelAndView adduser(@ModelAttribute("registerform") register user, ModelMap model)
	{

		
		newuser.adduser(user);
		model.addAttribute("successmg", "Registered Succesfully");
				return  new ModelAndView("register");
		
	}
}	
	
	
