package com.onealert.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onealert.bean.Testcase;
import com.onealert.dao.TestcaseDao;

/**
 * 列表页面初始化和查询控制
 */
@SuppressWarnings("serial")
public class ListTestCaseServlet extends HttpServlet {
	public List<Testcase> queryTestcaseList(String testcase_id){
		TestcaseDao testcaseDao = new TestcaseDao();
		
		return testcaseDao.queryTestcase(testcase_id);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("Already in the ListTestCaseServlet !");
		
		// 设置编码
		req.setCharacterEncoding("UTF-8");
		// 接受页面的值
		String command = req.getParameter("command");
		String description = req.getParameter("description");
		// 查询消息列表并传给页面
		req.setAttribute("testcaseList", queryTestcaseList("1"));
		// 向页面传值
		req.setAttribute("command", command);
		req.setAttribute("description", description);
		// 向页面跳转
		req.getRequestDispatcher("queryAllTestCase.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
}