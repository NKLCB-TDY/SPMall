package com.spmall.common;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spmall.member.MemberDAO;
import com.spmall.member.MemberVO;


@Service("customerUserService")
public class CustomerUserService implements UserDetailsService{
	
	@Inject
	MemberDAO dao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("CustomerUserService가 실행된거였어!!");
		MemberVO vo = new MemberVO();
		vo.setMember_id(username);
		vo = dao.commonLogin(vo);
		
		if(vo == null) {
			System.out.println("노유저!!");
			throw new UsernameNotFoundException("no user");
		}
		System.out.println("예스유저!!");
		List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		auth.add(new SimpleGrantedAuthority(vo.getRoleName()));

		CustomerUser user = new CustomerUser(username, vo.getMember_pwd(), auth);
		user.setRoleName(vo.getRoleName());
		return user;
	}
}
