package com.spmall.main;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
				System.out.println("roleName¿∫ " + roleName);
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
}
