package com.smartsky.service;

import java.util.List;

import com.smartsky.model.Resource;

public interface ResourceServiceI {

	public Resource getResourceById(Integer id);
	
	public List<Resource> getAll();
	
	public int insertSelective(Resource record);
	
	public int updateByPrimaryKeySelective(Resource record);
	
}
