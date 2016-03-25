package com.github.elizabetht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.elizabetht.mappers.UserMapper;
import com.github.elizabetht.model.User;
import com.github.elizabetht.service.UserService;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullRecordExitsException;
import com.onealert.exception.NullParamException;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> getUserByEmail(String email) {
		return userMapper.getUserByEmail(email);
	}

	@Override
	public List<User> getOwnerByEmail(String email) {
		return userMapper.getOwnerByEmail(email);
	}

	@Override
	public List<User> getUserByOwner(String Owner) {
		return userMapper.getUserByOwner(Owner);
	}
	@Override
	public User getUserById(String id) {
		return userMapper.getUserById(id);
	}

	@Override
	public User getOwnerOne(String email) throws NullParamException, MultiRecordExitsException, NullRecordExitsException {
		System.out.println("UserServiceImpl getOwnerOne email is: "+email);
		if ( email == null || email.equals("")) {
			throw new NullParamException("400",String.format("email %s is null", email));
		}
		List<User> users = userMapper.getOwnerByEmail(email);
		if (users != null && users.size()>0) {
			if (users.size() > 1) {
				throw new MultiRecordExitsException("444",String.format("email %s is more than one ", email));
			}
			User user = users.get(0);
			return user;
		}else {
			throw new NullRecordExitsException("404",String.format("email %s is not exit at DB", email));
		}
	}
	
	@Override
	public User getUserOne(String email) throws NullParamException, MultiRecordExitsException, NullRecordExitsException {
		if (email == null || email.equals("")) {
			throw new NullParamException("400",String.format("email %s is null", email));
		}
		List<User> users = userMapper.getUserByEmail(email);
		if (users != null && users.size()>0) {
			if (users.size() > 1) {
				throw new MultiRecordExitsException("444",String.format("email %s is more than one", email));
			}
			User user = users.get(0);
			return user;
		}else {
			throw new NullRecordExitsException("404",String.format("email %s is not exit at DB", email));
		}
	}
	@Override
	public User getUserByUsernameOne(String username) throws NullParamException, MultiRecordExitsException, NullRecordExitsException {
		if (username == null || username.equals("")) {
			throw new NullParamException("400",String.format("username %s is null", username));
		}
		List<User> users = userMapper.getUserByUsername(username);
		if (users != null && users.size()>0) {
			if (users.size() > 1) {
				throw new MultiRecordExitsException("444",String.format("username %s is more than one", username));
			}
			User user = users.get(0);
			return user;
		}else {
			throw new NullRecordExitsException("404",String.format("username %s is not exit at DB", username));
		}
	}

	@Override
	public boolean update(User user) {
		boolean needsUpdate = false;
		User userDb = getUserById(user.getId());
		if (!userDb.getLicenseType().equals(user.getLicenseType())) {
			needsUpdate = true;
			userDb.setLicenseType(user.getLicenseType());
		}
		if (userDb.getLicenseExpiredTime() != user.getLicenseExpiredTime()) {
			needsUpdate = true;
			userDb.setLicenseExpiredTime(user.getLicenseExpiredTime());
		}
		if (!userDb.getStatus().equals(user.getStatus())) {
			needsUpdate = true;
			userDb.setStatus(user.getStatus());
		}
		if (userDb.getDeleted() != user.getDeleted()) {
			needsUpdate = true;
			userDb.setDeleted(user.getDeleted());
		}
		if (needsUpdate) {
			userMapper.update(user);
		}
		return needsUpdate;
	}
	


	

}
