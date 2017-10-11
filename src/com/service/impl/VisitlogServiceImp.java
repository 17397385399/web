package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Visitlog;
import com.entity.Visitlogcount;
import com.mapper.VisitlogMapper;
import com.mapper.VisitlogcountMapper;
import com.service.VisitlogService;

public class VisitlogServiceImp implements VisitlogService {
	

	@Autowired
	private VisitlogMapper visitlogmapper;
	
	@Autowired
	private VisitlogcountMapper visitlogcountmapper;

	@Override
	public void insertVisitlog(Visitlog visitlog) throws Exception {
		// TODO Auto-generated method stub
		int count=Integer.parseInt(selectVisitlogCount())+1;
		visitlogcountmapper.updateVisitlogcount(String.valueOf(count));
		visitlogmapper.insertVisitlog(visitlog);
	}

	@Override
	public String selectVisitlogCount() {
		// TODO Auto-generated method stub
		Visitlogcount visitlogcount=new Visitlogcount();
		return visitlogcountmapper.selectVisitlogCount(visitlogcount);
	}

}
