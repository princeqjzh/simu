package com.onealert.bean;

/**
 * 与测试用例表对应的实体类
 */
public class Testcase {

	private String testcase_id; //测试用例id
	private String testcase_name; //测试用例名称
	private String category; //测试用例分类
	private String point; //测试用例执行点数
	
	public String getTestcase_id() {
		return testcase_id;
	}
	public void setTestcase_id(String testcase_id) {
		this.testcase_id = testcase_id;
	}
	
	public String getTestcase_name() {
		return testcase_name;
	}
	public void setTestcase_name(String testcase_name) {
		this.testcase_name = testcase_name;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	
	
}
