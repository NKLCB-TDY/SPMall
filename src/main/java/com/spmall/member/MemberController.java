package com.spmall.member;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.CustomerUser;



@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService memberService;
	
	
	//회원가입 페이지로 이동
	@RequestMapping(value ="/memberJoin.do", method = RequestMethod.GET)
	public String memberJoin(Authentication authentication) {
		
		//로그인 상태시 접근막음
		if(authentication != null) {
			return "redirect:/main/main.do";
		}

		return "member/memberJoin";
	}
	
	//회원가입 로직 
	@RequestMapping(value="/memberJoin.do", method = RequestMethod.POST)
	public String memberJoin(MemberVO vo) {
		memberService.memberJoin(vo);
		return "redirect:/main/mainLogin.do";
	}
	
	//id 겹치는지 확인
	@ResponseBody
	@RequestMapping(value ="/idoverlap.do", method = RequestMethod.POST)
	public Map<String, Boolean> idoverlap(@RequestParam(value ="member_id") String member_id) {

		Map<String, Boolean> map = new HashMap<String, Boolean>();
		int result = memberService.idoverlap(member_id);
		
		//result   0 가입할수있는 id  
		// 		   1 중복 	  id
		if(result == 0) {
			map.put("result", true);
		}else {
			map.put("result", false);
		}
		return map;
	}
	

	

	
	//회원 정보 & 수정 페이지 처리해야함!!!!!
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.GET)
	public ModelAndView memberUpdate(ModelAndView mv, Authentication authentication) {
		CustomerUser user = (CustomerUser) authentication.getPrincipal();
		String member_id = user.getUsername();
		
		mv.addObject("MemberVO", memberService.memberInfo(member_id));
		mv.setViewName("member/member/memberUpdate");
		return mv;
	}
	
	//회원정보 수정 처리
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.POST)
	public String memberUpdate(MemberVO vo) {
		logger.info("회원정보수정");
		memberService.memberUpdate(vo);
		return "redirect:/main/main.do";
	}
	
	
	//////////////////////////////////////////////////////
	
	//로그인 처리, 로그아웃 처리는 spring시큐리티로 처리, 비회원 기능추가는 메인 기능완료시 추가
}
