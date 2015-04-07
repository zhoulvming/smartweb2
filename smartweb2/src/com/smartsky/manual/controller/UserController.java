package com.smartsky.manual.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.smartsky.manual.model.User;
import com.smartsky.manual.service.UserServiceI;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
	
	/**
	 * UserService注入
	 * @Autowired
	 */
	private UserServiceI userService;
	public UserServiceI getUserService() {
		return userService;
	}
	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	/**
	 * 用户一览URL
	 * @return
	 */
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list( HttpServletRequest req) {
		return "user/list";
	}
	
	/**
	 * 用户新增URL
	 * @return
	 */
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model, HttpServletRequest req) {
		return "user/edit";
	}
	
	/**
	 * 用户编辑页面URL
	 * @return
	 */
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable String id, HttpServletRequest req) {
		User u = userService.getUserById(Integer.parseInt(id));
		req.setAttribute("user", u);
		return "user/edit";
	}
	
	/**
	 * 用户一览列表ajax获取入口
	 * @param req
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/users", method=RequestMethod.GET, params="json")
	public void getUsers(HttpServletRequest req, HttpServletResponse response) throws IOException {
		List<User> l = userService.getAll();
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(JSON.toJSONStringWithDateFormat(l, "yyyy-MM-dd HH:mm:ss"));
	}
	
	/**
	 * 用户保存
	 * @return
	 */
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public void save(HttpServletRequest req, HttpServletResponse response, Model model) throws IOException {
		
		try {
		
		
			//request值获取
			String userid = req.getParameter("id");
			String name = req.getParameter("name");
			String nickname = req.getParameter("nickname");
			
			
			System.out.println(userid);
			
			int result = 0;
			User u = new User();
			if (userid == "") {
				//新增
				u.setName(name);
				u.setNickname(nickname);
				result = userService.insertSelective(u);
			} else {
				u = userService.getUserById(Integer.valueOf(userid));
				u.setNickname(nickname);
				result = userService.updateByPrimaryKeySelective(u);
			}
			
			if (result > 0) {
				model.addAttribute("status", 0);
				model.addAttribute("user", u);
			}
	      
		
		} catch(Exception ex) {
			model.addAttribute("status", 999);
			model.addAttribute("errmsg", ex.getMessage());
		}
		
		PrintWriter out = response.getWriter();
		out.print(JSON.toJSONString(model));
	}
	
	

}