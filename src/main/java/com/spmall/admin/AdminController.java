package com.spmall.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

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
	//새상품등록 페이지 new product register == prs
	@RequestMapping(value = "newPrsInsert.do", method =RequestMethod.GET)
	public ModelAndView newPrs() throws Exception{
		//상품 카테고리 찾기 
		List<AdminVO> category = adminService.searchCate(); 
		ModelAndView mv = new ModelAndView();
		mv.addObject("category",JSONArray.fromObject(category));
		mv.setViewName("admin/admin/newPrsInsert");
		return mv;
	}
	
	//상품등록 처리
	@RequestMapping(value = "newPrsInsert.do", method =RequestMethod.POST)
	public String newPrsInsert_POST(PduCategoryDetailVO vo, MultipartHttpServletRequest multipartRequest)throws Exception{
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName=null;
		
		//sub 카테고리가 없는 상품인 경우 
		if(vo.getPdu_category_code_ref().isEmpty()) {
			//main 카테고리 값을 code_ref에 저장
			vo.setPdu_category_code_ref(vo.getPdu_category_main());
		}
		
		//상품등록
		List<PduImageVO> imageFileList=upload(multipartRequest);
		
		try {
			adminService.newPrsInsert(vo,imageFileList);
			
			if(imageFileList !=null && imageFileList.size() !=0) {
				for(PduImageVO imageFileVO : imageFileList) {
					imageFileName=imageFileVO.getPdu_image_file_name();
					File srcFile=new File(uploadPath+"\\"+"image"+"\\"+imageFileName);
					File destDir=new File(uploadPath+"\\"+vo.getPdu_detail_code()); 
					FileUtils.moveFileToDirectory(srcFile, destDir, true); 
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
			if(imageFileList !=null && imageFileList.size() !=0) {
				for(PduImageVO imageFileVO : imageFileList) {
					imageFileName=imageFileVO.getPdu_image_file_name();
					File srcFile=new File(uploadPath+"\\"+"image"+"\\"+imageFileName);
					srcFile.delete();
				}
			}
		
		}
		
		return "redirect:/admin/newPrsInsert.do";
	}
	
	
	// 메서드 ///////////////////////////////////
	
	//이미지 파일 업로드
	public List<PduImageVO> upload(MultipartHttpServletRequest multipartRequest) throws Exception{
		
		List<PduImageVO> fileList= new ArrayList<PduImageVO>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasNext()){
			PduImageVO imageFileVO =new PduImageVO();
			String fileName = fileNames.next();
			
			imageFileVO.setPdu_image_file_type(fileName);
			MultipartFile mFile = multipartRequest.getFile(fileName);
			
			String originalFileName=mFile.getOriginalFilename();
			
			imageFileVO.setPdu_image_file_name(originalFileName);
			fileList.add(imageFileVO);

			File file = new File(uploadPath +"\\"+ fileName);
			
			
			if(mFile.getSize()!=0){ 
				if(! file.exists()){ 
					if(file.getParentFile().mkdirs()){
							file.createNewFile(); 
					}
				}
				mFile.transferTo(new File(uploadPath + "\\"+ "image" + "\\"+originalFileName));
			}
		}
		return fileList;
	}
}
