package com.spmall.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@RequestMapping(value = "adminMain.do", method = RequestMethod.GET)
	public String adminMain() {
		return "admin/admin/adminMain";
	}
	
	//상품등록
	@RequestMapping(value = "prs.do", method =RequestMethod.GET)
	public String product_registration(){
		return "admin/admin/prs";
	}
}
