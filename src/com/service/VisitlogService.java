package com.service;

import com.entity.Visitlog;

public interface VisitlogService {

	void insertVisitlog(Visitlog visitlog) throws Exception;
	String selectVisitlogCount();
}
