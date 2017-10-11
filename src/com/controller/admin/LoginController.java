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
@RequestMapping("/admin/login")
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public ModelAndView mainlist(HttpServletRequest request)throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/login");
		return modelAndView;
	}
	
	// 登录
	@RequestMapping("/userLogin")
	public String userLogin(HttpServletRequest request, HttpSession session,String loginname, String password) throws Exception {
			User r = userService.findLoginUser(loginname, password);
			if (r != null) {
				if (r.getActivity() == 0) {
					session.setAttribute("username", r.getName());
					session.setAttribute("loginname", r.getLoginname());
					session.setAttribute("userid", r.getId());
					return "redirect:/admin/main/index.action";
				} else {
					return "redirect:/login.action";
				}
			} else {
				return "redirect:/login.action";
			}
	}
	
	// 退出登录
	@RequestMapping("/userSignout")
	public String userSignout(HttpSession session) throws Exception {
		session.invalidate();
		return "forward:login.action";
	}

}
