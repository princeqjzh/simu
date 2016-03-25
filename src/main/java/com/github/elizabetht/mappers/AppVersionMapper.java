package com.github.elizabetht.mappers;

import org.apache.ibatis.annotations.Select;

import com.github.elizabetht.model.AppVersion;

public interface AppVersionMapper {
	
	@Select("select * from app_version  WHERE  ID=#{id}")
	public AppVersion getAppVersionById(String id);

}
