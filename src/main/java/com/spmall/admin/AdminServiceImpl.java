package com.spmall.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService  {

	@Inject
	AdminDAO adminDAO;
	
	@Override
	public List<AdminVO> searchCate() throws Exception {
		return adminDAO.searchCate();
	}

	@Override
	public void newPrsInsert(PduCategoryDetailVO vo, List<PduImageVO> imageFileList) throws Exception {
		//��ǰ���� �� �̹��� ���
		adminDAO.newPrsInsert(vo);
		adminDAO.newPrsInsert_img(imageFileList);
	}
	
}
