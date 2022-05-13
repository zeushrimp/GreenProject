package com.human.java.AdmVO;

public class AdmListVO {
	
	
	//           현재페이지, 시작페이지,    끝페이지, 게시글 총 갯수, 페이지당 글 갯수, 마지막페이지, SQL쿼리에 쓸 start, end
	private int now_page, start_page, end_page, total, cnt_per_page, last_page, start, end;
	//페이지 리스트에 게시되는 페이지 수
	private int cnt_page = 5;
	
	public AdmListVO() {
		
	}

	public AdmListVO(int total, int now_page, int cnt_per_page) {
		setNow_page(now_page);
		setCnt_per_page(cnt_per_page);
		setTotal(total);
		calcLastPage(getTotal(), getCnt_per_page());
		calcStartEndPage(getNow_page(), cnt_page);
		calcStartEnd(getNow_page(), getCnt_per_page());
	}
	
	
	
	// 제일 마지막 페이지 계산
	public void calcLastPage(int total, int cnt_per_page) {
		setLast_page((int) Math.ceil((double)total / (double)cnt_per_page));
	}
	
	
	// 시작, 끝 페이지 계산
	public void calcStartEndPage(int now_page, int cnt_page) {
		setEnd_page(((int)Math.ceil((double)now_page / (double)cnt_page)) * cnt_page);
		if (getLast_page() < getEnd_page()) {
			setEnd_page(getLast_page());
		}
		setStart_page(getEnd_page() - cnt_page + 1);
		if (getStart_page() < 1) {
			setStart_page(1);
		}
	}
	
	
	// DB 쿼리에서 사용할 start, end값 계산
	public void calcStartEnd(int now_page, int cnt_per_page) {
		setEnd(now_page - 1);
		setStart(getEnd() * cnt_per_page);
	}
	
	
	// Getter, Setter	
	public int getNow_page() {
		return now_page;
	}


	public void setNow_page(int now_page) {
		this.now_page = now_page;
	}


	public int getStart_page() {
		return start_page;
	}


	public void setStart_page(int start_page) {
		this.start_page = start_page;
	}


	public int getEnd_page() {
		return end_page;
	}


	public void setEnd_page(int end_page) {
		this.end_page = end_page;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public int getCnt_per_page() {
		return cnt_per_page;
	}


	public void setCnt_per_page(int cnt_per_page) {
		this.cnt_per_page = cnt_per_page;
	}


	public int getLast_page() {
		return last_page;
	}


	public void setLast_page(int last_page) {
		this.last_page = last_page;
	}



	public int getStart() {
		return start;
	}



	public void setStart(int start) {
		this.start = start;
	}



	public int getEnd() {
		return end;
	}



	public void setEnd(int end) {
		this.end = end;
	}



	public int getCnt_page() {
		return cnt_page;
	}



	public void setCnt_page(int cnt_page) {
		this.cnt_page = cnt_page;
	}




	@Override
	public String toString() {
		return "AdmVO [now_page=" + now_page + ", start_page=" + start_page + ", end_page=" + end_page + ", total=" + total
				+ ", cnt_per_page=" + cnt_per_page + ", last_page=" + last_page + ", start=" + start + ", end=" + end
				+ ", cnt_page=" + cnt_page + "]";
	}
	
	
}
