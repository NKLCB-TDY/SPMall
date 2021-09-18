package com.spmall.main;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spmall.common.CustomerUser;

@Controller
@RequestMapping("/main/*")
public class MainController {
	
	@RequestMapping("/main.do")
	public String Main(Authentication authentication) {
		String page = "member/main/main";
		if(authentication != null) {

			CustomerUser user = (CustomerUser)authentication.getPrincipal();
			for(GrantedAuthority item : user.getAuthorities()) {
				
				String roleName = item.getAuthority();
				switch(roleName) {
				case "ROLE_USER":
					page = "member/main/main";
					break;
				case "ROLE_ADMIN":
					page = "admin/admin/adminMain";
					break;
				
				default:
					break;
				}
			}
		}
		return page;
	}
	
	
	//로그인 페이지 
	@RequestMapping(value = "/mainLogin.do", method = RequestMethod.GET)
	public String mainLogin() {
		return "member/main/mainLogin";
	}
}
