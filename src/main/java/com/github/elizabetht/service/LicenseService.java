package com.github.elizabetht.service;

import java.util.List;

import com.github.elizabetht.model.License;

public interface LicenseService {
	void insertLicense(License license);
	/**
	 * 
	 * @param licenseNum 开通数量
	 * @param operator 开通者
	 * @param licenseType 开通类型
	 * @param expiredTimeType 开通按月/日
	 * @param expiredTime 开通时长
	 * @param owner 所属owner
	 */
	boolean insertLicense(int licenseNum, String operator, String licenseType, String expiredTimeType, String expiredTime,
			String owner);

	List<License> queryLicenseByOwner(String owner);
	public String update(License license);

}
