package com.service;

import java.util.List;

import com.entity.Dynamic;

public interface DynamicService {
	public List<Dynamic> findDynamicNewsList(Dynamic dynamic) throws Exception;
	public List<Dynamic> findDynamicList(Dynamic dynamic) throws Exception;
	public List<Dynamic> findDynamicInfo(Dynamic dynamic) throws Exception;
	
	/**
	 * 后台使用方法
	 */
	public String selectDynamicCount();
	public List<Dynamic> selectDynamicList(Dynamic dynamic) throws Exception;
	public int total();
	public void delete(String id);
}
