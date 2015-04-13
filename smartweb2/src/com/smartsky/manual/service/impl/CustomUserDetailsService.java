package com.smartsky.manual.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.smartsky.common.CommonLogger;
import com.smartsky.manual.dao.UserMapper;
import com.smartsky.manual.model.User;
import com.smartsky.manual.model.Role;

@Service("customUserDetailsService")
public class CustomUserDetailsService extends CommonLogger implements UserDetailsService {  
  
	@Autowired
	private UserMapper userMapper;
  
    public UserDetails loadUserByUsername(String username)  
            throws UsernameNotFoundException, DataAccessException {  
  
        UserDetails user = null;  
  
        try {  
  
            // 搜索数据库以匹配用户登录名.
        	User dbUser = userMapper.selectByUsername(username);
  
            // Populate the Spring User object with details from the dbUser  
            // Here we just pass the username, password, and access level  
            // getAuthorities() will translate the access level to the correct  
            // role type  
            user = new org.springframework.security.core.userdetails.User(
            		dbUser.getName(), dbUser.getPassword().toLowerCase(), true, true, true, true,
                    getAuthorities(dbUser));  
  
        } catch (Exception e) {  
            log.error("Error in retrieving user");  
            throw new UsernameNotFoundException("Error in retrieving user");  
        }  
  
        return user;  
    }  
  
    /** 
     * 获得访问角色权限 
     *  
     * @param access 
     * @return 
     */  
    public Collection<GrantedAuthority> getAuthorities(User dbUser) {  
  
        List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
  
        // 所有的用户默认拥有ROLE_USER权限  
        log.debug("Grant ROLE_USER to this user");  
        authList.add(new GrantedAuthorityImpl("ROLE_USER"));
        
        if (dbUser.getName().equals("admin")) {
        	authList.add(new GrantedAuthorityImpl("ROLE_ADMIN"));
        }
        
//        for(Role role : dbUser.getRoles()) {
//        	authList.add(new GrantedAuthorityImpl(role.getText()));
//        }
  
        return authList;  
    }  
} 
