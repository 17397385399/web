package com.mapper;

import com.entity.Dynamic;

import java.util.List;

public interface DynamicMapper {
	List<Dynamic> findDynamicNewsList(Dynamic dynamic);

	List<Dynamic> findDynamicList(Dynamic dynamic);

	List<Dynamic> findDynamicInfo(Dynamic dynamic);

	String selectDynamicCount(Dynamic dynamic);

	List<Dynamic> selectDynamicList(Dynamic dynamic);

	int total();

	void delete(String id);
}