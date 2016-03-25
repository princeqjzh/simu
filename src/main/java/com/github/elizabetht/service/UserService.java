package com.github.elizabetht.service;

import java.util.List;

import com.github.elizabetht.model.User;
import com.onealert.exception.BaseException;
import com.onealert.exception.MultiRecordExitsException;
import com.onealert.exception.NullRecordExitsException;
import com.onealert.exception.NullParamException;

public interface UserService {
	public List<User> getUserByOwner(String Owner);
	public List<User> getUserByEmail(String email);
	public List<User> getOwnerByEmail(String email);
	public User getOwnerOne(String email) throws NullParamException, MultiRecordExitsException, NullRecordExitsException;
	User getUserOne(String email) throws NullParamException, MultiRecordExitsException, NullRecordExitsException;
	public boolean update(User user);
	User getUserByUsernameOne(String username)
			throws NullParamException, MultiRecordExitsException, NullRecordExitsException;
	User getUserById(String id);

}
