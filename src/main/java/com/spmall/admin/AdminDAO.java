package com.spmall.admin;

import java.util.List;
import java.util.Map;

public interface AdminDAO {
	public List<AdminVO> searchCate()throws Exception;
	public int newPrsInsert(PduCategoryDetailVO vo)throws Exception;
	public void newPrsInsert_img(List<PduImageVO> imageFileList)throws Exception;
	public Map<String, Object> outputInfo()throws Exception; 
	public Map<String, Object> memberManage()throws Exception;
	
}
