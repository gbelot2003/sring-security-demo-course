package com.gbelot.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	@GetMapping("/")
	public String showHome()
	{
		return "home";
	}
	
	@GetMapping("/leaders")
	public String showLeaders()
	{
		return "managers/leader";
	}
	
	
	@GetMapping("/systems")
	public String showAdmins()
	{
		return "admins/leader";
	}
}
