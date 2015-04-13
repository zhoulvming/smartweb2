package com.smartsky.manual.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.smartsky.common.CommonLogger;
import com.smartsky.common.SessionHelper;
import com.smartsky.manual.model.User;

@Controller
@RequestMapping("/auth")
public class LoginoutController extends CommonLogger {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String login( HttpServletRequest req) {
		return "auth/login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView signin(@ModelAttribute("user")User user, String validcode, HttpSession session) throws Exception {
		if (isValid(user)) {
			session.setAttribute(SessionHelper.UserHandler, user);
			log.info("登录成功");
			return new ModelAndView("home");
		} else {
			log.info("登录失败");
			return new ModelAndView("auth/login");
		}
		
//		ModelAndView mav = new ModelAndView("home");
//		session.setAttribute(SessionHelper.UserHandler, user);
//		mav.addObject("opmsg", "登录成功!");
//		log.info("登录成功!");
//		return mav;
	}
	
	 /** 
     * 指定无访问额权限页面 
     *  
     * @return 
     */  
    @RequestMapping(value = "/denied", method = RequestMethod.GET)  
    public String getDeniedPage() {  
        return "error/403";  
    }
	
	private boolean isValid(User user) {
		// TODO: 需要添加验证代码（即用户名和密码的验证）
		return true;
	}
}
