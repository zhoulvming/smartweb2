package com.smartsky.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.smartsky.model.Resource;
import com.smartsky.model.Role;
import com.smartsky.model.TreeJsonData;
import com.smartsky.service.ResourceServiceI;

@Controller
@RequestMapping("/manage")
public class ManageController {
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String list( HttpServletRequest req) {
		return "manage/index";
	}


	

		
	
	

}
