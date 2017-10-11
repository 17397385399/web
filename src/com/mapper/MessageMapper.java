package com.mapper;

import java.util.List;

import com.entity.Message;

public interface MessageMapper {

	void insert(Message message);

	String selectMessageCount(Message message);

	List<Message> selectMessageList(Message message);

	int total();
}