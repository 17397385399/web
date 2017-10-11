package com.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Menu;
import com.service.MenuService;

@Controller
@RequestMapping("/admin/menu")
public class MenuController {
	
	@Autowired
	private MenuService MenuService;
	
	@RequestMapping("/list")
	public ModelAndView mainlist(HttpServletRequest request,Integer start)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Menu menu=new Menu();
		menu.setStart(start);
		
		List<Menu> menulist=MenuService.selectMenuList(menu);
		int total = MenuService.total();
        
		menu.caculateLast(total);
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("start", start);
		modelAndView.addObject("count", menu.getCount());
		modelAndView.addObject("last", total);
		modelAndView.setViewName("admin/menu");
		return modelAndView;
	}
	
}
