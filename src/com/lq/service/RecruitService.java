package com.lq.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.lq.po.Job;
import com.lq.po.Rec_Job;
import com.lq.po.Recruit;
import com.lq.po.User_Rec;

public interface RecruitService {
	public Recruit findRecById(int rec_id);
	public int deleteRecById(int rec_id);
	void saveRec(Recruit recruit);
	int updateRec(Recruit recruit);
	List<Recruit> findallRec();
	void Regist(User_Rec user_rec);
	User_Rec login(String ur_code,String ur_password);
	List<Recruit> showRecByPage(HttpServletRequest request,Model model);
	void RecandJob(Rec_Job rec_job);
	List<Job> findRJById(Integer rec_id);
	List<Job> findRJByPage(HttpServletRequest request,Model model,Integer rec_id);
	
}
