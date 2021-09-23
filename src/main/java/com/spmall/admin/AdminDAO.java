package com.spmall.admin;

import java.util.List;

public interface AdminDAO {
	public List<AdminVO> searchCate()throws Exception;
	public int newPrsInsert(PduCategoryDetailVO vo)throws Exception;
	public void newPrsInsert_img(List<PduImageVO> imageFileList)throws Exception;
	
}
