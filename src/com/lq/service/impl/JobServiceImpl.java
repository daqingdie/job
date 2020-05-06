package com.lq.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lq.mapper.JobDao;
import com.lq.po.Job;
import com.lq.po.Page;
import com.lq.po.Recruit;
import com.lq.service.JobService;
@Service
@Transactional
public class JobServiceImpl implements JobService {
	@Autowired
	private JobDao jobDao;

	@Override
	public Job findjobById(int job_id) {
		// TODO Auto-generated method stub
		return this.jobDao.findjobById(job_id);
	}
	
	@Override
	public List<Job> findallJob() {
		// TODO Auto-generated method stub
		List<Job> job = jobDao.findallJob();
		return job;
	}

	@Override
	public int deleteJobById(int job_id) {
		// TODO Auto-generated method stub
		return jobDao.deleteJobById(job_id);
	}

	@Override
	public void saveJob(Job job) {
		// TODO Auto-generated method stub
		jobDao.saveJob(job);
	}

	@Override
	public int updateJob(Job job) {
		// TODO Auto-generated method stub
		return jobDao.updateJob(job);
	}

	@Override
	public List<Job> showJobByPage(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
String pageNow = request.getParameter("pageNow"); 
        
        Page page = null; 
       
        List<Job> job = new ArrayList<Job>(); 
      //查询用户总数
        int totalCount = (int) jobDao.getJobCount();
       
        if (pageNow != null) { 
            page = new Page(totalCount, Integer.parseInt(pageNow)); 
            job = this.jobDao.selectJobByPage(page.getStartPos(), page.getPageSize()); 
        } else { 
            page = new Page(totalCount, 1); 
            job = this.jobDao.selectJobByPage(page.getStartPos(), page.getPageSize()); 
        } 
       
        model.addAttribute("job", job); 
        model.addAttribute("page", page);
		return job; 
	}
}
