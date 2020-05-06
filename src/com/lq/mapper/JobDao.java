package com.lq.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lq.po.Job;
import com.lq.po.Recruit;
/**
 * 求职者Dao层接口
 * @author 流云
 *
 */
public interface JobDao {
/*
 * 根据id查询求职信息
 */
    Job findjobById(int job_id);
    /*
     * 查询所有求职信息
     */
    List<Job> findallJob();
    /*
     * 根据id删除求职信息
     */
    int deleteJobById(int job_id);
    /*
     * 新增
     */
    void saveJob(Job job);
    /*
     * 修改
     */
    int updateJob(Job job);
    /**
	 * 使用注解方式传入多个参数
	 * @param page
	 * @return startPos},#{pageSize}
	 */
	public List<Job> selectJobByPage(@Param(value="startPos") Integer startPos,
	        @Param(value="pageSize") Integer pageSize);
	 
	/**
	 * 用户总数
	 */
	public long getJobCount();
}