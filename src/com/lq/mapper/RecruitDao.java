package com.lq.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lq.po.Job;
import com.lq.po.Rec_Job;
import com.lq.po.Recruit;
import com.lq.po.User_Rec;
/**
 * 招聘者Dao层接口
 * @author 流云
 *
 */

public interface RecruitDao {
	/*
	 * 根据id查询招聘信息
	 */
	public Recruit findRecById(int rec_id);
	/*
	 * 根据id删除招聘信息
	 */
	public int deleteRecById(int rec_id);
	/*
	 * 查询所有招聘信息
	 */
	List<Recruit> findallRec();
	/*
	 * 注册
	 */
	void registerRec(@Param("ur_code")String ur_code,
            @Param("ur_password")String ur_password);
	/*
	 * 登录
	 */
	User_Rec loginRec(@Param("ur_code")String ur_code,
            @Param("ur_password")String ur_password);
	/*
	 * 新增
	 */
	void saveRec(Recruit recruit);
	/*
	 * 修改
	 */
	int updateRec(Recruit recruit);
	/**
	 * 使用注解方式传入多个参数
	 * @param page
	 * @return startPos},#{pageSize}
	 */
	public List<Recruit> selectRecByPage(@Param(value="startPos") Integer startPos,
	        @Param(value="pageSize") Integer pageSize);
	 
	/**
	 * 用户总数
	 */
	public long getRecCount();
	/*
	 * 申请职位
	 */
	void RecandJob(Rec_Job rec_job);
	/*
	 * 应聘情况
	 */
	public List<Job> findRJById(Integer rec_id);
	/*
	 * 分页应聘情况
	 */
	public List<Job> findRJByPage(@Param(value="startPos") Integer startPos,
	        @Param(value="pageSize") Integer pageSize,Integer rec_id);
	 
	/**
	 * 用户总数
	 */
	public long getRJCount();
}
