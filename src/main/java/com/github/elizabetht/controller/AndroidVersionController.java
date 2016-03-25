package com.github.elizabetht.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.elizabetht.model.AppVersion;
import com.github.elizabetht.service.AppVersionService;
import com.onealert.exception.NullParamException;

@Controller
@SessionAttributes("appversion")
@RequestMapping("/appversion")
public class AndroidVersionController {

	@Autowired
	private AppVersionService appVersionService;
	@RequestMapping(value = "/android", method = RequestMethod.GET)
	public @ResponseBody DataResponse licensesong(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();
		String id = req.getParameter("id");
		if (id == null || id.equals("")) {
			id="android_001";
		}
		AppVersion appVersion = null;
		try {
			appVersion = appVersionService.getAppVersionById(id);
			result.setResult(result.R_SUCESS);
			result.setCode("200");
			result.setData(appVersion);
			return result;
		} catch (NullParamException e) {
			result.setResult(result.R_FAILED);
			result.setCode(e.getRetCd());
			result.setMessage(e.getMessage());
			return result;	
		}
	}
}
