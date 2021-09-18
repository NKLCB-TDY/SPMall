package com.spmall.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService  {

	@Inject
	AdminDAO adminDAO;
	
	@Override
	public void newPrsInsert() throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public List<AdminVO> searchCate() throws Exception {
		return adminDAO.searchCate();
	}
	
}
