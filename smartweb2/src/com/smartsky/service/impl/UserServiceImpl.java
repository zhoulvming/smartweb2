package com.smartsky.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartsky.dao.UserMapper;
import com.smartsky.model.User;
import com.smartsky.service.UserServiceI;

@Service("userService")
public class UserServiceImpl implements UserServiceI {
	
	private UserMapper userMapper;
	
	public UserMapper getUserMapper() {
		return userMapper;
	}

	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}



	@Override
	public User getUserById(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<User> getAll() {
		return userMapper.getAll();
	}
	
	public int insertSelective(User record) {
		return userMapper.insertSelective(record);
	}
	
	public int updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record);
	}

}
