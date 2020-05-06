package com.lq.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lq.mapper.JobDao;
import com.lq.mapper.RecruitDao;
import com.lq.po.Job;
import com.lq.po.Page;
import com.lq.po.Rec_Job;
import com.lq.po.Recruit;
import com.lq.po.User_Rec;
import com.lq.service.RecruitService;
@Service
@Transactional
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	private RecruitDao recruitDao;
	public Recruit findRecById(int rec_id) {
		// TODO Auto-generated method stub
		return this.recruitDao.findRecById(rec_id);
	}
	@Override
	public int deleteRecById(int rec_id) {
		// TODO Auto-generated method stub
		return recruitDao.deleteRecById(rec_id);
	}
	@Override
	public List<Recruit> findallRec() {
		// TODO Auto-generated method stub
        List<Recruit> recruit = recruitDao.findallRec();
        return recruit;
	}
	@Override
	public void Regist(User_Rec user_rec) {
		// TODO Auto-generated method stub
		recruitDao.registerRec(user_rec.getUr_code(),user_rec.getUr_password());
	}
	@Override
	public User_Rec login(String ur_code, String ur_password) {
		// TODO Auto-generated method stub
		User_Rec user_rec = recruitDao.loginRec(ur_code, ur_password);
		if(user_rec != null && user_rec.getUr_password().equals(ur_password)){
			return user_rec;
		}
		return null;
	}
	@Override
	public void saveRec(Recruit recruit) {
		// TODO Auto-generated method stub
		recruitDao.saveRec(recruit);
	}
	@Override
	public int updateRec(Recruit recruit) {
		// TODO Auto-generated method stub
		return recruitDao.updateRec(recruit);
	}
	@Override
	public List<Recruit> showRecByPage(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		String pageNow = request.getParameter("pageNow"); 
        
        Page page = null; 
       
        List<Recruit> recruit = new ArrayList<Recruit>(); 
      //查询用户总数
        int totalCount = (int) recruitDao.getRecCount();
       
        if (pageNow != null) { 
            page = new Page(totalCount, Integer.parseInt(pageNow)); 
            recruit = this.recruitDao.selectRecByPage(page.getStartPos(), page.getPageSize()); 
        } else { 
            page = new Page(totalCount, 1); 
            recruit = this.recruitDao.selectRecByPage(page.getStartPos(), page.getPageSize()); 
        } 
       
        model.addAttribute("recruit", recruit); 
        model.addAttribute("page", page);
		return recruit; 
	}
	@Override
	public void RecandJob(Rec_Job rec_job) {
		// TODO Auto-generated method stub
		recruitDao.RecandJob(rec_job);
	}
	@Override
	public List<Job> findRJById(Integer rec_id) {
		// TODO Auto-generated method stub
		List<Job> job = recruitDao.findRJById(rec_id);
        return job;
	}
	@Override
	public List<Job> findRJByPage(HttpServletRequest request, Model model,
			Integer rec_id) {
		// TODO Auto-generated method stub
String pageNow = request.getParameter("pageNow"); 
        
        Page page = null; 
       
        List<Job> job = new ArrayList<Job>(); 
      //查询用户总数
        int totalCount = (int) recruitDao.getRJCount();
       
        if (pageNow != null) { 
            page = new Page(totalCount, Integer.parseInt(pageNow)); 
            job = this.recruitDao.findRJByPage(page.getStartPos(), page.getPageSize(),rec_id); 
        } else { 
            page = new Page(totalCount, 1); 
            job = this.recruitDao.findRJByPage(page.getStartPos(), page.getPageSize(),rec_id); 
        } 
       
        model.addAttribute("job", job); 
        model.addAttribute("page", page);
		return job; 
	}

}
