package com.smartsky.manual.dao;

import java.util.List;

import com.smartsky.manual.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> getAll();
    
    User selectByUsername(String name);
    
}