package com.spmall.common;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spmall.admin.PduImageVO;

public class UploadFileUtils {
	
	
	
	//이미지 파일 업로드
	public List<PduImageVO> upload(MultipartHttpServletRequest multipartRequest, int pdu_detail_code,
			String uploadPath) throws Exception{
		
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
				System.out.println(uploadPath);
				mFile.transferTo(new File(uploadPath + "\\"+"image"+ "\\"+originalFileName));
			}
		}
		return fileList;
	}

	public String makeThumbnail(
              String path, 
              String fileName)throws Exception{
   
    BufferedImage sourceImg = 
        ImageIO.read(new File(path, fileName));
    
    BufferedImage destImg = 
        Scalr.resize(sourceImg, 
            Scalr.Method.AUTOMATIC, 
            Scalr.Mode.FIT_TO_HEIGHT,100);
    
    String thumbnailName = 
        path + File.separator +"s_"+ fileName;

    File newFile = new File(thumbnailName);
    String formatName = 
    		fileName.substring(fileName.lastIndexOf(".")+1);


    ImageIO.write(destImg, formatName.toUpperCase(), newFile);
    
    return thumbnailName.substring(
		path.length()).replace(File.separatorChar, '/');
  } 
}
