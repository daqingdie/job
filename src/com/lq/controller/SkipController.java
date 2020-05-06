package com.lq.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lq.po.Evaluate;
import com.lq.po.User;
import com.lq.service.EvaluateService;
import com.lq.service.UserService;



@Controller
public class SkipController {
	@Autowired
	public UserService userService;
	
	
	//跳转到登录界面
	@RequestMapping("/toLogin")
	public ModelAndView toLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("view/login.jsp");
		return mv;
	}
	
	//跳转到注册界面
	@RequestMapping("toRegister")
	public ModelAndView toRegister(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("view/register.jsp");
		return mView;
	}
	
	//跳转到用户界面
	@RequestMapping("toUI")
	public ModelAndView toUI(HttpSession session){
		ModelAndView mView=new ModelAndView();
		User user=new User();
		user.setUsername(String.valueOf(session.getAttribute("nowUser")));  //提取用户名
		User u=userService.selectUserByUsername(user);   //根据用户名查找用户信息
		if(u.getPower()==3)
			mView.setViewName("view/recruiter.jsp");				//招聘者界面
		else if(u.getPower()==4)
			mView.setViewName("view/seeker.jsp");					//求职者界面
		else if (u.getPower()==2)
			mView.setViewName("viewService/service.jsp");			//客服界面
		else if(u.getPower()==1)
			mView.setViewName("viewAdmin/admin.jsp");				//管理员界面
		else mView.setViewName("view/success.jsp");
		return mView;
	}
	
	//跳转回首页
	@RequestMapping("toIndex")
	public ModelAndView toIndex(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("index.jsp");
		return mView;
	}
	
	//跳转到用户信息更新界面
	@RequestMapping("toUpdateUser") //请求更新用户数据
	public ModelAndView toUpdateUser(HttpSession session){
		ModelAndView view=new ModelAndView();
		User user=new User();
		user.setUsername(String.valueOf(session.getAttribute("nowUser")));  //提取用户名
		User user2=userService.selectUserByUsername(user);                //查找当前用户信息
		view.addObject("oldUser",user2);								//封装用户信息
		view.setViewName("view/updateUser.jsp");						//跳转到更新信息页面
		return view;
	}
	
	//跳转到用户密码更改界面
	@RequestMapping("toUpdateUserPassword")
	public ModelAndView updatePassword(HttpSession session){
		ModelAndView view=new ModelAndView();
		User user=new User();
		user.setUsername(String.valueOf(session.getAttribute("nowUser")));  //提取用户名
		User user2=userService.selectUserByUsername(user);                //查找当前用户信息
		view.addObject("oldPassword",user2.getPassword());				//封装当前用户密码
		view.addObject("id",user2.getId());				//封装当前用户Id
		view.setViewName("view/updatePassword.jsp");
		return view;
	}
	
	//跳转到招聘者管理用户界面
	@RequestMapping("toAdminUser")
	public ModelAndView toAdminUser(int power,HttpSession session){
		ModelAndView view=new ModelAndView();
		List<User> uList=userService.selectUserByPower(power);
		session.setAttribute("adminUsers",uList);                //把用户数组放到session
		view.addObject("power", power);
		view.setViewName("viewAdmin/adminUser.jsp");
		return view;
	}
	
	//跳转到招聘者修改用户信息界面
	@RequestMapping("toAdminUpdateUser")
	public ModelAndView toAdminUpdateUser(int id,HttpSession session){
		ModelAndView view=new ModelAndView();
		User user=userService.selectUserById(id);       //查询用户信息
		view.addObject("oldUser", user);				//封装
		session.setAttribute("oldUserName",user.getUsername());
		view.setViewName("viewAdmin/adminUpdateUser.jsp");		//跳转到修改界面
		return view;
	}
	
	//跳转到添加客服界面
	@RequestMapping("toAddService")
	public ModelAndView toAddService(){
		ModelAndView view=new ModelAndView();
		view.setViewName("viewService/addService.jsp");		//跳转到修改界面
		return view;
	}
	
	

}
