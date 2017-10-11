package com.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Dynamic;
import com.service.DynamicService;

@Controller
@RequestMapping("/admin/admindynamic")
public class AdminDynamicController {
	
	@Autowired
	private DynamicService dynamicService;
	
	@RequestMapping("/list")
	public ModelAndView mainlist(HttpServletRequest request,Integer start)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Dynamic dynamic=new Dynamic();
		dynamic.setStart(start);
		
		List<Dynamic> dynamiclist=dynamicService.selectDynamicList(dynamic);
		int total = dynamicService.total();
        
		dynamic.caculateLast(total);
		modelAndView.addObject("dynamiclist", dynamiclist);
		modelAndView.addObject("start", start);
		modelAndView.addObject("count", dynamic.getCount());
		modelAndView.addObject("last", total);
		modelAndView.setViewName("admin/dynamic");
		return modelAndView;
	}
	
	// 删除
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, String id)throws Exception {
		dynamicService.delete(id);
		return "forward:list.action?start=0";
	}
}
