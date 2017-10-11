package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Message;
import com.mapper.MessageMapper;
import com.service.MessageService;

public class MessageServiceImp implements MessageService{
	
	@Autowired
	private MessageMapper messageMapper;

	@Override
	public void insert(Message message) throws Exception {
		// TODO Auto-generated method stub
		messageMapper.insert(message);
	}

	@Override
	public String selectMessageCount() {
		// TODO Auto-generated method stub
		Message message=new Message();
		return messageMapper.selectMessageCount(message);
	}

	@Override
	public List<Message> selectMessageList(Message message) throws Exception {
		// TODO Auto-generated method stub
		return messageMapper.selectMessageList(message);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return messageMapper.total();
	}
}
