package com.lq.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lq.po.Job;
import com.lq.po.Rec_Job;
import com.lq.po.Recruit;
import com.lq.po.User_Rec;
import com.lq.service.RecruitService;
/**
 * 招聘者管理控制类
 * @author 流云
 *
 */
@Controller
public class RecruitController {
	//依赖注入
	@Autowired
	private RecruitService recruitService;
	/*
	 * 根据id查询招聘信息
	 */
	@RequestMapping(value="/find",method=RequestMethod.POST)
	public String findRecById(int rec_id,Model model){
		//执行Service层中的创建方法，返回recruit
		Recruit recruit = recruitService.findRecById(rec_id);
		//检测数据
		System.out.println(recruit.getRec_id());
		System.out.println(recruit.getRec_name());
		//添加参数
		model.addAttribute("recruit",recruit);
		//跳转
		return "/WEB-INF/content/Recfindbyid.jsp";
		
	}
	/*
	 * 根据id查询招聘信息
	 */
	/*
	@RequestMapping(value="/findbyid",method=RequestMethod.GET)
	@ResponseBody
	public Recruit findById(@RequestParam("rec_id")int rec_id,Model model){
		Recruit recruit = recruitService.findRecById(rec_id);
		System.out.println(recruit.getRec_id());
		System.out.println(recruit.getRec_name());
		System.out.println(recruit);
		model.addAttribute("recruit",recruit);
		return recruit;
		
	}
	*/
	
	/*
	 * 根据id删除
	 */
	@RequestMapping(value="/delete")
	public String deleteRecById(int rec_id){
		//执行Service层中的创建方法，返回的是受影响的行数
		int rows = recruitService.deleteRecById(rec_id);
		//如果有受影响行数，则执行之后跳转重定向
		if(rows>0){
		return "torecruit";		
	}
		//反之则跳转失败页面
		else{
			return "/WEB-INF/content/deletefall.jsp";
		}
}
	/*
	 * 查询全部招聘信息
	 */
	@RequestMapping("/findall")  
    public String findallRec(HttpServletRequest request,Model model){
		/*for(int i=0;i<recruit.size();i++){
			System.out.println(recruit.get(i)+"");
		}*/
		//执行Service层中的创建方法，返回List
		List<Recruit> recruit = recruitService.showRecByPage(request, model);
		//添加参数
        model.addAttribute("Rec", recruit);
		request.setAttribute("Rec",recruit);
		//跳转页面
        return "/WEB-INF/content/Recall.jsp";
	}
	/*
	 * 新增招聘信息
	 */
	  @RequestMapping(value="/add",method=RequestMethod.POST) 
	    public String saveRec(Model model,HttpServletRequest request,Recruit recruit,HttpSession session){
		//执行Service层中的创建方法，没有返回值
		  		
	            recruitService.saveRec(recruit);
	            //数据检测
	            System.out.println(recruit.getRec_name());
	            //重定向
	        return "torecruit";
	    }
	  /*
	  @RequestMapping(value="/findupdate")
	  @ResponseBody
		public Recruit findupdate(int rec_id,Model model){
			Recruit recruit = recruitService.findRecById(rec_id);
			System.out.println(recruit.getRec_id());
			return recruit;
			
		}
		*/
	  /*
	   * 修改招聘信息
	   */
	  @RequestMapping(value="/update",method=RequestMethod.POST)
	    public String updateRec(Recruit recruit){
		  System.out.println(recruit.getRec_id());
		//执行Service层中的创建方法，返回的是受影响的行数
	            int rows = recruitService.updateRec(recruit);
	            //检测数据
	            System.out.println(recruit.getRec_name());
	          //如果有受影响行数，则执行之后跳转重定向
	            if(rows>0){
	            	return "torecruit";
	            }
	            //反之则跳转失败页面
	            else{
	            	 return "/WEB-INF/content/fail.jsp";
	            }
	    }
	  /*
	   * 分页
	   */
	  @RequestMapping("/pagingRec")
	    public String pagingUser(HttpServletRequest request,Model model){
		  List<Recruit> recruit = recruitService.showRecByPage(request, model);
	        model.addAttribute("Rec", recruit);
			request.setAttribute("Rec",recruit);
	        return "torecruit";
	         
	    }
	  /*
		 * 申请职位
		 */
		  @RequestMapping(value="/RecandJob",method=RequestMethod.POST) 
		    public String RecandJob(Model model,HttpServletRequest request,Rec_Job rec_job){
		            recruitService.RecandJob(rec_job);
		            System.out.println(rec_job.getJob_id());
		        return "findall";
		    }
		  /*
		   * 应聘情况
		   */
		  @RequestMapping(value="/findRJByid")
			public String findRJById(Model model,Integer rec_id,Rec_Job rec_job){
			  List<Job> job = recruitService.findRJById(rec_id);
		        for(int i = 0;i < job.size();i++){
		            System.out.println(job.get(i));
		        }
		        model.addAttribute("rec", rec_id);
				model.addAttribute("rjlist",job);
				return "/WEB-INF/content/rj.jsp";
			}
		  /*
		   * 详细情况分页
		   */
		  @RequestMapping(value="/findRJByPage")
		  public String findRJByPage(HttpServletRequest request,
		            Model model,Integer rec_id,Rec_Job rec_job){
			  List<Job> job = recruitService.findRJByPage(request, model,rec_id);
			  model.addAttribute("rec", rec_id);
				model.addAttribute("rjlist",job);
				return "/WEB-INF/content/rj.jsp";
		  }
		  /*
		   * 注册
		   */
	/*@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registerRec(User_Rec user_rec,Model model){
		System.out.println(user_rec.getUr_code());
		recruitService.Regist(user_rec);
		return "/WEB-INF/content/registersuc.jsp";
	}*/
	/*
	 * 登录
	 */
	/*@RequestMapping(value="/login",method=RequestMethod.POST)
	public String loginRec(User_Rec user_rec,HttpServletRequest request,Model model){
		//System.out.println(user_rec.getUr_code());
		List<Recruit> recruit = recruitService.findallRec();
		model.addAttribute("findallList", recruit);
		request.setAttribute("findallList",recruit);
		user_rec = recruitService.login(user_rec.getUr_code(), user_rec.getUr_password());
		if(user_rec != null){
			model.addAttribute("user_rec",user_rec);
			return "toIndex";
		}
		return "/WEB-INF/content/loginfail.jsp";
	}*/
	/*
	 * 向注册界面跳转
	 */
	/*@RequestMapping(value = "/toregister")
    public String toregister(HttpServletResponse response, HttpSession session,
            Model model) {
        return "/WEB-INF/content/register.jsp";
    }*/
	/*
	 * 向登录页面跳转
	 */
	/*@RequestMapping(value = "/tologin")
    public String tologin(HttpServletResponse response, HttpSession session,
            Model model) {
        return "/WEB-INF/content/login.jsp";
    }*/
	/*
	 * 向主页面跳转
	 */
	@RequestMapping(value = "/tomain")
    public String tomain(HttpServletResponse response, HttpSession session,
            Model model) {
        return "/WEB-INF/content/main.jsp";
    }
	/*
	 * 向招聘管理主页面跳转
	 */
	@RequestMapping(value = "/torecruit")
    public String torecruit(HttpServletRequest request,
            Model model) {
		/*List<Recruit> recruit = recruitService.findallRec();
		model.addAttribute("findallList", recruit);
		request.setAttribute("findallList",recruit);*/
		List<Recruit> recruit = recruitService.showRecByPage(request, model);
        model.addAttribute("Rec", recruit);
		request.setAttribute("Rec",recruit);
        return "/WEB-INF/content/recruit.jsp";
    }
	

	//管理员管理招聘信息
	@RequestMapping("adminRecruiter")
		public ModelAndView adminRecruiter(){
		ModelAndView view=new ModelAndView();
		List<Recruit> recruits=recruitService.findallRec();  //查询所有招聘信息
		view.addObject("recruits", recruits);				//封装数据
		view.setViewName("viewAdmin/adminRecruiter.jsp");	//跳转到管理界面
		return view;
	}
	
	
	//管理员删除招聘信息
	@RequestMapping("adminDeleteRecruiter")
	public ModelAndView adminDeleteRecruiter(int id){
		ModelAndView view=new ModelAndView();
		recruitService.deleteRecById(id);   //删除招聘信息
		view.addObject("delete", "true");  //提示删除成功
		view.setViewName("adminRecruiter");	//跳转到管理界面
		return view;
	}
}