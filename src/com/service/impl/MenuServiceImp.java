package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Menu;
import com.mapper.MenuMapper;
import com.service.MenuService;
import com.service.VisitlogService;

public class MenuServiceImp implements MenuService {
	@Autowired
	private MenuMapper menumapper;
	
	@Autowired
	private VisitlogService visitlogService;

	@Override
	public List<Menu> findMenu(Menu menu) throws Exception {
		// TODO Auto-generated method stub
		return menumapper.findMenu(menu);
	}
	
	@Override
	public List<Menu> findMenu2(Menu menu) throws Exception {
		// TODO Auto-generated method stub
		return menumapper.findMenu2(menu);
	}

	@Override
	public List<Menu> selectMenuList(Menu menu) {
		// TODO Auto-generated method stub
		return menumapper.selectMenuList(menu);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return menumapper.total();
	}

}
