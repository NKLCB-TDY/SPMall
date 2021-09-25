package com.spmall.member;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService memberService;
	
	
	//회원가입 페이지로 이동
	@RequestMapping(value ="/memberJoin.do", method = RequestMethod.GET)
	public String memberJoin() {
		return "member/member/memberJoin";
	}
	
	//회원가입 로직 
	@RequestMapping(value="/memberJoin.do", method = RequestMethod.POST)
	public String memberJoin(MemberVO vo) {
		memberService.memberJoin(vo);
		return "redirect:/main/main.do";
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
	

	

	
	//회원 정보 & 수정 페이지
	@RequestMapping(value = "/memberinfoform.do", method = RequestMethod.GET)
	public ModelAndView memberInfoForm() {
		//로그인처리를 먼저해야 개발가능 로그인한 아이디 값을 가져와야하기에..
		String member_id = "sdfsdfsdf"; //임시id
		ModelAndView mv = new ModelAndView();
		mv.addObject(memberService.memberInfo(member_id));
		mv.setViewName("member/member/memberinfoform");
		return mv;
	}
	
	//회원정보 수정 처리
	@RequestMapping(value = "/memberupdate.do", method = RequestMethod.POST)
	public String memberUpdate(MemberVO vo) {
		logger.info("회원정보수정");
		System.out.println("NONONONO");
		memberService.memberUpdate(vo);
		return "redirect:/main/main.do";
	}
	
	
	//////////////////////////////////////////////////////
	
	//로그인 처리, 로그아웃 처리는 spring시큐리티로 처리, 비회원 기능추가는 메인 기능완료시 추가
}
