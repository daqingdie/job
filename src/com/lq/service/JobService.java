package com.lq.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.lq.po.Job;
import com.lq.po.Recruit;

public interface JobService {
	public int deleteJobById(int job_id);
	void saveJob(Job job);
    Job findjobById(int job_id);
    List<Job> findallJob();
    int updateJob(Job job);
    List<Job> showJobByPage(HttpServletRequest request,Model model);
}
