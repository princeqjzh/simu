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
import com.github.elizabetht.model.Student;
import com.github.elizabetht.model.User;

public interface LicenseMapper {
	@Insert("insert into uc_license(ID, CREATE_TIME , MODIFIED_TIME , DELETED,"
			+ "STATUS,LICENSE_TYPE,LICENSE,START_TIME,EXPIRED_TIME,OWNER,USER,DESCRIPTION,COMMENTS"
	
			+") values(#{id},#{creationTime},#{modifiedTime},#{deleted},#{status},#{licenseType},#{license},#{startTime},#{expiredTime},#{owner},#{user},#{description},#{comments}"
			+")")
	@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="ID")
	public void insertLicense(License license);
	
	@Select("SELECT ID as id, OWNER as owner, START_TIME as startTime, USER as user, LICENSE_TYPE as licenseType,EXPIRED_TIME as expiredTime ,DELETED as deleted ,STATUS as status FROM uc_license WHERE  1=1 AND OWNER = #{owner}")
//	@ResultMap("baseEntityResultMap")
	 @Results(  
			    {  
			        @Result(column = "CREATE_TIME", property = "creationTime"),  
			        @Result(column = "START_TIME", property = "startTime"),  
			        @Result(property = "modifiedTime", column = "MODIFIED_TIME"),  
			        @Result(property = "deleted", column = "DELETED"),  
			        @Result(property = "status", column = "STATUS" )
			    })  
	public List<License> getLicenseByOwner(String Owner);
	@Select("SELECT ID as id, OWNER as owner, START_TIME as startTime, USER as user, LICENSE_TYPE as licenseType,EXPIRED_TIME as expiredTime ,DELETED as deleted ,STATUS as status FROM uc_license WHERE  ID=#{id}")
//	@ResultMap("baseEntityResultMap")
	@Results(  
			{  
				@Result(column = "CREATE_TIME", property = "creationTime"),  
				@Result(column = "START_TIME", property = "startTime"),  
				@Result(property = "modifiedTime", column = "MODIFIED_TIME"),  
				@Result(property = "deleted", column = "DELETED"),  
				@Result(property = "status", column = "STATUS" )
			})  
	public License getLicenseById(String id);
	@Update("UPDATE uc_license SET LICENSE_TYPE=#{licenseType},EXPIRED_TIME=#{expiredTime},OWNER=#{owner},USER=#{user},STATUS=#{status},DELETED=#{deleted} where ID=#{id} ")
	public void update(License license);

}
