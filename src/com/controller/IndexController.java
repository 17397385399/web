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

import com.entity.Dynamic;
import com.entity.Introduce;
import com.entity.Menu;
import com.entity.Photos;
import com.entity.Video;
import com.entity.Visitlog;
import com.service.BannerService;
import com.service.DynamicService;
import com.service.IntroduceService;
import com.service.MenuService;
import com.service.PhotosService;
import com.service.VideoService;
import com.service.VisitlogService;
import com.util.UUIDTool;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private BannerService bannerService;
	
	@Autowired
	private VisitlogService visitlogService;
	
	@Autowired
	private PhotosService photosService;
	
	@Autowired
	private DynamicService dynamicService;
	
	@Autowired
	private VideoService videoService;
	
	@Autowired
	private IntroduceService introduceService;
	
	@RequestMapping("/main")
	public ModelAndView mainlist(HttpServletRequest request)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>();
		
		Visitlog visitlog=new Visitlog();
		visitlog.setId(UUIDTool.getUUID());
		visitlog.setIp(request.getRemoteAddr());
		visitlog.setVisittime(new Date());
		visitlogService.insertVisitlog(visitlog);
		
		List<Menu> menulist = menuService.findMenu(null);
		for (int i = 0; i < menulist.size(); i++) {
			if(menulist.get(i).getIshasson() == 1){
				List<Menu> menulist2 = menuService.findMenu2(menulist.get(i));
				map.put(menulist.get(i).getId(), menulist2);
			}
		}
		String logcount=visitlogService.selectVisitlogCount();
//		List<Banner> bannernewslist = bannerService.findBannerNewsList(null);
		List<Photos> photoslist = photosService.findPhotos(null);
		List<Dynamic> dynamiclist = dynamicService.findDynamicNewsList(null);
		List<Video> videolist = videoService.findVideoNewsList(null);
		Introduce introducelist = introduceService.findIntroduce(null);
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("menulist2", map);
//		modelAndView.addObject("bannernewslist", bannernewslist);
		modelAndView.addObject("logcount", logcount);
		modelAndView.addObject("photoslist", photoslist);
		modelAndView.addObject("dynamiclist", dynamiclist);
		modelAndView.addObject("videolist", videolist);
		modelAndView.addObject("introducelist", introducelist);
		modelAndView.setViewName("front/index");
		return modelAndView;
	}
	
}
