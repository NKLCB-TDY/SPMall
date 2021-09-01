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
	
	
	//ȸ������ �������� �̵�
	@RequestMapping(value ="/membersignupform.do", method = RequestMethod.GET)
	public String memberSignupForm() {
		return "member/membersignupform";
	}
	
	//id ��ġ���� Ȯ��
	@ResponseBody
	@RequestMapping(value ="/idoverlap.do", method = RequestMethod.POST)
	public Map<String, Boolean> idoverlap(@RequestParam(value ="member_id") String member_id) {

		Map<String, Boolean> map = new HashMap<String, Boolean>();
		int result = memberService.idoverlap(member_id);
		System.out.println(result);
		//result   0 �����Ҽ��ִ� id  
		// 		   1 �ߺ� 	  id
		if(result == 0) {
			map.put("result", true);
		}else {
			map.put("result", false);
		}
		return map;
	}
	
	//ȸ������ ���� 
	@RequestMapping(value="/membersignup.do", method = RequestMethod.POST)
	public ModelAndView memberSignup(MemberVO vo) {
		memberService.memberSignup(vo);
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	//�α��� ������ 
	@RequestMapping(value = "/memberloginform.do", method = RequestMethod.GET)
	public String memberLoginForm() {
		return "member/memberloginform";
	}
	
	//ȸ�� ���� ������
	@RequestMapping(value = "/memberinfoform.do", method = RequestMethod.GET)
	public String memberInfo(@RequestParam("member_id") String memberId, Model model) {
		//�α���ó���� �����ؾ� ���߰��� �α����� ���̵� ���� �����;��ϱ⿡..
		model.addAttribute(memberService.memberInfo(memberId));
		return "member/memberinfoform";
	}
	
	//ȸ�� ������Ʈ ������
	@RequestMapping(value = "/memberupdateform.do", method = RequestMethod.GET)
	public String memberUpdateForm(@ModelAttribute("membervo") MemberVO vo) {
		return "member/memberupdateform";
	}
	
	//ȸ�� ������Ʈ ó��
	@RequestMapping(value = "/memberupdate.do", method = RequestMethod.POST)
	public String memberUpdate(@ModelAttribute("membervo") MemberVO vo) {
		logger.info("ȸ����������");
		
		return "redirect:/member/read";
	}
	
	
	//////////////////////////////////////////////////////
	
	//�α��� ó��
	@RequestMapping(value = "/memberlogin.do", method = RequestMethod.POST)
	public void login(@RequestParam("member_id") String member_id,
					  @RequestParam("member_pwd") String member_pwd) throws IOException{
		MemberVO vo = new MemberVO();
		vo = memberService.memberLogin(member_id);
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
	
	//��ȸ�� �߰� �Ѵٸ�
	/* public */
	
	
	
}
