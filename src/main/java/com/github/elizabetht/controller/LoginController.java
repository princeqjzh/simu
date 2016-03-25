package com.github.elizabetht.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.github.elizabetht.model.User;
import com.github.elizabetht.service.UserService;
import com.onealert.common.MyProp;
import com.onealert.common.UtilCrytology;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullParamException;
import com.onealert.exception.NullRecordExitsException;

@Controller
@SessionAttributes("login")
@RequestMapping("/login")
public class LoginController extends CommonController {
	@Autowired
	private UserService userService;

	/**
	 * 登陆
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(params = "method=login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response) {
		String userOperation = MyProp.getVariable("user.operation", "ucmp");
		User user = null;
		String loginSuccessful = "index";
		String login = "login";
		
		if (request.getSession().getAttribute("user") != null) {
			HttpSession session = request.getSession();
			user = (User) session.getAttribute("user");
			return loginSuccessful;
		} else {
			Map<String,String> paramMap= new HashMap<>();

			Map<String,String[]> paramMap2 = request.getParameterMap();
			for (String key : paramMap2.keySet()) {  
	            String[] values = paramMap2.get(key);  
	            System.out.println(key+"---login---"+values[0]);
	            paramMap.put(key, values[0]);
	        }  
			String userName = paramMap.get("username");
			String userpass = paramMap.get("userpass");
			
			String email = userName;
			try {
				user = userService.getOwnerOne(email);
				
				if (user.getEmail().equals(userOperation) && UtilCrytology.decrypt(user.getPassword()).equals(userpass)){ 
					request.getSession().setAttribute("user", user);
//					HttpSession session = request.getSession();
					return loginSuccessful;
				}
			} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
				System.out.println("login failed:" + e.getMessage());
				return login;
			}
		}
		return login;
	}




	/**
	 * 验证用户名
	 * 
	 * @param request
	 * @param response
	 * @return String
	 * @throws IOException
	 */
	@RequestMapping(params = "method=checkUsername")
	public String checkUsername(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String returnStr = "";
		String username = request.getParameter("username");
		// 验证用户名
		boolean isSuccess = false;
		//userService.checkUserName(username);
		if (isSuccess) {
			returnStr = "用户可用~~";
		} else {
			returnStr = "用户名不存在~~";
		}
		out.print(returnStr);
		return null;
	}

	@RequestMapping(params = "method=logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("user");
		request.getSession().removeAttribute("menu");
		return new ModelAndView("login");
	}

	/**
	 * 修改密码
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(params = "method=editpass")
	public void editpass(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String modifyMessage = "";
		User user = (User) request.getSession().getAttribute("user");
		String userid = user.getId();
		String oldPassword = user.getPassword();
		String oldPasswordUser = request.getParameter("oldpassword").trim();
		String newPassword = request.getParameter("newpassword").trim();
		String confPassword = request.getParameter("confpassword").trim();
		if (!oldPassword.equals(oldPasswordUser)) {
			modifyMessage = "填写的原密码不对！";
			return;
		} else if (!newPassword.equals(confPassword)) {
			modifyMessage = "新密码与确认密码不一致！<BR>请重新填写！";
			return;
		} else {
			//userService.updateUserPass(userid, newPassword);
			modifyMessage = "修改密码成功！<BR>下次登录请使用新密码~";
		}
		out.print(modifyMessage);
	}
}
