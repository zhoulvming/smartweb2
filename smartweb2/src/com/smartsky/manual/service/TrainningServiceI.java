package com.smartsky.manual.service;

import java.util.List;

import com.smartsky.manual.model.TrainningDoc;
import com.smartsky.manual.model.TrainningFolder;
import com.smartsky.manual.model.json.TrainningTreeData;

public interface TrainningServiceI {
	
	/**
	 * 获取文档树结构数据：<br>
	 * pid为null时，取出顶层文件夹和文件<br>
	 * pid有值时，取出父节点是pid的第一层文件夹和文件
	 * 
	 * @param pid : 节点ID
	 * @return 返回符合jstree格式的数据
	 */
	List<TrainningTreeData> getDocTree(String pid);
	
	/**
	 * 保存文件夹数据
	 * @return
	 */
	TrainningFolder saveFolder(int flg, String id, String pid, String fldName);

}