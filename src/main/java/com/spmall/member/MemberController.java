package com.spmall.member;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService memberService;
	
	
	//회원가입 페이지로 이동
	@RequestMapping(value ="/membersignupform.do", method = RequestMethod.GET)
	public String membersignupform() {
		return "member/membersignupform";
	}
	
	//id 겹치는지 확인
	@RequestMapping(value ="/idcheck.do", method = RequestMethod.POST)
	public void idoverlap(@RequestParam("member_id") String member_id) {
		
		//String a = memberService.idcheck(member_id);
	}
	
	//회원가입 로직 
	@RequestMapping(value="/membersignup.do", method = RequestMethod.POST)
	public ModelAndView membersignup(MemberVO vo) {
		System.out.println(vo.getMember_id());
		System.out.println("기본주소 " + vo.getMember_addr2());
		System.out.println("동 " + vo.getMember_addr3());
		memberService.signupMember(vo);
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	//로그인 폼 이동
	@RequestMapping("/memberloginform.do")
	public String memberloginform() {
		return "memberloginform";
	}
	
	//로그인 처리
	@RequestMapping(value = "/memberlogin.do", method = RequestMethod.POST)
	public void login(@RequestParam("member_id") String member_id,
					  @RequestParam("member_pwd") String member_pwd) throws IOException{
		
	}
	
	//회원 정보 업데이트 폼 이동
	@RequestMapping(value = "/memberupdateform.do", method = RequestMethod.POST)
	public String memberupdateform() {
		return "memberupdateform";
	}
	
	//회원 업데이트 처리
	@RequestMapping(value = "/memberupdate.do", method = RequestMethod.POST)
	public ModelAndView memberupdate(@ModelAttribute("membervo") MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/redirect:/main/main.do");
		
		return mav;
	}
	
	//로그아웃 처리
	@RequestMapping(value = "/memberlogout.do", method = RequestMethod.GET)
	public ModelAndView memberlogout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main/main.do");
		HttpSession session = request.getSession();
		session.removeAttribute("");
		return mav; 
	}
	
	//회원 정보 확인 페이지 이동
	@RequestMapping(value="/memberInfo.do")
	public String memberInfo() {
		//세션 확인 작업 추가해야됨
		return "memberInfo";
	}
	
	//비회원 추가 한다면
	/* public */
	
	
	
}
