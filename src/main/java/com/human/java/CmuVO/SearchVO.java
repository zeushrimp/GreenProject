package com.human.java.CmuVO;

import lombok.Data;

@Data
public class SearchVO extends Pagination {

	private String searchtype;
	private String keyword;	
}
