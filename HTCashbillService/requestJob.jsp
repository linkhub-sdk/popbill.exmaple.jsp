<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		<title>팝빌 SDK jsp Example.</title>
	</head>

<%@ include file="common.jsp" %>
<%@page import="com.popbill.api.hometax.QueryType" %>
<%@page import="com.popbill.api.PopbillException"%>

<%
  /**
  * 현금영수증 매출/매입 내역 수집을 요청합니다
  * - 매출/매입 연계 프로세스는 "[홈택스 현금영수증 연계 API 연동매뉴얼]
  *   > 1.2. 프로세스 흐름도" 를 참고하시기 바랍니다.
  * - 수집 요청후 반환받은 작업아이디(JobID)의 유효시간은 1시간 입니다.
  */

  // 팝빌회원 사업자번호
	String testCorpNum = "1234567890";

  // 팝빌회원 아이디
	String testUserId = "testkorea";

  // 현금영수증 유형, SELL-매출, BUY-매입
  QueryType CashbillType = QueryType.SELL;

  // 시작일자, 날짜형식(yyyyMMdd)
  String SDate = "20161001";

  // 종료일자, 날짜형식(yyyyMMdd)
  String EDate = "20161231";

	String jobID = null;

	try {

		jobID = htCashbillService.requestJob(testCorpNum, CashbillType, SDate, EDate);

	} catch (PopbillException pe) {
		//적절한 오류 처리를 합니다. pe.getCode() 로 오류코드를 확인하고, pe.getMessage()로 관련 오류메시지를 확인합니다.
		//예제에서는 exception.jsp 페이지에서 오류를 표시합니다.
		throw pe;
	}
%>
	<body>
		<div id="content">
			<p class="heading1">Response </p>
			<br/>
			<fieldset class="fieldset1">
				<legend>홈택스 수집 요청</legend>
				<ul>
					<li>jobID (작업아이디) : <%=jobID %> </li>
				</ul>
			</fieldset>
		 </div>
	</body>
</html>
