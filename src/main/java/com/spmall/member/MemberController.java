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
	
	
	//ȸ������ �������� �̵�
	@RequestMapping(value ="/memberJoin.do", method = RequestMethod.GET)
	public String memberJoin(Authentication authentication) {
		
		//�α��� ���½� ���ٸ���
		if(authentication != null) {
			return "redirect:/main/main.do";
		}

		return "member/memberJoin";
	}
	
	//ȸ������ ���� 
	@RequestMapping(value="/memberJoin.do", method = RequestMethod.POST)
	public String memberJoin(MemberVO vo) {
		memberService.memberJoin(vo);
		return "redirect:/main/mainLogin.do";
	}
	
	//id ��ġ���� Ȯ��
	@ResponseBody
	@RequestMapping(value ="/idoverlap.do", method = RequestMethod.POST)
	public Map<String, Boolean> idoverlap(@RequestParam(value ="member_id") String member_id) {

		Map<String, Boolean> map = new HashMap<String, Boolean>();
		int result = memberService.idoverlap(member_id);
		
		//result   0 �����Ҽ��ִ� id  
		// 		   1 �ߺ� 	  id
		if(result == 0) {
			map.put("result", true);
		}else {
			map.put("result", false);
		}
		return map;
	}
	

	

	
	//ȸ�� ���� & ���� ������ ó���ؾ���!!!!!
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.GET)
	public ModelAndView memberUpdate(ModelAndView mv, Authentication authentication) {
		CustomerUser user = (CustomerUser) authentication.getPrincipal();
		String member_id = user.getUsername();
		
		mv.addObject("MemberVO", memberService.memberInfo(member_id));
		mv.setViewName("member/member/memberUpdate");
		return mv;
	}
	
	//ȸ������ ���� ó��
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.POST)
	public String memberUpdate(MemberVO vo) {
		logger.info("ȸ����������");
		memberService.memberUpdate(vo);
		return "redirect:/main/main.do";
	}
	
	
	//////////////////////////////////////////////////////
	
	//�α��� ó��, �α׾ƿ� ó���� spring��ť��Ƽ�� ó��, ��ȸ�� ����߰��� ���� ��ɿϷ�� �߰�
}
