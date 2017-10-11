package com.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Introduce;
import com.entity.Adminmenu;
import com.service.AdminMenuService;
import com.service.DynamicService;
import com.service.IntroduceService;
import com.service.MessageService;
import com.service.PhotosService;
import com.service.VideoService;
import com.service.VisitlogService;

@Controller
@RequestMapping("/admin/main")
public class MainController {
	
	@Autowired
	private AdminMenuService adminmenuService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private VisitlogService visitlogService;
	
	@Autowired
	private IntroduceService introduceService;
	
	@Autowired
	private DynamicService dynamicService;
	
	@Autowired
	private VideoService videoService;
	
	@Autowired
	private PhotosService photosService;
	
	@RequestMapping("/index")
	public ModelAndView indexlist(HttpServletRequest request)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<Adminmenu> adminmenulist = adminmenuService.findAdminMenu(null);
		for (int i = 0; i < adminmenulist.size(); i++) {
			if(adminmenulist.get(i).getIshasson() == 1){
				List<Adminmenu> adminmenulist2 = adminmenuService.findAdminMenu2(adminmenulist.get(i));
				map.put(adminmenulist.get(i).getId(), adminmenulist2);
			}
		}
		Introduce introducelist = introduceService.findIntroduce(null);
		modelAndView.addObject("adminmenulist", adminmenulist);
		modelAndView.addObject("adminmenulist2", map);
		modelAndView.addObject("introducelist", introducelist);
		
		modelAndView.setViewName("admin/index");
		return modelAndView;
	}
	
	@RequestMapping("/main")
	public ModelAndView mainlist(HttpServletRequest request)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		String dynamiccount=dynamicService.selectDynamicCount();
		String videocount=videoService.selectVideoCount();
		String photoscount=photosService.selectPhotosCount();
		String messagecount=messageService.selectMessageCount();
		String logcount=visitlogService.selectVisitlogCount();
		Introduce introducelist = introduceService.findIntroduce(null);
		modelAndView.addObject("logcount", logcount);
		modelAndView.addObject("dynamiccount", dynamiccount);
		modelAndView.addObject("videocount", videocount);
		modelAndView.addObject("photoscount", photoscount);
		modelAndView.addObject("messagecount", messagecount);
		modelAndView.addObject("introducelist", introducelist);
		modelAndView.setViewName("admin/main");
		return modelAndView;
	}
	
}
