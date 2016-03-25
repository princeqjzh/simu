package com.github.elizabetht.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
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

public interface QuotasMapper {
	@Select("select * from uc_quotas where ID=#{id}")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "QUOTAS_LIMIT", property = "limit"),
		@Result(column = "USER", property = "subuser"),
		}) 
	public Quotas getQuotasById(@Param("id")String id);
	@Select("select * from uc_quotas where USERNAME=#{owner} AND deleted=0 ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "QUOTAS_LIMIT", property = "limit"),
		@Result(column = "USER", property = "subuser"),
	}) 
	public List<Quotas> getQuotasByOwner(@Param("owner")String owner);
	@Select("select * from uc_quotas where USERNAME=#{owner} AND deleted=0 AND USER is null")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "QUOTAS_LIMIT", property = "limit"),
		@Result(column = "USER", property = "subuser"),
		}) 
	public List<Quotas> getQuotasOnlyOwner(@Param("owner")String owner);
	@Select("select * from uc_quotas where USERNAME=#{owner} AND USER=#{subuser} AND deleted=0 ")
	@Results({ 
		@Result(column = "USERNAME", property = "user"),
		@Result(column = "QUOTAS_LIMIT", property = "limit"),
		@Result(column = "USER", property = "subuser"),
		}) 
	public List<Quotas> getQuotasByUser(@Param("owner")String owner,@Param("subuser")String subuser);
	@Update("UPDATE uc_quotas SET DESCRIPTION=#{description},QUOTAS_LIMIT=#{limit},USED=#{used},STATUS=#{status},DELETED=#{deleted} where id=#{id} ")
	public void update(Quotas quotas);
	public void updateParam(@Param("description")String description,@Param("limit")int limit,@Param("used")int used,@Param("status")String status,@Param("deleted")Integer deleted ,@Param("owner")String owner, @Param("subuser")String subuser, @Param("resource")String resource, @Param("id")String id);


}
