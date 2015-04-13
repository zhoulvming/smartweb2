package com.smartsky.manual.dao;

import com.smartsky.common.auth.AuthUserInfoVo;

public interface AuthUserDao {
	public int countAll(AuthUserInfoVo user);
	
	public int insert(AuthUserInfoVo user);
}
