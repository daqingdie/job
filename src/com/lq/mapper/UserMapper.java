package com.lq.mapper;



import java.util.List;

import com.lq.po.User;
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectUserByUsernameAndPassword(User user);
    
    User selectUserByUsername(User user);
    
    List<User>  selectUserByPower(int power);
    
    
}