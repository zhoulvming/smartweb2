package com.smartsky.common;

/**
 * 常量设置
 * @author 
 *
 */
public interface Constant {
	String DATA_SUCCESS = "data_success";
	String DATA_FAIL = "data_fail";
	String DATA_EMPTY = "data_empty";
	
	String FAIL = "fail";
	String SUCCESS = "success";
	String ERROR = "error";
	String EXCEPTION = "exception";
	String EXISTS = "exists";
	
	String NOT_DATA = "not_data";
	String USERROOT = "root";
	String WEBROOT = "";
	String UPLOADFILEROOT = "";

	String DATE_SEC = "sec";
	String DATE_MIN = "min";
	String DATE_HOUR = "hour";
	String DATE_DAY = "day";
	String DATE_MOU = "mou"; // 按照每月30天算
	String DATE_YEAR = "year"; // 按照每年365天算

	String DB_EXISTS = "db_exists";//数据库存在
	String TB_EXISTS = "TB_exists";//表存在
	
	String FOLDER_NODE_PREFIX = "F";	//文档树中节点为文件夹的ID开头字符
	String FILE_NODE_PREFIX = "D";	//文档树中节点为文件的ID开头字符
	
	int ERROR_CODE_NONE = 0;
	int ERROR_CODE_SYSTEM = 10000;
	int ERROR_CODE_BUSINESS = 10001;
	
}