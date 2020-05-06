package com.lq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lq.mapper.UserMapper;
import com.lq.po.User;
import com.lq.service.UserService;



public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper; 
	
	//根据用户名和密码查找用户
	@Override
	public User selectUserByUsernameAndPassword(User user) {
		User u = userMapper.selectUserByUsernameAndPassword(user);
		return u;
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		int u=userMapper.insert(user);
		return u;
	}

	@Override
	public User selectUserById(int id) {
		// TODO Auto-generated method stub
		System.out.println("测试");
		User user=userMapper.selectByPrimaryKey(id);
		return user;
	}

	@Override
	public User selectUserByUsername(User user) {
		// TODO Auto-generated method stub
		User user2=userMapper.selectUserByUsername(user);
		return user2;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		int u=userMapper.updateByPrimaryKeySelective(user);
		return u;
	}

	@Override
	public List<User> selectUserByPower(int power) {
		// TODO Auto-generated method stub
		List<User> users=userMapper.selectUserByPower(power);
		return users;
	}

	@Override
	public int deleteUserById(int id) {
		// TODO Auto-generated method stub
		int u=userMapper.deleteByPrimaryKey(id);
		return u;
	}

	
	

}
