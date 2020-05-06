package com.lq.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lq.mapper.EvaluateMapper;
import com.lq.mapper.NewsMapper;
import com.lq.mapper.UserMapper;
import com.lq.po.Evaluate;
import com.lq.po.News;
import com.lq.po.User;
import com.lq.service.NewsService;
import com.lq.service.UserService;
import com.lq.service.impl.UserServiceImpl;




public class DaoTest {
	ApplicationContext context = null;
	User user;
	
	@Before
	public void init(){
		context = new ClassPathXmlApplicationContext("classpath:spring/spring-dao.xml");
	}
	
	@Test
	public void testSelectByPrimaryKey(){
		UserMapper userMapper = (UserMapper) context.getBean("userMapper");
		User user = userMapper.selectByPrimaryKey(1);
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		//System.out.println(user.getSex());
	}
	
	
	@Test
	public void testService(){
		context=new ClassPathXmlApplicationContext("classpath:spring/spring-service.xml");
		UserService uService=(UserService)context.getBean("userService");
		uService.selectUserById(1);
	}
	
	//测试查询消息
	@Test
	public void queryNews(){
		NewsMapper newsMapper=(NewsMapper)context.getBean("newsMapper");
		News news=newsMapper.selectByPrimaryKey(2);
		System.out.println(news.getTitle());
		System.out.println(news.getMessage());
	}
	
	//测试插入消息
	
	@Test
	public void insertNews(){
		NewsMapper newsMapper=(NewsMapper)context.getBean("newsMapper");
		News news=new News();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        news.setMessage("测试内容");
        news.setRname("招聘者测试员");
        news.setTime(new Date());
        news.setSname("求职者招聘员");
        news.setTitle("测试标题");
        newsMapper.insert(news);

	}
	
	//测试更新消息
	@Test
	public void updateNews(){
		NewsMapper newsMapper=(NewsMapper)context.getBean("newsMapper");
		News news=new News();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        news.setTime(new Date());
        news.setId(2);
        newsMapper.updateByPrimaryKeySelective(news);

	}
	
	//测试删除消息
	@Test
	public void delNews(){
		EvaluateMapper eMapper=(EvaluateMapper)context.getBean("evaluateMapper");
		Evaluate evaluate=eMapper.selectByPrimaryKey(1);
		System.out.println(evaluate.getTime().toString());
		evaluate.setTime(new Date());
		eMapper.updateByPrimaryKeySelective(evaluate);
		System.out.println(evaluate.getTime().toString());

	}

	
}
