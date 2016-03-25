package com.github.elizabetht.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.elizabetht.mappers.AppVersionMapper;
import com.github.elizabetht.mappers.LicenseMapper;
import com.github.elizabetht.model.AppVersion;
import com.github.elizabetht.model.License;
import com.github.elizabetht.model.User;
import com.github.elizabetht.service.AppVersionService;
import com.github.elizabetht.service.LicenseService;
import com.github.elizabetht.service.UserService;
import com.onealert.common.DateUtil;
import com.onealert.common.Dict;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullParamException;
import com.onealert.exception.NullRecordExitsException;

@Service
public class AppVersionServiceImpl implements AppVersionService {

	@Autowired
	private AppVersionMapper appVersionMapper;

	@Override
	public AppVersion getAppVersionById(String id) throws NullParamException {
		if (id == null || id.equals(""))
			throw new NullParamException("400",String.format("id %s is null", id));
		return appVersionMapper.getAppVersionById(id);
	}

}
