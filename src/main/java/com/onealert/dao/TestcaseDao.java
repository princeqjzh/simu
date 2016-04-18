package com.onealert.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onealert.bean.Testcase;
import com.onealert.db.DBAccess;

public class TestcaseDao {
	public List<Testcase> queryTestcase(String testcase_id){
		DBAccess dbAccess = new DBAccess();
		List<Testcase> testcaseList = new ArrayList<Testcase>();
		SqlSession sqlSession = null;
		try {
			sqlSession = dbAccess.getSqlSession();
			Testcase tc = new Testcase();
			tc.setTestcase_id(testcase_id);
			
			// 通过sqlSession执行SQL语句
			testcaseList = sqlSession.selectList("Testcase.queryTestcaseList",tc);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}		
		return testcaseList;
	}
}
