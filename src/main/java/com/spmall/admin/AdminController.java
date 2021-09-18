package com.spmall.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.UploadFileUtils;

import net.sf.json.JSONArray;


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
	//상품 카테고리 찾기
	@RequestMapping(value = "searchCate", method = RequestMethod.POST)
	public AdminVO searchCate(Model model) throws Exception {
		
		
		return null;
	}
	
	//새상품등록 페이지 new product register == prs
	@RequestMapping(value = "newPrsInsert.do", method =RequestMethod.GET)
	public ModelAndView newPrs() throws Exception{
		
		List<AdminVO> category = adminService.searchCate();
		ModelAndView mv = new ModelAndView();
		mv.addObject("category",JSONArray.fromObject(category));
		mv.setViewName("admin/admin/newPrsInsert");
		return mv;
	}
	
	//상품등록 처리
	@RequestMapping(value = "newPrsInsert.do", method =RequestMethod.POST)
	public String newPrsInsert_POST(MultipartFile file)throws Exception{
		adminService.newPrsInsert();
		return "admin/admin/adminMain.do";
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
