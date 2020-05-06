package com.lq.mapper;

import java.util.List;


import com.lq.po.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
  //根据收件人查询消息
    List<News> selectByRname(String rName);
    
  //根据发件人查询消息
    List<News> selectBySname(String sName);
    
}