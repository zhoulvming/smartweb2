package com.smartsky.common.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartsky.manual.dao.AuthCommonDao;

@Service("authUserService")
public class AuthUserServiceImpl implements AuthUserService {
  
  @Autowired
  private AuthCommonDao dao;
  
  public List<AuthUserInfoVo> listAll(AuthUserInfoVo user) {
    List<AuthUserInfoVo> users = dao.selectList("user.mapper.selectAll", user);
    return users;
  }

  public int insert(AuthUserInfoVo user) {
    int i = dao.insert("user.mapper.insert", user);
    return i;
  }
}
