package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Adminmenu;
import com.mapper.AdminmenuMapper;
import com.service.AdminMenuService;
import com.service.VisitlogService;

public class AdminMenuServiceImp implements AdminMenuService {
	@Autowired
	private AdminmenuMapper adminmenumapper;
	
	@Autowired
	private VisitlogService visitlogService;

	@Override
	public List<Adminmenu> findAdminMenu(Adminmenu adminmenu) throws Exception {
		// TODO Auto-generated method stub
		return adminmenumapper.findAdminMenu(adminmenu);
	}
	
	@Override
	public List<Adminmenu> findAdminMenu2(Adminmenu adminmenu) throws Exception {
		// TODO Auto-generated method stub
		return adminmenumapper.findAdminMenu2(adminmenu);
	}

}
