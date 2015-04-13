package com.smartsky.common.auth;

import org.springframework.security.core.userdetails.UserDetails;

public class AuthUserDetailService {
	/**
	 * 这里传过来用户名，需要在此作验证，并返回实现了UserDetails接口的用户VO
	 */
	public UserDetails loadUserByUsername(String username){
	    AuthUserInfoVo user = new AuthUserInfoVo();
	    System.out.println(user);
	    user.setUsername(username);
	    user.setPassword("admin");
	    return user;
	}
}
