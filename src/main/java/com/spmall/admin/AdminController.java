package com.spmall.admin;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	public ModelAndView adminMain(ModelAndView mv) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map = adminService.outputInfo();
		
		
		mv.addObject("salesMonth", map.get("salesMonth"));
		mv.addObject("salesToday", map.get("salesToday"));
		mv.addObject("numberOfOrders", map.get("numberOfOrders"));
		mv.setViewName("admin/admin/adminMain");
		return mv;
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
		UploadFileUtils uploadFileUtils = new UploadFileUtils();
		String imageFileName=null;
		
		//sub 카테고리가 없는 상품인 경우 
		if(vo.getPdu_category_code_ref().isEmpty()) {
			//main 카테고리 값을 code_ref에 저장
			vo.setPdu_category_code_ref(vo.getPdu_category_main());
		}
		
		//상품등록
		List<PduImageVO> imageFileList=uploadFileUtils.upload(multipartRequest, vo.getPdu_detail_code(), uploadPath);
		
		try {
			adminService.newPrsInsert(vo,imageFileList);
			
			if(imageFileList !=null && imageFileList.size() !=0) {
				for(PduImageVO imageFileVO : imageFileList) {
					imageFileName=imageFileVO.getPdu_image_file_name();
					
					//임시저장파일에 
					File srcFile=new File(uploadPath+"\\"+"image"+"\\"+imageFileName);
					File destDir=new File(uploadPath+"\\"+vo.getPdu_detail_code()); 
					FileUtils.moveFileToDirectory(srcFile, destDir, true); 
				
					
					String name = uploadFileUtils.makeThumbnail(uploadPath+"\\"+imageFileVO.
					getPdu_detail_code_ref()+ "\\", imageFileName); System.out.println(name);
					 
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
			//Exception 발생시 이미지 삭제
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
	
	@RequestMapping(value = "memberManage.do", method = RequestMethod.GET)
	public ModelAndView memberManage(ModelAndView mv) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map = adminService.memberManage();
		
		
		mv.addObject("memberList", map.get("memberList"));
		mv.setViewName("admin/admin/memberManage");
		return mv;
	}
	
	
}
