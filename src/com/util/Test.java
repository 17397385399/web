package com.util;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Visitlog;
import com.mapper.VisitlogcountMapper;
import com.service.VisitlogService;

public class Test {
	
	@Autowired
	private VisitlogService visitlogService;
	
	@Autowired
	private VisitlogcountMapper visitlogcountmapper;
	
	public void updateVisitlog(Visitlog visitlog) throws Exception {
		// TODO Auto-generated method stub
		int count=Integer.parseInt(visitlogService.selectVisitlogCount())+1;
		visitlogcountmapper.updateVisitlogcount(String.valueOf(count));
	}
}
