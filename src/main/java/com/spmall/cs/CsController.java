package com.spmall.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cs/*")
public class CsController {
	@RequestMapping(value="/faq.do", method = RequestMethod.GET )
	public String faq() {
		return "cs/faq";
	}
	
	
}
