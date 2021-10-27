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
		MemberVO vo = new MemberVO();
		vo.setMember_id(username);
		vo = dao.commonLogin(vo);
		
		if(vo == null) {
			throw new UsernameNotFoundException("no user");
		}
		
		List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		System.out.println(vo.getRole_Name());
		auth.add(new SimpleGrantedAuthority(vo.getRole_Name()));
		CustomerUser user = new CustomerUser(username, vo.getMember_pwd(), auth);
		user.setRoleName(vo.getRole_Name());
		
		//ROLE_User == memeber, ROLE_ADMIN == admin, 가독성을 위해 setRoleStatus추가
		if(vo.getRole_Name().equals("ROLE_USER")) {
			user.setRoleStatus("member");
		}else if(vo.getRole_Name().equals("ROLE_ADMIN")){
			user.setRoleStatus("admin");
		}else {
			user.setRoleStatus("");
		}
		
		return user;
	}
	

	
}
