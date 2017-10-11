package com.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Message;
import com.service.MessageService;

@Controller
@RequestMapping("/admin/adminmessage")
public class AdminMessageController {
	
	@Autowired
	private MessageService messageService;
	
	@RequestMapping("/list")
	public ModelAndView mainlist(HttpServletRequest request,Integer start)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Message message=new Message();
		message.setStart(start);
		
		List<Message> messagelist=messageService.selectMessageList(message);
		int total = messageService.total();
        
		message.caculateLast(total);
		modelAndView.addObject("messagelist", messagelist);
		modelAndView.addObject("start", start);
		modelAndView.addObject("count", message.getCount());
		modelAndView.addObject("last", total);
		modelAndView.setViewName("admin/message");
		return modelAndView;
	}
	
}
