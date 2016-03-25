package com.github.elizabetht.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.onealert.common.DateStyle;
import com.onealert.common.DateUtil;
import com.onealert.common.Dict;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullParamException;
import com.onealert.exception.NullRecordExitsException;

@Controller
@SessionAttributes("license")
@RequestMapping("/license")
public class LicenseController {

	@Autowired
	private LicenseService licenseService;
	@Autowired
	private UserService userService;
	/**
	 * http://localhost:8080/alertoperation/license/song?licenseType=pro&expiredTime=1&owner=100100&licenseNum=3
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/song", method = RequestMethod.GET)
	public @ResponseBody DataResponse licensesong(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();
		String operator = "song";
		String email = req.getParameter("email");
		User user = null;
		try {
			user = userService.getOwnerOne(email);
		} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
			result.setResult(result.R_FAILED);
			result.setCode(e.getRetCd());
			result.setMessage(e.getMessage());
			return result;	
		}
		return license(req, resp, operator,user.getOwner());
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public @ResponseBody DataResponse update(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();
		Map<String,String> paramMap= new HashMap<>();

		Map<String,String[]> paramMap2 = req.getParameterMap();
		for (String key : paramMap2.keySet()) {  
            String[] values = paramMap2.get(key);  
            paramMap.put(key, values[0]);
        }
				License license = new License();
				license.setId(paramMap.get("id"));
				license.setLicenseType(paramMap.get("licenseType"));
				String expiredTimeStr = paramMap.get("expiredTime");
				license.setExpiredTime(DateUtil.StringToDate(expiredTimeStr, "MM/dd/yyyy").getTime());
				String needsUpdate = licenseService.update(license);
				List<License> licenses = new ArrayList<>();
				licenses.add(license);
				result.setResult(result.R_SUCESS);
				result.setCode("200");
				result.setData(licenses);
				result.setTotalCount(licenses.size());
				result.setMessage(needsUpdate);
				return result;
	}
//	public @ResponseBody DataResponse licensesong(HttpServletRequest req, HttpServletResponse resp) {
//		DataResponse fetch = new DataResponse();
//		DataResponse result = new DataResponse();
//		
//		String operator = "song";
//		String email = req.getParameter("email");
//		StringBuilder sb = new StringBuilder("");
//		sb.append("http://localhost:");
//		sb.append(req.getLocalPort());
//		sb.append(req.getContextPath());
//		sb.append("/user/queryOwner?email=");
//		sb.append(email);
//		
//		String responseStr = NetUtil.get(sb.toString());
//		ObjectMapper mapper = new ObjectMapper();
//		try {
//			fetch = mapper.readValue(responseStr, DataResponse.class);
//		} catch (IOException e) {
//			result.setResult(result.R_FAILED);
//			result.setCode("404");
//			result.setMessage(String.format("failed reason %s is not a user at DB", e.getMessage()));
//			return result;
//		}
//		if (fetch.getResult().equals(fetch.R_FAILED)) {
//			return fetch;
//		}
//		User user = (User)fetch.getData();
//		return license(req, resp, operator,user.getOwner());
//	}
	public @ResponseBody DataResponse license(HttpServletRequest req, HttpServletResponse resp,String operator,String owner ) {
		StringBuilder sb = new StringBuilder("");
		DataResponse result = new DataResponse();
		sb.append("license operator is " + operator);

		String licenseType = req.getParameter("licenseType");
		String licenseNumStr = req.getParameter("licenseNum");
		String expiredTimeType = req.getParameter("expiredTimeType");
		String expiredTime = req.getParameter("expiredTime");

		int licenseNum = 0;
		if (licenseNumStr == null || licenseNumStr.equals("")) {
			licenseNum = 0;
			sb.append(",license num default is 1.param:licenseNum");
		} else {
			licenseNum = Integer.valueOf(licenseNumStr);
		}

		if (licenseType == null || licenseType.equals("")) {
			result.setResult(result.R_FAILED);
			result.setCode("400");
			result.setMessage("license type can not be null. param:licenseType.options:base,norm,pro");
			return result;
		}
		if (expiredTimeType == null || expiredTimeType.equals("")) {
			expiredTimeType = Dict.EXPIRED_TIME_TYPE_MONTH;

			sb.append(",license comsume default by " + Dict.EXPIRED_TIME_TYPE_MONTH
					+ " .param:expiredTimeType,options:month,day");

		}
		int expiredTimeInt = 0;
		if (expiredTime == null || expiredTime.equals("")) {
			result.setResult(result.R_FAILED);
			result.setCode("400");
			result.setMessage("how long duration licensed can not be null,param:expiredTime");
			return result;
		} else {
			expiredTimeInt = Integer.valueOf(expiredTime);
		}
		if (owner == null || owner.equals("")) {
			result.setResult(result.R_FAILED);
			result.setCode("400");
			result.setMessage("owner can not be null,param:owner");
			return result;
		}
		boolean isSuccess = licenseService.insertLicense(licenseNum, operator, licenseType, expiredTimeType,
				expiredTime, owner);
		if (isSuccess) {
			result.setResult(result.R_SUCESS);
			result.setCode("200");
			if (result.getMessage() != null) {
				sb.append(result.getMessage());
			}
			result.setMessage(sb.toString() + " 成功开通");
			return result;
		} else {
			result.setResult(result.R_FAILED);
			result.setCode("400");
			result.setMessage("开通失败");
			return result;
		}

	}
	/**
	 * http://localhost:8080/alertoperation/license/query?owner=100100
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public @ResponseBody DataResponse query(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();
		String email = req.getParameter("email");
		System.out.println("license...");
		User user = null;
		try {
			user = userService.getOwnerOne(email);
		} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
			result.setResult(result.R_FAILED);
			result.setCode(e.getRetCd());
			result.setMessage(e.getMessage());
			return result;	
		}
		List<License> licenses = licenseService.queryLicenseByOwner(user.getOwner());
		result.setResult(result.R_SUCESS);
		result.setCode("200");
		result.setData(licenses);
		result.setMessage("owner is:"+user.getOwner());
		return result;
	}
}
