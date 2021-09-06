package com.spmall.main;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spmall.common.CustomerUser;

@Controller
@RequestMapping("/main/*")
public class MainController {
	@RequestMapping(value ="/main.do", method = RequestMethod.GET)
	public String membersignupform() {
		return "main/main";
	}
	
	@RequestMapping(value ="/login_permissions_check.do")
	public String loginPermissionsCheck(Authentication authentication) {
		
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
}
