package com.spmall.admin;

import java.util.List;

public interface AdminDAO {
	public List<AdminVO> searchCate()throws Exception;
	public void newPrsInsert(PduCategoryDetailVO vo)throws Exception;
	//public void newPrsInsert_img(String img_name)throws Exception;
	
}
