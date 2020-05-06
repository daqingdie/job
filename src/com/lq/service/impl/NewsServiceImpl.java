package com.lq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lq.mapper.NewsMapper;
import com.lq.po.News;
import com.lq.service.NewsService;

public  class NewsServiceImpl implements NewsService{
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public List<News> selectNewsByRname(String rName) {
		// TODO Auto-generated method stub
		return newsMapper.selectByRname(rName);
	}

	@Override
	public News selectNewsById(int id) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertNews(News news) {
		// TODO Auto-generated method stub
		return newsMapper.insert(news);
	}

	@Override
	public List<News> selectNewsBySname(String sName) {
		// TODO Auto-generated method stub
		return newsMapper.selectBySname(sName);
	}

	@Override
	public int updateNews(News news) {
		// TODO Auto-generated method stub
		return newsMapper.updateByPrimaryKey(news);
	}



}
