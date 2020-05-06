package com.lq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lq.mapper.EvaluateMapper;
import com.lq.po.Evaluate;
import com.lq.service.EvaluateService;

public class EvaluateServiceImpl implements EvaluateService {

	@Autowired
	private EvaluateMapper evaluateMapper;
	

	@Override
	public Evaluate selectById(int id) {
		return evaluateMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Evaluate> selectEvaluateByName(String name) {
		// TODO Auto-generated method stub
		return evaluateMapper.selectByName(name);
	}

	@Override
	public int updateEvaluate(Evaluate evaluate) {
		// TODO Auto-generated method stub
		return evaluateMapper.updateByPrimaryKeySelective(evaluate);
	}

	@Override
	public List<Evaluate> selectAllEvaluates() {
		// TODO Auto-generated method stub
		return evaluateMapper.selectAll();
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return evaluateMapper.deleteByPrimaryKey(id);
	}

}
