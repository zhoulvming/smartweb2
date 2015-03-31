package com.smartsky.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartsky.dao.ResourceMapper;
import com.smartsky.model.Resource;
import com.smartsky.service.ResourceServiceI;

@Service("ResourceService")
public class ResourceServiceImpl implements ResourceServiceI {
	
	private ResourceMapper resourceMapper;
	
	public ResourceMapper getResourceMapper() {
		return resourceMapper;
	}

	@Autowired
	public void setResourceMapper(ResourceMapper resourceMapper) {
		this.resourceMapper = resourceMapper;
	}




	@Override
	public List<Resource> getAll() {
		return resourceMapper.getAll();
	}

	@Override
	public Resource getResourceById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertSelective(Resource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(Resource record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
