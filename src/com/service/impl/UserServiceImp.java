package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.User;
import com.mapper.UserMapper;
import com.service.UserService;

public class UserServiceImp implements UserService {

	@Autowired
	private UserMapper usermapper;

	@Override
	public User findLoginUser(String loginname, String password)throws Exception {
		User user = new User();
		user.setLoginname(loginname);
		user.setPassword(password);
		return usermapper.findLoginUser(user);
	}

	@Override
	public User findUserById(String id) {
		// TODO Auto-generated method stub
		return usermapper.findUserById(id);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		usermapper.updateByPrimaryKeySelective(user);
	}

}
