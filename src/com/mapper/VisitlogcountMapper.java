package com.mapper;

import com.entity.Visitlogcount;

public interface VisitlogcountMapper {
	String selectVisitlogCount(Visitlogcount visitlogcount);

	void updateVisitlogcount(String counts);
}