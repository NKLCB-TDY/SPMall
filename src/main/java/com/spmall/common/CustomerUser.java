package com.spmall.common;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomerUser extends User {

    private String roleName;
    private String roleStatus; //null, member, admin 셋중하나 담김
    
    public CustomerUser(String username, String password,
            Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
    }

  
    public String getRoleName() {
		return roleName;
	}


	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	

    public String getRoleStatus() {
		return roleStatus;
	}


	public void setRoleStatus(String roleStatus) {
		this.roleStatus = roleStatus;
	}




	private static final long serialVersionUID = 5869301720811314860L;
}
