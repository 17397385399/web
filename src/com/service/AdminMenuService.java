package com.service;

import java.util.List;

import com.entity.Adminmenu;

public interface AdminMenuService {
	public List<Adminmenu> findAdminMenu(Adminmenu adminmenu) throws Exception;
	public List<Adminmenu> findAdminMenu2(Adminmenu adminmenu) throws Exception;
}
