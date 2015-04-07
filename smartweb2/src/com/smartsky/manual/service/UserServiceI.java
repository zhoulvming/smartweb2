package com.smartsky.manual.service;

import java.util.List;

import com.smartsky.manual.model.User;

public interface UserServiceI {

	public User getUserById(Integer id);
	
	public List<User> getAll();
	
	public int insertSelective(User record);
	
	public int updateByPrimaryKeySelective(User record);
	
}
