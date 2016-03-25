package com.github.elizabetht.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.elizabetht.model.License;
import com.github.elizabetht.model.User;
import com.github.elizabetht.service.LicenseService;
import com.github.elizabetht.service.UserService;
import com.onealert.common.Dict;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullParamException;
import com.onealert.exception.NullRecordExitsException;

@Controller
@SessionAttributes("user")
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	/**
	 * 查询单个用户
	 * http://localhost:8080/alertoperation/license/query?owner=100100
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public @ResponseBody DataResponse queryUserByEmail(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();
		String email = req.getParameter("email");
		if (email == null || email.equals("")) {
			result.setResult(result.R_FAILED);
			result.setCode("400");
			result.setMessage("email can not be null,param:email");
			return result;
		}
		List<User> users = userService.getUserByEmail(email);
		
		if (users != null && users.size()>0) {
			if (users.size()>1) {
				result.setResult(result.R_FAILED);
				result.setCode("404");
				result.setData(users);
				result.setTotalCount(users.size());
				result.setMessage(String.format("email %s are more than one at DB, it have %s", email,users.size()));
				return result;
			}else{
			User user = users.get(0);
			result.setResult(result.R_SUCESS);
			result.setCode("200");
			result.setData(users);
			result.setTotalCount(users.size());
			result.setMessage(String.format("email %s is %s, owner id is:%s", email,user.getRole(),user.getOwner()));
			return result;
			}
		}else {
			result.setResult(result.R_FAILED);
			result.setCode("404");
			result.setData(users);
			result.setMessage(String.format("email %s is not a user at DB", email));
			return result;
		}
		
	}
	/**
	 * 查询租户下用户
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/queryUsers", method = RequestMethod.GET)
	public @ResponseBody DataResponse query(HttpServletRequest req, HttpServletResponse resp) {
		String email = req.getParameter("email");
		DataResponse result = new DataResponse();
		User user = null;
		try {
			user = userService.getOwnerOne(email);
		} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
			result.setResult(result.R_FAILED);
			result.setCode(e.getRetCd());
			result.setMessage(e.getMessage());
			return result;	
		}
		
		List<User> users = userService.getUserByOwner(user.getOwner());
		result.setResult(result.R_SUCESS);
		result.setCode("200");
		result.setData(users);
		result.setTotalCount(users.size());
		result.setMessage(String.format("owner is:%s, email is %s",user.getOwner(), user.getEmail()));
		return result;
	}
	/**
	 * 查询租户
	 * @param req
	 * @param resp
	 * @param emailParam
	 * @return
	 */
	@RequestMapping(value = "/queryOwner", method = RequestMethod.GET)
	public @ResponseBody DataResponse queryOwnerByEmail(HttpServletRequest req, HttpServletResponse resp,String emailParam ) {
		DataResponse result = new DataResponse();
		String email = req.getParameter("email");
		if (email == null || email.equals("")) {
			email = emailParam;
			if (email == null ||email.equals("")) {
			result.setResult(result.R_FAILED);
			result.setCode("400");
			result.setMessage("email can not be null,param:email");
			return result;
			}
		}
		List<User> users = new ArrayList<User>();
		users = userService.getOwnerByEmail(email);
		if (users != null && users.size()>0) {
			if (users.size() > 1) {
				result.setResult(result.R_FAILED);
				result.setCode("404");
				result.setData(users);
				result.setTotalCount(users.size());
				result.setMessage(String.format("email %s is more than one", email));
				return result;
			}
			User user = users.get(0);
			result.setResult(result.R_SUCESS);
			result.setCode("200");
			result.setData(users);
			result.setTotalCount(1);
			result.setMessage(String.format("email %s is owner, owner id is:%s", email,user.getOwner()));
			return result;
		}else {
			result.setResult(result.R_FAILED);
			result.setCode("404");
			result.setData(users);
			result.setMessage(String.format("email %s is not a user at DB", email));
			return result;
		}
		
	}
}
