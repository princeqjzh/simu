package com.github.elizabetht.service;

import com.github.elizabetht.model.AppVersion;
import com.onealert.exception.NullParamException;

public interface AppVersionService {
	public AppVersion getAppVersionById(String id) throws NullParamException;
}
