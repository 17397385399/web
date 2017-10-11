package com.mapper;

import com.entity.Adminmenu;
import java.util.List;

public interface AdminmenuMapper {

	List<Adminmenu> findAdminMenu(Adminmenu adminmenu);

	List<Adminmenu> findAdminMenu2(Adminmenu adminmenu);
}