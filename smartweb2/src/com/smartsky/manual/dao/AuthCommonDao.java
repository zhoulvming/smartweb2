package com.smartsky.manual.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


public class AuthCommonDao {
	
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List selectList(String statement, Object parameter ){
		return sqlSession.selectList(statement, parameter);
	}
	
	public int insert(String statement, Object parameter){
		return sqlSession.insert(statement, parameter);
	}

}
