package com.spmall.common;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spmall.member.MemberDAO;
import com.spmall.member.MemberVO;


@Service("customerUserService")
public class CustomerUserService  implements UserDetailsService{
	
	@Autowired
	MemberDAO memberdao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		MemberVO vo = new MemberVO();
		vo.setMember_id(username);
		vo = memberdao.commonLogin(vo);
		
		if(vo == null) {
			throw new UsernameNotFoundException("no user");
		}
		
		List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		auth.add(new SimpleGrantedAuthority(vo.getRoleName()));

		CustomerUser user = new CustomerUser(username, vo.getMember_pwd(), auth);
		user.setRoleName(vo.getRoleName());
		return user;
	}
}
