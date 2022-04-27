package com.human.java.CmuVO;

import lombok.Data;

@Data
public class Pagination {

	private int listsize = 8; // 초기값으로 목록개수를 10으로 셋팅 한 페이지당 보여질 리스트의 개수
	private int rangesize = 5; // 초기값으로 페이지범위를 5로 셋팅 한 페이지 범위에 보여질 페이지의 개수
	private int page; // 현재목록의 페이지 번호
	private int range; // 각 페이지 범위 시작 번호
	private int listcnt; // 전체 개시물의 개수
	private int pagecnt; // 전체 페이지 범위의 개수
	private int startpage; // 각 페이지 범위 시작 번호
	private int startlist; // 게시판 시작번호
	private int endpage; // 각 페이지 범위 끝 번호
	private boolean prev; // 이전 페이지
	private boolean next; // 다음 페이지
	
	// 첫번째 인자 page 는 현재 페이지 정보, 두번째 인자 range 는 현재 페이지 범위 정보, 세번째 인자 listCnt는 게시물의 총 개수
	public void pageInfo(int page, int range, int listcnt) {
		
		this.page = page;
		this.range = range;
		this.listcnt = listcnt;

		// 전체 페이지수
		this.pagecnt = (int) Math.ceil((double) listcnt / listsize);
		// 시작 페이지
		this.startpage = (range - 1) * rangesize + 1;
		// 끝 페이지
		this.endpage = range * rangesize;
		// 게시판 시작번호
		this.startlist = (page - 1) * listsize;
		// 이전 버튼 상태
		this.prev = range == 1 ? false : true;
		// 다음 버튼 상태
		this.next = endpage > pagecnt ? false : true;
		if (this.endpage > this.pagecnt) {
			this.endpage = this.pagecnt;
			this.next = false;
		}
	}
}
