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
	
	
	//ȸ������ �������� �̵�
	@RequestMapping(value ="/membersignupform.do", method = RequestMethod.GET)
	public String membersignupform() {
		return "member/membersignupform";
	}
	
	//id ��ġ���� Ȯ��
	@RequestMapping(value ="/idcheck.do", method = RequestMethod.POST)
	public void idoverlap(@RequestParam("member_id") String member_id) {
		
		//String a = memberService.idcheck(member_id);
	}
	
	//ȸ������ ���� 
	@RequestMapping(value="/membersignup.do", method = RequestMethod.POST)
	public ModelAndView membersignup(MemberVO vo) {
		System.out.println(vo.getMember_id());
		System.out.println("�⺻�ּ� " + vo.getMember_addr2());
		System.out.println("�� " + vo.getMember_addr3());
		memberService.signupMember(vo);
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	//�α��� �� �̵�
	@RequestMapping("/memberloginform.do")
	public String memberloginform() {
		return "memberloginform";
	}
	
	//�α��� ó��
	@RequestMapping(value = "/memberlogin.do", method = RequestMethod.POST)
	public void login(@RequestParam("member_id") String member_id,
					  @RequestParam("member_pwd") String member_pwd) throws IOException{
		
	}
	
	//ȸ�� ���� ������Ʈ �� �̵�
	@RequestMapping(value = "/memberupdateform.do", method = RequestMethod.POST)
	public String memberupdateform() {
		return "memberupdateform";
	}
	
	//ȸ�� ������Ʈ ó��
	@RequestMapping(value = "/memberupdate.do", method = RequestMethod.POST)
	public ModelAndView memberupdate(@ModelAttribute("membervo") MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/redirect:/main/main.do");
		
		return mav;
	}
	
	//�α׾ƿ� ó��
	@RequestMapping(value = "/memberlogout.do", method = RequestMethod.GET)
	public ModelAndView memberlogout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main/main.do");
		HttpSession session = request.getSession();
		session.removeAttribute("");
		return mav; 
	}
	
	//ȸ�� ���� Ȯ�� ������ �̵�
	@RequestMapping(value="/memberInfo.do")
	public String memberInfo() {
		//���� Ȯ�� �۾� �߰��ؾߵ�
		return "memberInfo";
	}
	
	//��ȸ�� �߰� �Ѵٸ�
	/* public */
	
	
	
}
