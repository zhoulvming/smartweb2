package com.smartsky.manual.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smartsky.common.exception.BusinessException;

@Controller
public class BaseController {
	
	public BaseController() {
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String control( HttpServletRequest req) {
		return "index";
	}
	
	/**
	 * fordreams
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home( HttpServletRequest req) {
		return "home";
	}

	

}