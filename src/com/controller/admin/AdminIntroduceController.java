package com.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Introduce;
import com.service.IntroduceService;

@Controller
@RequestMapping("/admin/adminintroduce")
public class AdminIntroduceController {
	
	@Autowired
	private IntroduceService introduceService;
	
	@RequestMapping("/list")
	public ModelAndView mainlist(HttpServletRequest request)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Introduce introducelist=introduceService.findIntroduce(null);
		modelAndView.addObject("introducelist", introducelist);
		modelAndView.setViewName("admin/introduce");
		return modelAndView;
	}
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request,String id,String content)throws Exception {
		Introduce introduce = new Introduce();
		introduce.setId(id);
		introduce.setContent(content);
		introduceService.updateIntroduce(introduce);
		return "forward:list.action";
	}
	
}
