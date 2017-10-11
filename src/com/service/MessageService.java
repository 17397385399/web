package com.service;

import java.util.List;

import com.entity.Message;


public interface MessageService {
	public void insert(Message message) throws Exception;

	
	/**
	 * 后台使用方法
	 */
	public String selectMessageCount();
	public List<Message> selectMessageList(Message message) throws Exception;
	public int total();
}
