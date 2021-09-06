package com.spmall.member;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	@RequestMapping(value ="/membersignupform.do", method = RequestMethod.GET)
	public String memberSignupForm() {
		return "member/member/membersignupform";
	}
	
	//id 겹치는지 확인
	@ResponseBody
	@RequestMapping(value ="/idoverlap.do", method = RequestMethod.POST)
	public Map<String, Boolean> idoverlap(@RequestParam(value ="member_id") String member_id) {

		Map<String, Boolean> map = new HashMap<String, Boolean>();
		int result = memberService.idoverlap(member_id);
		System.out.println(result);
		//result   0 가입할수있는 id  
		// 		   1 중복 	  id
		if(result == 0) {
			map.put("result", true);
		}else {
			map.put("result", false);
		}
		return map;
	}
	
	//회원가입 로직 
	@RequestMapping(value="/membersignup.do", method = RequestMethod.POST)
	public String memberSignup(MemberVO vo) {
		logger.info(vo.getMember_addr1());
		memberService.memberSignup(vo);
		return "redirect:/main/main.do";
	}
	
	//로그인 페이지 
	@RequestMapping(value = "/memberloginform.do", method = RequestMethod.GET)
	public String memberLoginForm() {
		return "member/member/memberloginform";
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
	
	//로그인 처리
	@RequestMapping(value = "/memberlogin.do", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, Model model) throws IOException{
		String page = "member/member/memberloginform";
		
		//로그인 정보 
		MemberVO logininfo = memberService.commonLogin(vo);
		if(logininfo != null) {
			//
			session.setAttribute("member", logininfo);
			page ="redirect:/main/login_permissions_check.do";
		}else {
			model.addAttribute("loginFail", true);
		}
		return page;
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
	
	//비회원 추가 한다면
	/* public */
	
	
	
}
