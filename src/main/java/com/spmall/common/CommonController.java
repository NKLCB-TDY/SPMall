package com.spmall.common;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/common/*")
public class CommonController {
	
	@RequestMapping("certificationapproval.do")
	public String certificationApproval(Authentication authentication) {
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		
		if(user.getRoleName().equals("ROLE_ADMIN"))
			return "redirect:/admin/adminMain.do";
		else
			return "redirect:/main/main.do";
	}
}
