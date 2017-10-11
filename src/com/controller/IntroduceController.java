package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Introduce;
import com.entity.Menu;
import com.service.DynamicService;
import com.service.IntroduceService;
import com.service.MenuService;
import com.service.MessageService;
import com.service.PhotosService;
import com.service.VideoService;
import com.service.VisitlogService;

@Controller
@RequestMapping("/introduce")
public class IntroduceController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private VisitlogService visitlogService;
	
	@Autowired
	private IntroduceService introduceService;
	
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
		Introduce introducelist = introduceService.findIntroduce(null);
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("menulist2", map);
		modelAndView.addObject("introducelist", introducelist);
		modelAndView.addObject("logcount", logcount);
		modelAndView.setViewName("front/introduce");
		return modelAndView;
	}
	
}
