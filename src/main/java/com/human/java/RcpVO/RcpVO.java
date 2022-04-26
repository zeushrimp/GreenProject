package com.human.java.RcpVO;

import java.util.Date;

import lombok.Data;

@Data
public class RcpVO {
	
	int RCP_PK;
	String RCP_TITLE;
	String RCP_CONTENT;
	Date RCP_REG;
	int RCP_HIT;
	int RCP_LIKE;
	int RCP_COM;
	String RCP_VEGE;
	String RCP_CT;
	String RCP_COUNT;
	String USR_ID;
	int RCPRS_PK;
	String RCPRS_TITLE;
	String RCPRS_AMOUNT;
	int RCPCT_PK;
	int RCPCT_NUM;
	String RCPCT_CONTENT;
	int RCM_PK;
	String RCM_CONTENT;
	Date RCM_REG;
	int RCM_REF;
	int RCM_REF_STEP;
	int RCM__REF_LEVEL;
	int RCM_DEL;
	int RCPPC_PK;
	int RCPPC_NO;	
	
	
	
}
