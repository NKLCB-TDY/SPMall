package com.spmall.admin;

import java.util.List;
import java.util.Map;

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
		//제품등록
		adminDAO.newPrsInsert(vo);
		adminDAO.newPrsInsert_img(imageFileList);
	}

	@Override
	public Map<String, Object> outputInfo() throws Exception {
		return adminDAO.outputInfo();
	}

	@Override
	public Map<String, Object> memberManage() throws Exception {
		return adminDAO.memberManage();
	}
	
}
