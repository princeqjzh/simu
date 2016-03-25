package com.github.elizabetht.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.elizabetht.mappers.LicenseMapper;
import com.github.elizabetht.model.License;
import com.github.elizabetht.model.User;
import com.github.elizabetht.service.LicenseService;
import com.github.elizabetht.service.UserService;
import com.onealert.common.DateUtil;
import com.onealert.common.Dict;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullParamException;
import com.onealert.exception.NullRecordExitsException;

@Service
public class LicenseServiceImpl implements LicenseService {

	@Autowired
	private LicenseMapper licenseMapper;
	@Autowired
	private UserService userService;
	
	@Transactional
	@Override
	public void insertLicense(License license) {
		licenseMapper.insertLicense(license);
		
	}
	@Override
	public boolean insertLicense(int licenseNum,String operator,String licenseType,String expiredTimeType,String expiredTime,String owner) {
		 if (licenseNum <= 0 ) {
			 licenseNum = 1;
		}
		if (operator == null) {
			operator = "system";
		}
		if (licenseType == null || licenseType.equals("")) {
			return false;
		}
		if (expiredTimeType == null || expiredTimeType.equals("")) {
			expiredTimeType = Dict.EXPIRED_TIME_TYPE_MONTH;
		}
		int expiredTimeInt = 0;
		if (expiredTime == null || expiredTime.equals("")) {
			return false;
		}else {
			expiredTimeInt = Integer.valueOf(expiredTime);
		}
		if (owner == null || owner.equals("")) {
			return false;
		}
		for (int i = 0; i < licenseNum; i++) {

			License license = new License();
			license.setId(UUID.randomUUID().toString());
			
			license.setLicense(com.onealert.common.Rpid.generate(operator));
			
			license.setCreationTime(new Date().getTime());
			license.setStartTime(license.getCreationTime());
			license.setModifiedTime(new Date().getTime());
			//版本
			license.setLicenseType(licenseType);
			if (expiredTimeType.equals(Dict.EXPIRED_TIME_TYPE_MONTH)) {
				//时长 1～12均代表月
				license.setExpiredTime(DateUtil.addMonth(new Date(), expiredTimeInt).getTime());
			}else if (expiredTimeType.equals(Dict.EXPIRED_TIME_TYPE_DAY)) {
				//周 1～12均代表天
			license.setExpiredTime(DateUtil.addDay(new Date(), expiredTimeInt).getTime());
			}
			//用户名owner
			license.setOwner(owner);
			
			license.setStatus(Dict.STATUS_INACTIVE);
			license.setDeleted(0);
			insertLicense(license);
		
		}
		return true;
	}

	@Override
	public List<License> queryLicenseByOwner(String owner) {
		List<License> licenses = licenseMapper.getLicenseByOwner(owner);
		
		return licenses;
	}
	@Override
	public String update(License license) {
		boolean needsUpdate = false;
		boolean needsUpdateUser = false;
		StringBuilder rtMessage = new StringBuilder("");
		License licenseDb = licenseMapper.getLicenseById(license.getId());
		User userDb = null;
		
		
		if (!licenseDb.getLicenseType().equals(license.getLicenseType())) {
			needsUpdate = true;
			licenseDb.setLicenseType(license.getLicenseType());
			
		}
		if (licenseDb.getExpiredTime() != license.getExpiredTime()) {
			needsUpdate = true;
			licenseDb.setExpiredTime(license.getExpiredTime());
		}
		if (licenseDb.getUser() != null) {
			
			try {
				userDb = userService.getUserByUsernameOne(licenseDb.getUser());
			} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
				rtMessage.append(e.getMessage());
				return rtMessage.toString();
			}
			if (needsUpdate) {
				needsUpdateUser = true;
				userDb.setLicenseType(license.getLicenseType());
				userDb.setLicenseExpiredTime(licenseDb.getExpiredTime());
			}
			
		}else if ((license.getUser() != null) && (licenseDb.getUser()==null)) {
			userDb = null;
			try {
				userDb = userService.getUserByUsernameOne(license.getUser());
			} catch (NullParamException | MultiRecordExitsException | NullRecordExitsException e) {
				rtMessage.append(e.getMessage());
				return rtMessage.toString();
			}
				needsUpdate = true;
				licenseDb.setUser(userDb.getUser());
				
				needsUpdateUser = true;
				userDb.setLicenseType(licenseDb.getLicenseType());
				userDb.setLicense(licenseDb.getLicense());
				userDb.setLicenseExpiredTime(licenseDb.getExpiredTime());
		}
		if (needsUpdateUser) {
			userService.update(userDb);
		}
		if (needsUpdate) {
			licenseMapper.update(licenseDb);
		}
		return rtMessage.toString();
	}
	
	


	

}
