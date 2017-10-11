package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Menu;
import com.entity.Photos;
import com.entity.PhotosDto;
import com.service.AlbumService;
import com.service.MenuService;
import com.service.MessageService;
import com.service.PhotosService;
import com.service.VisitlogService;
import com.util.Page;

@Controller
@RequestMapping("/photos")
public class PhotosController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private VisitlogService visitlogService;
	
	@Autowired
	private AlbumService albumService;
	
	@Autowired
	private PhotosService photosService;
	
	@RequestMapping("/main")
	public ModelAndView mainlist(HttpServletRequest request,String albumid,Integer start)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>();
		Page page=new Page();
		PhotosDto photosDto=new PhotosDto();
		photosDto.setStart(start);
		photosDto.setAlbumid(albumid);
		photosDto.setCount(page.getCount());
		
		List<Menu> menulist = menuService.findMenu(null);
		for (int i = 0; i < menulist.size(); i++) {
			if(menulist.get(i).getIshasson() == 1){
				List<Menu> menulist2 = menuService.findMenu2(menulist.get(i));
				map.put(menulist.get(i).getId(), menulist2);
			}
		}
		String logcount=visitlogService.selectVisitlogCount();
		List<Photos> photoslist = photosService.findPhotosList(photosDto);
		int total = photosService.total(albumid);
         
	    page.caculateLast(total);
	    
		modelAndView.addObject("menulist", menulist);
		modelAndView.addObject("menulist2", map);
		modelAndView.addObject("logcount", logcount);
		modelAndView.addObject("photoslist", photoslist);
		modelAndView.addObject("start", start);
		modelAndView.addObject("count", page.getCount());
		modelAndView.addObject("last", total);
		modelAndView.setViewName("front/photos");
		return modelAndView;
	}
	
}
