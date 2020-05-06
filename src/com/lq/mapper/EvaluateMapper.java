package com.lq.mapper;



import java.util.List;

import com.lq.po.Evaluate;

public interface EvaluateMapper {
	int deleteByPrimaryKey(Integer id);

    int insert(Evaluate record);

    int insertSelective(Evaluate record);

    Evaluate selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Evaluate record);

    int updateByPrimaryKey(Evaluate record);
    
    //查询一个用户的有关评价
    List<Evaluate> selectByName(String name);
    
    //查询所有评价
    List<Evaluate> selectAll();
    
}