package com.spmall.common;

public class Criteria {
	private int page;
	private int perPageNum;
	
	public Criteria() {
		this.page = 1;  //1페이지 default
		this.perPageNum = 10; //10개 출력
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return ;
		}
		this.page = page;
	}

	

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if(perPageNum <= 0 || perPageNum > 100) { //perPageNum 범위 0 < x < 100 아닐시 10으로 초기화
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}

	//
	public int getPageStart() {
		return (this.page-1) * perPageNum; 
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
	
	
	
}
