package com.service;

import java.util.List;

import com.entity.Menu;

public interface MenuService {
	public List<Menu> findMenu(Menu menu) throws Exception;
	public List<Menu> findMenu2(Menu menu) throws Exception;
	public List<Menu> selectMenuList(Menu menu);
	public int total();
}
