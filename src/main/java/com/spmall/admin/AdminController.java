package com.spmall.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@RequestMapping(value = "adminMain.do", method = RequestMethod.GET)
	public String adminMain() {
		return "admin/admin/adminMain";
	}
	
	//상품등록 페이지
	@RequestMapping(value = "prs.do", method =RequestMethod.GET)
	public String product_registration(){
		return "admin/admin/prs";
	}
	
	//상품등록 처리
	@RequestMapping(value = "prs.do", method =RequestMethod.POST)
	public String product_registration_POST(MultipartFile file)throws Exception{
		
		return "admin/admin/prs";
	}
}
