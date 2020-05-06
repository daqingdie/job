package com.lq.service;

import java.util.List;

import com.lq.po.News;

public interface NewsService {
	
	//查看收件箱
	List<News> selectNewsByRname(String rName);
	
	//查看发件箱
	List<News> selectNewsBySname(String sName);
	
	//查看消息详情
	News selectNewsById(int id);
	
	//发送消息
	int insertNews(News news);
	
	//更新消息
	int updateNews(News news);



	

}
