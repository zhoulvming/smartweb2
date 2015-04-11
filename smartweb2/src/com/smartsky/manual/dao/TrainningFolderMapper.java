package com.smartsky.manual.dao;

import java.util.List;

import com.smartsky.manual.model.TrainningFolder;

public interface TrainningFolderMapper {
    int deleteByPrimaryKey(Long standardFolderId);

    int insert(TrainningFolder record);

    int insertSelective(TrainningFolder record);

    TrainningFolder selectByPrimaryKey(Long standardFolderId);

    int updateByPrimaryKeySelective(TrainningFolder record);

    int updateByPrimaryKey(TrainningFolder record);
    
    List<TrainningFolder> getLevelOneFolders();
    
    List<TrainningFolder> selectFolderByParent(Long folderId);
    
    int hasChild(Integer id);
    
    int checkNameExisted(String name);
}