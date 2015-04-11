package com.smartsky.manual.dao;

import java.util.List;

import com.smartsky.manual.model.TrainningDoc;

public interface TrainningDocMapper {
    int deleteByPrimaryKey(Long standardId);

    int insert(TrainningDoc record);

    int insertSelective(TrainningDoc record);

    TrainningDoc selectByPrimaryKey(Long standardId);

    int updateByPrimaryKeySelective(TrainningDoc record);

    int updateByPrimaryKey(TrainningDoc record);
    
    List<TrainningDoc> selectDocByParent(Long folderId);
    
    List<TrainningDoc> selectDocByNullParent();
}