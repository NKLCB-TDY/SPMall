package com.spmall.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	@RequestMapping(value ="/membermypage.do", method = RequestMethod.GET)
	public String memberMyPage() {
		return "member/mypage/memberMyPage";
	}
}
