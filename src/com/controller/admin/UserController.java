package com.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.User;
import com.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 个人信息
	@RequestMapping("/info")
	public ModelAndView info(HttpSession session) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		String id = (String) session.getAttribute("userid");
		User userInfo = userService.findUserById(id);
		modelAndView.addObject("userInfo", userInfo);
		modelAndView.setViewName("admin/userInfo");
		return modelAndView;
	}
	
	// 修改信息
	@RequestMapping("/update")
	public String update(HttpServletRequest request, String id,String name, String loginname, 
			String password, Integer sex,Integer age, String email,String phone) throws Exception {
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setLoginname(loginname);
		user.setPassword(password);
		user.setSex(sex);
		user.setEmail(email);
		user.setPhone(phone);
		user.setAge(age);
		userService.update(user);
		return "forward:info.action";
	}
}
