package com.spmall.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;


public class PagingSetting {
	//하단에 a태그로 누를누있도록 보여지는 부분 몇개 출력할껀지 1|2|3|4|5...|10 >>next  
	private int displayPageNum = 10;
	
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private SearchCriteria cri;

	public int getDisplayPageNum() {
		return displayPageNum;
	}
	
	public void setCri(SearchCriteria cri) {
		this.cri = cri;
	}

	//조건에 맞는 전체 데이터 개수 가져오기
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	private void calcData() {
		
		endPage = (int) (Math.ceil(cri.getPage() / (double)displayPageNum ) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)cri.getPerPageNum()));
		
		if(endPage > tempEndPage){
			endPage = tempEndPage;
		}
		prev = startPage ==1 ? false : true;
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
		
	}
	
	public int getTotalCount() {
		return totalCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public Criteria getCri() {
		return cri;
	}
	
	public String makeQuery(int page){
		
		UriComponents uriComponents =
	            UriComponentsBuilder.newInstance()
	            .queryParam("page", page)
	            .queryParam("perPageNum", cri.getPerPageNum())
	            .build();	            
		
		return uriComponents.toUriString();
	}

	public String makeSearch(int page){
		
		UriComponents uriComponents =
	            UriComponentsBuilder.newInstance()
	            .queryParam("page", page)
	            .queryParam("perPageNum", cri.getPerPageNum())
	            .queryParam("searchType", ((SearchCriteria) cri).getSearchType())
	            .queryParam("keyword", encoding(((SearchCriteria) cri).getKeyword()))
	            .build();
		
		return uriComponents.toUriString();
	}
	
	//url에 키워드 추가시 한글 인코딩
	private String encoding(String keyword) {
		
		if(keyword == null || keyword.trim().length() == 0) { //trim: 문자열 앞뒤 공백제거
			return "";
		}
		try {
			return URLDecoder.decode(keyword, "UTF-8");
		}catch(UnsupportedEncodingException e) {
			return "";
		}
	}
	
	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage="
				+ startPage + ", endPage=" + endPage + ", prev=" + prev
				+ ", next=" + next + ", displayPageNum=" + displayPageNum
				+ ", cri=" + cri + "]";
	}
	
	
}
