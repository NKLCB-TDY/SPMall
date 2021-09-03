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
	public String memberSignup(MemberVO vo) {
		logger.info(vo.getMember_addr1());
		memberService.memberSignup(vo);
		return "redirect:/main/main.do";
	}
	
	//�α��� ������ 
	@RequestMapping(value = "/memberloginform.do", method = RequestMethod.GET)
	public String memberLoginForm() {
		return "member/memberloginform";
	}
	
	//ȸ�� ���� & ���� ������
	@RequestMapping(value = "/memberinfoform.do", method = RequestMethod.GET)
	public ModelAndView memberInfoForm() {
		//�α���ó���� �����ؾ� ���߰��� �α����� ���̵� ���� �����;��ϱ⿡..
		String member_id = "sdfsdfsdf"; //�ӽ�id
		ModelAndView mv = new ModelAndView();
		mv.addObject(memberService.memberInfo(member_id));
		mv.setViewName("member/memberinfoform");
		return mv;
	}
	
	//ȸ������ ���� ó��
	@RequestMapping(value = "/memberupdate.do", method = RequestMethod.POST)
	public String memberUpdate(MemberVO vo) {
		logger.info("ȸ����������");
		System.out.println("NONONONO");
		memberService.memberUpdate(vo);
		return "redirect:/main/main.do";
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
