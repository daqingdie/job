package com.lq.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lq.po.News;
import com.lq.service.NewsService;

@Controller
public class NewsController {
	@Autowired
	public NewsService newsService;
	
	
	
	//发送消息
	@RequestMapping("sentNews")
	public ModelAndView sentNews(News news,HttpSession session){
		ModelAndView view=new ModelAndView();
		news.setSname(String.valueOf(session.getAttribute("nowUser")));    //获取发件人
		news.setTime(new Date());
		news.setStatus("收发");
		newsService.insertNews(news);                          //插入消息
		view.addObject("isSent", "true");
		view.setViewName("showSentNews");	//跳转到发件箱界面
		return view;
	}
	
	//显示收件箱
	@RequestMapping("showNews")
	public ModelAndView showNews(HttpSession session){
		ModelAndView view=new ModelAndView();
		List<News> news_1=newsService.selectNewsByRname(String.valueOf(session.getAttribute("nowUser")));  //查询该用户收到的消息列表
		List<News> news_2=new ArrayList<News>();				//真正显示的消息
		for(News news:news_1){                               //筛选数据
			if(news.getStatus().equals("收发")||news.getStatus().equals("收"))
				news_2.add(news);
				//System.out.println(news.getStatus());
		}
		view.addObject("newsList", news_2);			//封装数据
		view.setViewName("viewNews/userNews.jsp");	//跳转到收件箱页面
		return view;
	}
	
	//显示消息详情
	@RequestMapping("showNewsDetail")
	public ModelAndView showNewsDetail(int id,HttpSession session){
		ModelAndView view=new ModelAndView();
		News news=newsService.selectNewsById(id);        //查询消息
		session.setAttribute("thisNews", news);				//把消息放进session
		view.setViewName("viewNews/newsDetail.jsp");	//跳转到消息详情界面
		return view;
	}

	
	//回复消息
	@RequestMapping("replyNews")
	public ModelAndView replyNews(HttpSession session,News news){
		News oldNews=(News)session.getAttribute("thisNews");   //从旧消息中获取收发用户
		news.setRname(oldNews.getSname());
		news.setSname(oldNews.getRname());
		news.setTime(new Date());
		news.setStatus("收发");
		newsService.insertNews(news);
		ModelAndView view=new ModelAndView();
		view.addObject("isSent","true");
		view.setViewName("showNews");	//跳转到消息详情界面
		return view;
	}
	
	
	//删除消息
	@RequestMapping("deleteNews")
	public ModelAndView deleteNews(int id,HttpSession session){
		ModelAndView view=new ModelAndView();
		News news=newsService.selectNewsById(id);        //查询消息
		if(news.getRname().equals(session.getAttribute("nowUser"))) { 			//当用户是收件人时
			if(news.getStatus().equals("收发"))                //修改消息状态
				news.setStatus("发");
			else if(news.getStatus().equals("收"))
				news.setStatus("无");
			newsService.updateNews(news);
			view.setViewName("showNews");	//跳回收件箱界面
		}else if(news.getSname().equals(session.getAttribute("nowUser"))){		//当用户是发件人时
			if(news.getStatus().equals("收发"))                //修改消息状态
			news.setStatus("收");
			else if(news.getStatus().equals("发"))
				news.setStatus("无");
			newsService.updateNews(news);
			view.setViewName("showSentNews");	//跳回发件箱界面
				
		}
		view.addObject("delete","true");
		return view;
	}
	
	//查看发件箱
	@RequestMapping("showSentNews")
	public ModelAndView showSentNews(HttpSession session){
		ModelAndView view=new ModelAndView();
		List<News> news_1=newsService.selectNewsBySname(String.valueOf(session.getAttribute("nowUser")));  //查询该用户收到的消息列表
		List<News> news_2=new ArrayList<News>();				//真正显示的消息
		for(News news:news_1){                               //筛选数据
			if(news.getStatus().equals("收发")||news.getStatus().equals("发"))
				news_2.add(news);
		}
		view.addObject("newsList", news_2);			//封装数据
		view.setViewName("viewNews/userSentNews.jsp");	//跳转到发件箱页面
		return view;
	}
	
	
	
	
	
}
