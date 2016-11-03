package com.eco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FrontController {
	
	@RequestMapping("/")
	public ModelAndView header()
	{
		
		
		return new ModelAndView("index");
	}

	@RequestMapping("/index")
	public ModelAndView hme()
	{
		return new ModelAndView("index");
	}
	@RequestMapping("/login")
	public ModelAndView log()
	{
		return new ModelAndView("login");
	}
	@RequestMapping("/usererror")
	public ModelAndView err()
	{
		return new ModelAndView("usererror");
	}
	@RequestMapping("/about")
	public ModelAndView us()
	{
		return new ModelAndView("about");
	}
	
	@RequestMapping("/contact")
	public ModelAndView ctus()
	{
		return new ModelAndView("contact");
	}
	@RequestMapping("/logout")
	public ModelAndView lout()
	{
		return new ModelAndView("logout");
	}
	
}




