<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		<title>팝빌 SDK jsp Example.</title>
	</head>
<%@ include file="common.jsp" %>
<%@page import="com.popbill.api.PopbillException"%>
<%@page import="com.popbill.api.taxinvoice.MgtKeyType"%>
<%@page import="com.popbill.api.taxinvoice.TaxinvoiceInfo"%>

<%
	String testCorpNum = "1231212312";				// 회원 사업자번호
	MgtKeyType keyType = MgtKeyType.SELL;			// 세금계산서 유형. SELL :매출 , BUY : 매입  , TRUSTEE : 수탁
	String[] MgtKeyList = new String[] {"20141230-01","20141230-02"};	// 세금계산서 연동관리번호 배열 (최대 1000건)

	TaxinvoiceInfo[] taxinvoiceInfos = null;

	try {

		taxinvoiceInfos = taxinvoiceService.getInfos(testCorpNum, keyType, MgtKeyList);

	} catch (PopbillException pe) {
		//적절한 오류 처리를 합니다. pe.getCode() 로 오류코드를 확인하고, pe.getMessage()로 관련 오류메시지를 확인합니다.
		//예제에서는 exception.jsp 페이지에서 오류를 표시합니다.
		throw pe;
	}
%>

	<body>
		<div id="content">
			<p class="heading1">Response</p>
			<br/>
			<fieldset class="fieldset1">
				<legend>다량 세금계산서 상태/요약 정보 확인</legend>

					<%
						TaxinvoiceInfo taxinvoiceInfo = null;
						for(int i=0; i< taxinvoiceInfos.length; i++){
							taxinvoiceInfo = taxinvoiceInfos[i];
					%>
					
						<fieldset class="fieldset2">
							<legend>TaxinvoiceInfos</legend>
								<ul>	
									<li>itemKey : <%= taxinvoiceInfo.getItemKey()%></li>
									<li>taxType : <%= taxinvoiceInfo.getTaxType()%></li>
									<li>writeDate : <%= taxinvoiceInfo.getWriteDate()%></li>
									<li>regDT : <%= taxinvoiceInfo.getRegDT()%> </li>
									<li>invoicerCorpName : <%= taxinvoiceInfo.getInvoicerCorpName()%></li>
									<li>invoicerCorpNum : <%= taxinvoiceInfo.getInvoicerCorpNum() %> </li>
									<li>invoicerMgtKey : <%= taxinvoiceInfo.getInvoicerMgtKey() %></li>
									<li>invoiceeCorpName : <%= taxinvoiceInfo.getInvoiceeCorpName() %></li>
									<li>invoiceeCorpNum : <%= taxinvoiceInfo.getInvoiceeCorpNum() %></li>
									<li>invoiceeMgtKey : <%= taxinvoiceInfo.getInvoiceeMgtKey() %> </li>
									<li>trusteeCorpName : <%= taxinvoiceInfo.getTrusteeCorpName() %></li>
									<li>trusteeCorpNum : <%= taxinvoiceInfo.getTrusteeCorpNum() %></li>
									<li>trusteeMgtKey : <%= taxinvoiceInfo.getTrusteeMgtKey() %></li>
									<li>supplyCostTotal : <%= taxinvoiceInfo.getSupplyCostTotal() %></li>
									<li>taxTotal : <%= taxinvoiceInfo.getTaxTotal() %></li>
									<li>purposeType : <%= taxinvoiceInfo.getPurposeType() %></li>
									<li>modifyCode : <%= taxinvoiceInfo.getModifyCode() %></li>
									<li>issueType : <%= taxinvoiceInfo.getIssueType() %></li>
									<li>issueDT : <%= taxinvoiceInfo.getIssueDT() %></li>
									<li>preIssueDT : <%= taxinvoiceInfo.getPreIssueDT() %></li>
									<li>stateCode : <%= taxinvoiceInfo.getStateCode() %></li>
									<li>stateDT : <%= taxinvoiceInfo.getStateDT() %></li>
									<li>stateMemo : <%= taxinvoiceInfo.getStateMemo() %></li>
									<li>openYN : <%= taxinvoiceInfo.isOpenYN() %></li>
									<li>openDT : <%= taxinvoiceInfo.getOpenDT() %></li>
									<li>ntsresult : <%= taxinvoiceInfo.getNTSResult() %></li>
									<li>ntsconfirmNum : <%= taxinvoiceInfo.getNTSConfirmNum() %></li>
									<li>ntssendDT : <%= taxinvoiceInfo.getNTSSendDT() %></li>
									<li>ntsresultDT : <%= taxinvoiceInfo.getNTSResultDT() %></li>
									<li>ntssendErrCode : <%= taxinvoiceInfo.getNTSSendErrCode() %></li>
								</ul>
						</fieldset>		
						
					<%			
						}
					%>

			</fieldset>
		 </div>
	</body>
</html>