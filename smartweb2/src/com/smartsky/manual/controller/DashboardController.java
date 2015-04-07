package com.smartsky.manual.controller;

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
import com.smartsky.manual.model.Resource;
import com.smartsky.manual.model.Role;
import com.smartsky.manual.model.TreeJsonData;
import com.smartsky.manual.service.ResourceServiceI;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	
	
	/**
	 * ResourceService注入
	 * @Autowired
	 */
	private ResourceServiceI resourceService;
	public ResourceServiceI getResourceService() {
		return resourceService;
	}
	@Autowired
	public void setResourceService(ResourceServiceI resourceService) {
		this.resourceService = resourceService;
	}	
	
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String list( HttpServletRequest req) {
		return "dashboard/index";
	}
	@RequestMapping(value="/start", method=RequestMethod.GET)
	public String layout( HttpServletRequest req) {
		return "dashboard/start";
	}
	
	/**
	 * 根据参数迁移到不同的帮助文档
	 * @param name
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/control/{name}", method=RequestMethod.GET)
	public String control( @PathVariable String name, HttpServletRequest req) {
		String target = "dashboard/control_general";
		if (name.equals("genernal")) {
			target = "dashboard/control_general";
		} else if (name.equals("tree")) {
			target = "dashboard/component_tree";
		} else if (name.equals("button")) {
			target = "dashboard/control_button";
		} else if (name.equals("font")) {
			target = "dashboard/control_font";
		}
		
		return target;
	}
	
	@RequestMapping(value="/component/{name}", method=RequestMethod.GET)
	public String component( @PathVariable String name, HttpServletRequest req) {
		String target = "";
		if (name.equals("tree")) {
			target = "dashboard/component_tree";
		} else if (name.equals("tree")) {
		} else if (name.equals("button")) {
		} else if (name.equals("font")) {
		}
		
		return target;
	}
		
	
	
	@RequestMapping(value="/jstree/ajax", method=RequestMethod.GET)
	public void getResources(HttpServletRequest req, HttpServletResponse response) throws IOException {
		
		List<TreeJsonData> l = new ArrayList<TreeJsonData>();
		TreeJsonData item;
		
		String parent = req.getParameter("parent");
		if (parent != null && parent.length() > 1) {
			item = new TreeJsonData();
			item.setId(parent + "_child_11");
			item.setText("Node #11");
			item.setIcon("fa fa-file fa-large icon-state-default");
			item.setChildren(false);
			
			Map<String, Boolean> state = new HashMap<String, Boolean>();
			state.put("disabled", true);
			item.setState(state);
			l.add(item);			
		} else {
			item = new TreeJsonData();
			item.setId("node_1");
			item.setText("Node #1");
			item.setIcon("fa fa-folder icon-lg icon-state-info");
			item.setChildren(true);
			item.setType("root");
			l.add(item);
			
			item = new TreeJsonData();
			item.setId("node_2");
			item.setText("Node #2");
			item.setIcon("fa fa-folder icon-lg icon-state-info");
			item.setChildren(true);
			item.setType("root");
			l.add(item);
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(JSON.toJSONStringWithDateFormat(l, "yyyy-MM-dd HH:mm:ss"));
	}
}
