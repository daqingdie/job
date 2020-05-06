package com.lq.service;

import java.util.List;

import com.lq.po.Evaluate;

public interface EvaluateService {
	
	
	//根据id查询评价
	public Evaluate selectById(int id);
	
	//查询有关该用户的评价
	public List<Evaluate> selectEvaluateByName(String name);
	
	//更新评价信息
	public int updateEvaluate(Evaluate evaluate);
	
	//查询所有评价
	public List<Evaluate> selectAllEvaluates();
	
	//删除一条评价
	public int deleteById(int id);

}
