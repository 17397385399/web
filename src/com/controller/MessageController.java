package com.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Menu;
import com.entity.Message;
import com.service.MenuService;
import com.service.MessageService;
import com.service.VisitlogService;
import com.util.UUIDTool;

@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private VisitlogService visitlogService;
	
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
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("menulist2", map);
		modelAndView.addObject("logcount", logcount);
		modelAndView.setViewName("front/message");
		return modelAndView;
	}
	
	// 留言
	@RequestMapping("/add")
	public String insert(HttpServletRequest request, String content,String email, String mobile)throws Exception {
		Message message = new Message();
		message.setId(UUIDTool.getUUID());
		message.setContent(content);
		message.setEmail(email);
		message.setMobile(mobile);
		message.setCreatertime(new Date());
		messageService.insert(message);
		return "forward:main.action";
	}
}
