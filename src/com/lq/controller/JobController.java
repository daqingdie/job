package com.lq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lq.po.Job;
import com.lq.po.Recruit;
import com.lq.service.JobService;
/**
 * 求职者管理控制类
 * @author 流云
 *
 */
@Controller
public class JobController {
	//依赖注入
	@Autowired
	private JobService jobService;
	/*
	 * 根据id查询求职信息
	 */
	@RequestMapping(value="/jobfindid",method=RequestMethod.POST)
	public String findjobById(int job_id,Model model){
		//执行Service层中的创建方法，返回job
		Job job = jobService.findjobById(job_id);
		//检测数据
		//System.out.println(job.getJob_id());
		//System.out.println(job.getJob_name());
		//添加参数
		model.addAttribute("job",job);
		//跳转页面
		return "/WEB-INF/content/Jobfindbyid.jsp";
	}
	/*
	 * 详细信息
	 */
	@RequestMapping(value="/jobInfo")
	public String jobinfo(int job_id,Model model){
		//执行Service层中的创建方法，返回job
		Job job = jobService.findjobById(job_id);
		//检测数据
		//System.out.println(job.getJob_id());
		//System.out.println(job.getJob_name());
		//添加参数
		model.addAttribute("jobinfo",job);
		//跳转页面
		return "/WEB-INF/content/jobinfo.jsp";
	}
	/*
	 * 查询全部求职信息
	 */
	@RequestMapping("/findalljob")  
    public String findallJob(HttpServletRequest request,Model model){
		/*for(int i=0;i<recruit.size();i++){
			System.out.println(recruit.get(i)+"");
		}*/
		//执行Service层中的创建方法，返回List
		List<Job> job = jobService.showJobByPage(request, model);
		//添加参数
        model.addAttribute("Job", job);
		request.setAttribute("Job",job);
		//跳转页面
        return "/WEB-INF/content/Joball.jsp";
	}
	/*
	 * 根据id删除
	 */
	@RequestMapping(value="/Jobdelete")
	public String deleteJobById(int job_id){
		//执行Service层中的创建方法，返回受影响的行数
		int rows = jobService.deleteJobById(job_id);
		//如果有受影响行数，则执行之后跳转重定向
		if(rows>0){
		return "tojob";		
	}
		//反之则跳转失败页面
		else{
			return "/WEB-INF/content/deletefall.jsp";
		}
}
	@RequestMapping(value="/Jobupdate",method=RequestMethod.POST)
    public String updateJob(Job job){
	  System.out.println(job.getJob_id());
	//执行Service层中的创建方法，返回受影响的行数
            int rows = jobService.updateJob(job);
            System.out.println(job.getJob_name());
          //如果有受影响行数，则执行之后跳转重定向
            if(rows>0){
            	return "tojob";
            }
          //反之则跳转失败页面
            else{
            	 return "/WEB-INF/content/fail.jsp";
            }
    }
	/*
	 * 新增求职信息
	 */
	  @RequestMapping(value="/Jobadd",method=RequestMethod.POST) 
	    public String saveJob(Model model,HttpServletRequest request,Job job){
		//执行Service层中的创建方法，没有返回值
	           jobService.saveJob(job);
	           System.out.println(job.getJob_name());
	           //跳转重定向
	        return "tojob";
	    }
	  /*
	   * 向求职者管理主界面跳转
	   */
	@RequestMapping(value = "/tojob")
    public String tojob(HttpServletRequest request,
            Model model) {
		//执行Service层中的创建方法，返回List
		List<Job> job = jobService.showJobByPage(request, model);
		//添加参数
        model.addAttribute("Job", job);
		request.setAttribute("Job",job);
		//跳转页面
        return "/WEB-INF/content/job.jsp";
    }
	

	//管理员管理求职信息
	@RequestMapping("adminSeeker")
	public ModelAndView adminSeeker(){
		ModelAndView view=new ModelAndView();
		List<Job> jobs=jobService.findallJob();
		view.addObject("jobs",jobs );				//封装数据
		view.setViewName("viewAdmin/adminSeeker.jsp");	//跳转到管理界面
		return view;
	}
	

	//管理员删除求职信息
	@RequestMapping("adminDeleteSeeker")
	public ModelAndView adminDeleteRecruiter(int id){
		ModelAndView view=new ModelAndView();
		jobService.deleteJobById(id);      //删除求职信息
		view.addObject("delete", "true");  //提示删除成功
		view.setViewName("adminSeeker");	//跳转到管理界面
		return view;
	}
}
