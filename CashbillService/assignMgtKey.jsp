<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		<title>팝빌 SDK jsp Example</title>
	</head>

<%@ include file="common.jsp" %>
<%@page import="com.popbill.api.PopbillException"%>
<%@page import="com.popbill.api.Response"%>

<%
	/*
	 * 팝빌 사이트를 통해 발행하였지만 문서번호가 존재하지 않는 현금영수증에 문서번호를 할당합니다.
	 * - https://dev-docs.linkhub.kr/cashbill/java/api#AssignMgtKey
	 */

	// 팝빌회원 사업자번호, '-'제외 10자리
	String testCorpNum = "1234567890";

	// 현금영수증 팝빌번호, 문서 목록조회(Search) API의 반환항목중 ItemKey 참조
	String itemKey = "020080717180100001";

	// 할당할 문서번호, 숫자, 영문 '-', '_' 조합으로 1~24자리까지
	// 사업자번호별 중복없는 고유번호 할당
	String mgtKey = "20210708-004";

	Response CheckResponse = null;

	try {

		CheckResponse = cashbillService.assignMgtKey(testCorpNum, itemKey, mgtKey);

	} catch (PopbillException pe) {
		//오류 처리를 합니다. pe.getCode() 로 오류코드를 확인하고, pe.getMessage()로 관련 오류메시지를 확인합니다.
		//예제에서는 exception.jsp 페이지에서 오류를 표시합니다.
		throw pe;
	}

%>
	<div id="content">
		<p class="heading1">Response</p>
		<br/>
		<fieldset class="fieldset1">
			<legend>문서번호 할당</legend>
			<ul>
				<li>Response.code : <%=CheckResponse.getCode()%></li>
				<li>Response.message : <%=CheckResponse.getMessage()%></li>
			</ul>
		</fieldset>
	</div>
</html>
