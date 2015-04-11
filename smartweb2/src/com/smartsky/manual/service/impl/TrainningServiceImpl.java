package com.smartsky.manual.service.impl;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartsky.manual.dao.TrainningDocMapper;
import com.smartsky.manual.dao.TrainningFolderMapper;
import com.smartsky.manual.model.TrainningDoc;
import com.smartsky.manual.model.TrainningFolder;
import com.smartsky.manual.model.json.TrainningTreeData;
import com.smartsky.manual.service.TrainningServiceI;
import com.smartsky.common.Constant;
import com.smartsky.common.Messages;
import com.smartsky.common.exception.BusinessException;

@Service("trainningService")
public class TrainningServiceImpl implements TrainningServiceI {

	@Autowired
	public TrainningDocMapper trainningDocMapper;
	
	@Autowired
	public TrainningFolderMapper trainningFoldMapper;

	
	@Override
	public List<TrainningTreeData> getDocTree(String pid) {
		
		List<TrainningTreeData> lstResult = new ArrayList<TrainningTreeData>();
		List<TrainningFolder> lstFolder = new ArrayList<TrainningFolder>();
		List<TrainningDoc> lstDoc = new ArrayList<TrainningDoc>();
		
		if (pid == null) {
			//首次初始化培训教材树，取出顶层文件夹和文件（parentid＝null）
			lstFolder = trainningFoldMapper.getLevelOneFolders();
			lstDoc = trainningDocMapper.selectDocByNullParent();
		} else {
			//点击节点时, 取出以该节点为父亲的所有第一层文件夹和文件
			lstFolder = trainningFoldMapper.selectFolderByParent(Long.parseLong(pid));
			lstDoc = trainningDocMapper.selectDocByParent(Long.parseLong(pid));
		}
		
		//数据转化成TrainningTreeData格式后拼接返回
		for (TrainningFolder folder : lstFolder){
			TrainningTreeData item = new TrainningTreeData();
			item.setId(Constant.FOLDER_NODE_PREFIX + String.valueOf(folder.getStandardFolderId()));
			item.setText(folder.getFolderName());
			item.setParentId(folder.getParentId() == null ? "" : Constant.FOLDER_NODE_PREFIX + folder.getParentId());
			//判断是否有子节点来设置child属性
			int child_cnts = trainningFoldMapper.hasChild(folder.getStandardFolderId());
			item.setChildren(child_cnts > 0 ? true : false);
			//判断是否有父亲来设置type属性
			item.setType(folder.getParentId() == null ? "root" : "default");
			lstResult.add(item);
		}
		for (TrainningDoc doc : lstDoc){
			TrainningTreeData item = new TrainningTreeData();
			item.setId(Constant.FILE_NODE_PREFIX + String.valueOf(doc.getStandardId()));
			item.setParentId(doc.getStandardFolder() == null ? "" : Constant.FOLDER_NODE_PREFIX + doc.getStandardFolder());
			item.setText(doc.getStandardName());
			item.setChildren(false);
			item.setType("file");
			lstResult.add(item);
		}
		
		return lstResult;
	}


	@Override
	public TrainningFolder saveFolder(int flg, String id, String pid, String fldName) {
			
		TrainningFolder folder = null;
		
		int result = 0;
		if (flg == 0) {
			
			// 检查名称是否已经存在
			if (trainningFoldMapper.checkNameExisted(fldName) > 0) {
				throw new BusinessException(Constant.ERROR_CODE_BUSINESS, Messages.TRAINNING_MSG001); 
			}
			
			//新增
			folder = new TrainningFolder();
			folder.setFolderName(fldName);
			
			//TODO:以登陆用户ID代替
			folder.setCreatedBy(2);
			folder.setUpdatedBy(2);
			
			folder.setCreateTime(new Date());
			if (pid != null && !pid.equals("")){
				folder.setParentId(Integer.parseInt(pid.substring(1)));
			}
			folder.setUpdateTime(new Date());
			result = trainningFoldMapper.insertSelective(folder);
			
		}else {
			folder = trainningFoldMapper.selectByPrimaryKey(Long.parseLong(id.substring(1)));
			folder.setFolderName(fldName);
			
			//TODO:以登陆用户ID代替
			folder.setUpdatedBy(2);
			
			folder.setUpdateTime(new Date());
			result = trainningFoldMapper.updateByPrimaryKeySelective(folder);
		}
		
		if (result > 0) {
			return folder;
		} else {
			return null;
		}
	}
	

}
