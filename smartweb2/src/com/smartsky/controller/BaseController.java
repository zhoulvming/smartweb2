package com.smartsky.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	
	public BaseController() {
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String control( HttpServletRequest req) {
		return "index";
	}	
}