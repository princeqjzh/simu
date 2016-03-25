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

import com.github.elizabetht.model.Quotas;
import com.github.elizabetht.model.User;
import com.github.elizabetht.service.QuotasService;
import com.github.elizabetht.service.UserService;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullParamException;
import com.onealert.exception.NullRecordExitsException;

@Controller
@SessionAttributes("quotas")
@RequestMapping("/quotas")
public class QuotasController {

	@Autowired
	private QuotasService quotasService;
	@Autowired
	private UserService userService;

	/**
	 * http://localhost:8080/alertoperation/license/query?owner=100100
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public @ResponseBody DataResponse queryOwner(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();

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

		return getQuotasByOwner(req, resp, user.getOwner());
	}

	/**
	 * http://localhost:8080/alertoperation/license/query?owner=100100
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	public @ResponseBody DataResponse getQuotasByOwner(HttpServletRequest req, HttpServletResponse resp, String owner) {

		DataResponse result = new DataResponse();
		List<Quotas> quotas = quotasService.getQuotasByOwner(owner);
		result.setResult(result.R_SUCESS);
		result.setCode("200");
		result.setData(quotas);
		result.setTotalCount(quotas.size());
		result.setMessage(String.format(" owner id is:%s", owner));
		return result;
	}

	@RequestMapping(value = "/queryuser", method = RequestMethod.GET)
	public @ResponseBody DataResponse queryUserByEmail(HttpServletRequest req, HttpServletResponse resp) {
		DataResponse result = new DataResponse();

		String email = req.getParameter("email");
		User user = null;
		try {
			user = userService.getUserOne(email);
		} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
			result.setResult(result.R_FAILED);
			result.setCode(e.getRetCd());
			result.setMessage(e.getMessage());
			return result;	
		}
		return getQuotasByUser(req, resp, user.getUser(), user.getOwner());
	}

	public @ResponseBody DataResponse getQuotasByUser(HttpServletRequest req, HttpServletResponse resp, String user,
			String owner) {

		DataResponse result = new DataResponse();
		List<Quotas> quotas = quotasService.getQuotasByUser(owner, user);
		result.setResult(result.R_SUCESS);
		result.setCode("200");
		result.setData(quotas);
		result.setTotalCount(quotas.size());
		result.setMessage(String.format(" owner id is:%s", owner));
		return result;
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
		//{deleted=0, limit=20, description=监控配额, oper=edit, id=10205, used=1, status=ACTIVE}
		Quotas quotas = new Quotas();
		quotas.setId(paramMap.get("id"));
		quotas.setLimit(Integer.valueOf(paramMap.get("limit")));
		quotas.setDescription(paramMap.get("description"));
		quotas.setUsed(Integer.valueOf(paramMap.get("used")));
		quotas.setDeleted(Integer.valueOf(paramMap.get("deleted")));
		quotas.setStatus(paramMap.get("status"));
		
		boolean needsUpdate = quotasService.update(quotas);
		List<Quotas> quotases = new ArrayList<>();
		quotases.add(quotas);
		result.setResult(result.R_SUCESS);
		result.setCode("200");
		result.setData(quotases);
		result.setTotalCount(quotases.size());
		if (needsUpdate) {
			result.setMessage("already update successful");
		}else {
			result.setMessage("needn't update");
		}
		return result;
	}
}
