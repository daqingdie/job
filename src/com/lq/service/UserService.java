package com.lq.service;

import java.util.List;

import com.lq.po.User;


public interface UserService {
	
	//ͨ用户登录
	public User selectUserByUsernameAndPassword(User user);
	
	//用户注册
	public int insertUser(User user);
	
	//根据用户id查找
	public User selectUserById(int id);
	
	//根据用户名查找
	public User selectUserByUsername(User user);
	
	//更新用户信息
	public int updateUser(User user);
	
	//根据权限查找
	public  List<User>  selectUserByPower(int power);
	
	//根据id删除用户
	public int deleteUserById(int id);
}
