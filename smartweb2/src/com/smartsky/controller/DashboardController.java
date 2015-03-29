package com.smartsky.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String list( HttpServletRequest req) {
		return "dashboard/index";
	}
	@RequestMapping(value="/start", method=RequestMethod.GET)
	public String layout( HttpServletRequest req) {
		return "dashboard/start";
	}	
}
