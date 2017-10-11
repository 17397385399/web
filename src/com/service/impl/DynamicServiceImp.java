package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Dynamic;
import com.mapper.DynamicMapper;
import com.service.DynamicService;

public class DynamicServiceImp implements DynamicService{
	
	@Autowired
	private DynamicMapper dynamicmapper;

	@Override
	public List<Dynamic> findDynamicNewsList(Dynamic dynamic) throws Exception {
		// TODO Auto-generated method stub
		return dynamicmapper.findDynamicNewsList(dynamic);
	}
	
	@Override
	public List<Dynamic> findDynamicList(Dynamic dynamic) throws Exception {
		// TODO Auto-generated method stub
		return dynamicmapper.findDynamicList(dynamic);
	}

	@Override
	public List<Dynamic> findDynamicInfo(Dynamic dynamic) throws Exception {
		// TODO Auto-generated method stub
		return dynamicmapper.findDynamicInfo(dynamic);
	}
	
	@Override
	public String selectDynamicCount() {
		// TODO Auto-generated method stub
		Dynamic dynamic=new Dynamic();
		return dynamicmapper.selectDynamicCount(dynamic);
	}

	@Override
	public List<Dynamic> selectDynamicList(Dynamic dynamic) throws Exception {
		// TODO Auto-generated method stub
		return dynamicmapper.selectDynamicList(dynamic);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return dynamicmapper.total();
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		dynamicmapper.delete(id);
	}

}
