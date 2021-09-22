function getFileInfo(fullName){
		
	var fileName,imgsrc, getLink;
	
	var fileLink;
	
	imgsrc = "/admin/displayFile?fileName="+fullName;
	fileLink = fullName.substr(14);
	
	var front = fullName.substr(0,12); // /2015/07/01/ 
	var end = fullName.substr(14);
	
	getLink = "/admin/displayFile?fileName="+front + end;
	fileName = fileLink.substr(fileLink.indexOf("_")+1);
	
	return  {fileName:fileName, imgsrc:imgsrc, getLink:getLink, fullName:fullName};
	
}


