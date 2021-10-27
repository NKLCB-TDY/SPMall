package com.spmall.admin;

import java.util.List;
import java.util.Map;

public interface AdminService {
	public List<AdminVO> searchCate()throws Exception;
	public void newPrsInsert(PduCategoryDetailVO vo, List<PduImageVO> imageFileList )throws Exception;
	public Map<String, Object> outputInfo()throws Exception;
	public Map<String, Object> memberManage()throws Exception;
}
