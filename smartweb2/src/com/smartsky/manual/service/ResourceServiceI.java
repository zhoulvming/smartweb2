package com.smartsky.manual.service;

import java.util.List;

import com.smartsky.manual.model.Resource;

public interface ResourceServiceI {

	public Resource getResourceById(Integer id);
	
	public List<Resource> getAll();
	
	public int insertSelective(Resource record);
	
	public int updateByPrimaryKeySelective(Resource record);
	
}
