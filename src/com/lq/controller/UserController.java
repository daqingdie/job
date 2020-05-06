package com.lq.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lq.po.User;
import com.lq.service.UserService;

@Controller
public class UserController {
	@Autowired
	public UserService userService;
	
	@RequestMapping("/login")   //用户登录
	public ModelAndView login(User user,HttpSession session){
		ModelAndView mView=new ModelAndView();
		User u = userService.selectUserByUsernameAndPassword(user);  //查询是否存在用户
		if(u != null){      //登录成功，跳转到相应权限的用户界面
			session.setAttribute("nowUser", u.getUsername());        //把用户名放在session便于之后使用
			session.setAttribute("userPower",u.getPower());          //把用户对应的权限放在session中
			session.setAttribute("isLogin", "true");                 //把登录状态改为true
			if(u.getPower()==3)
				mView.setViewName("view/recruiter.jsp");             //跳转到招聘者界面
			else if(u.getPower()==4)
				mView.setViewName("view/seeker.jsp");				//跳转到求职者界面
			else if (u.getPower()==2)
				mView.setViewName("viewService/service.jsp");			//跳转到客服界面
			else if (u.getPower()==1)
				mView.setViewName("viewAdmin/admin.jsp");			//跳转到管理员界面
			else mView.setViewName("view/success.jsp");
		}else{                //登录失败，弹窗告知并返回登录界面
			//redirect:
			mView.addObject("login","false");
			mView.setViewName("view/login.jsp");
		}
		return mView;
	}
	
	@RequestMapping("register")   //用户注册
	public ModelAndView register(User user){
		User user2=userService.selectUserByUsername(user);   //先查询是否已存在同名用户
		ModelAndView view=new ModelAndView();
		if(user2==null){          //不存在同名用户，插入一条新的用户数据并跳转到登录界面
			userService.insertUser(user);   //插入数据
			view.addObject("register","true");
			view.setViewName("view/login.jsp");
			return view;
		}else {				//用户已存在，弹窗提示并返回注册页面
			view.addObject("register", "false");
			view.setViewName("view/register.jsp");
			return view;
		}
		
	}
	
	//显示用户基本信息
	@RequestMapping("showUser")
	public ModelAndView showUser(HttpSession session){
		ModelAndView view=new ModelAndView();
		User user=new User();
		user.setUsername(String.valueOf(session.getAttribute("nowUser")));  //提取用户名
		User user2=userService.selectUserByUsername(user);   //根据用户名查找用户信息
		view.addObject("showUser",user2);          //封装数据   
		view.setViewName("view/showUser.jsp");  //跳转到信息显示页面
		return view;
	}
	
	
	
	@RequestMapping("updateUser") //更新用户数据
	public ModelAndView updateUser(User user,HttpSession session){
		ModelAndView view=new ModelAndView();
		if(user.getUsername().equals(String.valueOf(session.getAttribute("nowUser")))){   //如果没有修改用户名
			userService.updateUser(user);       //更新并返回
			view.addObject("update", "true");
			view.setViewName("showUser");
			return view;
			
		}else{												//修改了用户名
			User user2=userService.selectUserByUsername(user);   //先查询是否已存在同名用户
			if(user2==null){          //不存在同名用户，更新用户数据并回到信息显示界面
				userService.updateUser(user);
				session.setAttribute("nowUser", user.getUsername());        //把session中的用户名修改
				view.addObject("update", "true");
				view.setViewName("showUser");
				return view;
			}else {				//用户已存在，弹窗提示并返回注册页面
				view.addObject("update", "false");
				view.setViewName("toUpdateUser");
				return view;
			}
		}		
	}
	
	//修改用户密码
	@RequestMapping("updateUserPassword")
	public ModelAndView updateUserPassword(User user,HttpSession session){
		ModelAndView view=new ModelAndView();
		userService.updateUser(user);                   //更新用户信息
		view.addObject("updatePassword", "true");		//显示更新成功
		view.setViewName("showUser");					//跳转回信息界面
		return view;
	}
	
	
	
	//注销登录
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session){
		ModelAndView view=new ModelAndView();
		String isLogin=String.valueOf(session.getAttribute("isLogin"));
		isLogin="false";                               
		session.setAttribute("isLogin",isLogin);			 //更改登录状态
		view.addObject("loginOut","true");               //提示注销成功
		view.setViewName("index.jsp");                       //跳转回首页
		return view;
	}
	
	//管理员修改用户信息
	@RequestMapping("adminUpdateUser")
	public ModelAndView adminUpdateUser(User user,HttpSession session){
		ModelAndView view=new ModelAndView();
		if(user.getUsername().equals(String.valueOf(session.getAttribute("oldUserName")))){   //如果没有修改用户名
			userService.updateUser(user);       //更新并返回信息显示界面
			view.addObject("update", "true");
			view.setViewName("toAdminUser?power="+user.getPower());
			
		}else{												//修改了用户名
			User user2=userService.selectUserByUsername(user);   //先查询是否已存在同名用户
			if(user2==null){          //不存在同名用户，更新用户数据并回到信息显示界面
				userService.updateUser(user);
				view.addObject("update", "true");
				view.setViewName("toAdminUser?power="+user.getPower());
			}else 			//用户已存在，弹窗提示并返回更新界面
				view.addObject("update", "false");
				view.setViewName("toAdminUpdateUser?id="+user.getId());
		}
		
		return view;
	}
	
	//管理员删除用户信息
	@RequestMapping("deleteUser")
	public ModelAndView deleteUser(int id){
		ModelAndView view=new ModelAndView();
		User user=userService.selectUserById(id);      //先将用户信息提取出来后面方便跳转
		userService.deleteUserById(id);      	//删除用户
		view.addObject("delete", "true");
		view.setViewName("toAdminUser?power="+user.getPower());   //跳转到对应的用户信息界面
		return view;
	}
	
	//联系客服
	@RequestMapping("ContactService")
	public ModelAndView ContactService(){
		ModelAndView view=new ModelAndView();
		List<User> users=userService.selectUserByPower(2);   //查询客服列表
		view.addObject("users",users);
		view.setViewName("viewService/contactService.jsp");   //跳转发送界面
		return view;
	}
		
		
	//添加客服
	@RequestMapping("addService")
	public ModelAndView addService(User user){
		User user2=userService.selectUserByUsername(user);   //先查询是否已存在同名客服
		ModelAndView view=new ModelAndView();
		if(user2==null){          //不存在同名客服，插入一条新的客服数据并跳转到客服管理界面
			userService.insertUser(user);   //插入数据
			view.addObject("register","true");
			view.setViewName("toAdminUser?power=2");
			return view;
		}else {				//用户已存在，弹窗提示并返回添加页面
			view.addObject("register", "false");
			view.setViewName("toAddService");
			return view;
		}
	}
}
