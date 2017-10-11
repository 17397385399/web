package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Dynamic;
import com.entity.Introduce;
import com.entity.Menu;
import com.service.DynamicService;
import com.service.MenuService;
import com.service.MessageService;
import com.service.VisitlogService;

@Controller
@RequestMapping("/dynamic")
public class DynamicController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private VisitlogService visitlogService;
	
	@Autowired
	private DynamicService DynamicService;
	
	@RequestMapping("/main")
	public ModelAndView mainlist(HttpServletRequest request)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<Menu> menulist = menuService.findMenu(null);
		for (int i = 0; i < menulist.size(); i++) {
			if(menulist.get(i).getIshasson() == 1){
				List<Menu> menulist2 = menuService.findMenu2(menulist.get(i));
				map.put(menulist.get(i).getId(), menulist2);
			}
		}
		String logcount=visitlogService.selectVisitlogCount();
		List<Dynamic> dynamiclist = DynamicService.findDynamicList(null);
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("menulist2", map);
		modelAndView.addObject("logcount", logcount);
		modelAndView.addObject("dynamiclist", dynamiclist);
		modelAndView.setViewName("front/dynamic");
		return modelAndView;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(HttpServletRequest request, String id)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<Menu> menulist = menuService.findMenu(null);
		for (int i = 0; i < menulist.size(); i++) {
			if(menulist.get(i).getIshasson() == 1){
				List<Menu> menulist2 = menuService.findMenu2(menulist.get(i));
				map.put(menulist.get(i).getId(), menulist2);
			}
		}
		String logcount=visitlogService.selectVisitlogCount();
		Dynamic dynamic=new Dynamic();
		dynamic.setId(id);
		List<Dynamic> dynamicinfo = DynamicService.findDynamicInfo(dynamic);
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("menulist2", map);
		modelAndView.addObject("logcount", logcount);
		modelAndView.addObject("dynamicinfo", dynamicinfo);
		modelAndView.setViewName("front/dynamic_info");
		return modelAndView;
	}
	
}
