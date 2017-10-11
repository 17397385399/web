package com.service;

import com.entity.User;

public interface UserService {

	public User findLoginUser(String username, String password)throws Exception;

	public User findUserById(String id);

	public void update(User user);
	
}
