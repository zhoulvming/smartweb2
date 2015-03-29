package com.smartsky.service;

import java.util.List;


import com.smartsky.model.User;

public interface UserServiceI {

	public User getUserById(Integer id);
	
	public List<User> getAll();
	
	public int insertSelective(User record);
	
	public int updateByPrimaryKeySelective(User record);
	
}
