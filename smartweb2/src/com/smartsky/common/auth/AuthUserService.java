package com.smartsky.common.auth;

import java.util.List;


public interface AuthUserService {
	public List<AuthUserInfoVo> listAll(AuthUserInfoVo user);
	
	public int insert(AuthUserInfoVo user);
}
