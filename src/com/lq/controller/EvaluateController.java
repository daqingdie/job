package com.lq.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lq.po.Evaluate;
import com.lq.service.EvaluateService;

@Controller
public class EvaluateController {
	
	@Autowired
	EvaluateService evaluateService;
	
	//跳转到评价界面
		@RequestMapping("toEvaluate")
		public ModelAndView toEvaluate(HttpSession session,int action){
			ModelAndView view=new ModelAndView();
			String name=String.valueOf(session.getAttribute("nowUser"));  //提取用户名
			List<Evaluate> evaluates=evaluateService.selectEvaluateByName(name);
			List<Evaluate> evaluates2=new ArrayList<Evaluate>();          //最终的数组
			switch (action) {                               //根据用户的选择来对数组进行筛选
			
			case 1:     //查看所有评价
				evaluates2.addAll(evaluates);
				break;
			case 2:     //查看待评价
				for(Evaluate evaluate:evaluates){
					if(evaluate.getStatus().equals("1"))
						evaluates2.add(evaluate);
				}
				break;
			case 3:		//已评价
				for(Evaluate evaluate:evaluates){
					if(evaluate.getStatus().equals("2"))
						evaluates2.add(evaluate);
				}
				break;
			case 4:    //收到的评价
				for(Evaluate evaluate:evaluates){
					if(evaluate.getRname().equals(name)&&evaluate.getStatus().equals("2"))
						evaluates2.add(evaluate);
				}
				break;
			case 5:		//发出的评价
				for(Evaluate evaluate:evaluates){
					if(evaluate.getSname().equals(name)&&evaluate.getStatus().equals("2"))
						evaluates2.add(evaluate);
				}
				break;
			default:
				break;
			}
			view.addObject("evaluates",evaluates2);
			view.addObject("action", action);
			/*System.out.println(evaluate.getTime().toString());
			DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；  
	        String formatDate = dFormat.format(evaluate.getTime());  
	        System.out.println(formatDate);*/
			view.setViewName("viewEvaluate/userEvaluate.jsp");		//跳转到评价界面
			return view;
		}
		
		
		//用户请求修改评价
		@RequestMapping("toUpdateEvaluate")
		public ModelAndView toUpdateEvaluate(int id){
			ModelAndView view=new ModelAndView();
			Evaluate evaluate=evaluateService.selectById(id);
			view.addObject("e",evaluate);
			view.setViewName("viewEvaluate/updateEvaluate.jsp");		//跳转到评价修改界面
			return view;
		}
		
		//用户修改评价
		@RequestMapping("updateEvaluate")
		public ModelAndView updateEvaluate(int id,String message){
			ModelAndView view=new ModelAndView();
			Evaluate evaluate=evaluateService.selectById(id);    //查询原本信息
			evaluate.setMessage(message);						//封装评价内容
			evaluate.setTime(new Date());						//封装修改时间
			evaluate.setStatus("2");                           //封装评价动态
			evaluateService.updateEvaluate(evaluate);    //更新数据
			view.addObject("update", "true");  				//提示更新成功
			view.setViewName("toEvaluate?action=5");		//跳转到发出的评价修改界面
			return view;
		}
		
		//管理员管理评价
		@RequestMapping("adminEvaluate")
		public ModelAndView adminEvaluate(){
			ModelAndView view=new ModelAndView();
			List<Evaluate> evaluates=evaluateService.selectAllEvaluates(); //查询所有的评价
			List<Evaluate> evaluates2=new ArrayList<Evaluate>();          //最终的数据
			for(Evaluate evaluate:evaluates){
				if(evaluate.getStatus().equals("2"))      //剔除待评价状态的评价
					evaluates2.add(evaluate);
			}
			view.addObject("evaluates", evaluates2);      //封装数据
			view.setViewName("viewAdmin/adminEvaluate.jsp");   //跳转到管理员管理评价界面
			return view;
		}
		
		//管理员删除评价
		@RequestMapping("adminDeleteEvaluate")
		public ModelAndView adminDeleteEvaluate(int id){
			ModelAndView view=new ModelAndView();
			evaluateService.deleteById(id);        //删除一条评价
			view.addObject("delete","true" );      //提示删除成功
			view.setViewName("adminEvaluate");   //跳转到管理员管理评价界面
			return view;
		}
}
