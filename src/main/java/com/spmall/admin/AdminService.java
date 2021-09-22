package com.spmall.admin;

import java.util.List;

public interface AdminService {
	public List<AdminVO> searchCate()throws Exception;
	public void newPrsInsert(PduCategoryDetailVO vo)throws Exception;
}
