package com.smartsky.manual.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/trainning")
public class TrainningController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index( HttpServletRequest req) {
		return "trainning/index";
	}

	
}
