package com.github.elizabetht.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.JdbcType;

import com.github.elizabetht.model.License;
import com.github.elizabetht.model.Quotas;
import com.github.elizabetht.model.Student;
import com.github.elizabetht.model.User;

public interface UserMapper {
	public void insertUser(User license);
	
	@Select("SELECT * FROM uc_user WHERE  ID=#{id} ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "COMPANY", property = "companyName"),
		@Result(column = "CONTACT_NAME", property = "contactName"),
		@Result(column = "LICENSE_TYPE", property = "licenseType"),
		@Result(column = "LICENSE_EXPIRED_TIME", property = "licenseExpiredTime")
		}) 
	public User getUserById(String id);
	@Select("SELECT * FROM uc_user WHERE  1=1 AND OWNER = #{owner} AND deleted=0 ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "COMPANY", property = "companyName"),
		@Result(column = "CONTACT_NAME", property = "contactName"),
		@Result(column = "LICENSE_TYPE", property = "licenseType"),
		@Result(column = "LICENSE_EXPIRED_TIME", property = "licenseExpiredTime")
	}) 
	public List<User> getUserByOwner(String Owner);
	@Select("SELECT * FROM uc_user WHERE  1=1 AND EMAIL = #{email} AND deleted=0 ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "COMPANY", property = "companyName"),
		@Result(column = "CONTACT_NAME", property = "contactName"),
		@Result(column = "LICENSE_TYPE", property = "licenseType"),
		@Result(column = "LICENSE_EXPIRED_TIME", property = "licenseExpiredTime")
		})
	public List<User> getUserByEmail(String email);
	@Select("SELECT * FROM uc_user WHERE  1=1 AND USERNAME = #{username} AND deleted=0 ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "COMPANY", property = "companyName"),
		@Result(column = "CONTACT_NAME", property = "contactName"),
		@Result(column = "LICENSE_TYPE", property = "licenseType"),
		@Result(column = "LICENSE_EXPIRED_TIME", property = "licenseExpiredTime")
		})
	public List<User> getUserByUsername(String username);
	@Select("SELECT * FROM uc_user WHERE  1=1 AND EMAIL = #{email} AND  DELETED=0 and ROLE='admin' ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "COMPANY", property = "companyName"),
		@Result(column = "CONTACT_NAME", property = "contactName"),
		@Result(column = "LICENSE_TYPE", property = "licenseType"),
		@Result(column = "LICENSE_EXPIRED_TIME", property = "licenseExpiredTime")
		})
	public List<User> getOwnerByEmail(String email);
	@Update("UPDATE uc_user SET LICENSE_TYPE=#{licenseType},LICENSE_EXPIRED_TIME=#{licenseExpiredTime},STATUS=#{status},DELETED=#{deleted} where ID=#{id} ")
	public void update(User user);
	


}
