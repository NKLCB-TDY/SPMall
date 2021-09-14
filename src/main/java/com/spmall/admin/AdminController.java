package com.spmall.admin;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spmall.common.UploadFileUtils;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
	public static Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService adminService;
	
	@Resource(name = "uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "adminMain.do", method = RequestMethod.GET)
	public String adminMain() {
		return "admin/admin/adminMain";
	}
	
	//상품등록 부분 시작
	//새상품등록 페이지 new product register == prs
	@RequestMapping(value = "newPrs.do", method =RequestMethod.GET)
	public String newPrs(){
		return "admin/admin/newPrs";
	}
	
	//상품등록 처리
	@RequestMapping(value = "newPrs.do", method =RequestMethod.POST)
	public String newPrs_POST(MultipartFile file)throws Exception{
		adminService.newPrs();
		return "admin/admin/newPrs";
	}
	//////////////////////////////////////////////
	
	//업로드 처리
	@ResponseBody
	@RequestMapping(value="uploadAjax", 
					method = RequestMethod.POST,
					produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception {
		logger.info("originalName " + file.getOriginalFilename());
		
		return 
			new ResponseEntity<>(
					UploadFileUtils.uploadFile(uploadPath, 
							file.getOriginalFilename(), 
							file.getBytes()),
					HttpStatus.CREATED);
	}
	
	
}
