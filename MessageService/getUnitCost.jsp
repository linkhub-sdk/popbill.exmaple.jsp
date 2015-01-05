<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		<title>팝빌 SDK jsp Example.</title>
	</head>

<%@ include file="common.jsp" %>

<%@page import="com.popbill.api.PopbillException"%>
<%@page import="com.popbill.api.message.MessageType"%>

<%
	String testCorpNum = "1231212312";			// 회원 사업자번호("-"제외)
	MessageType msgType = MessageType.SMS;		// 문자메시지 타입. SMS(단문), LMS(장문)

	float unitCost;

	try {
		
		unitCost = messageService.getUnitCost(testCorpNum, msgType);

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
				<legend>문자메시지 전송 단가 확인</legend>
				<ul>
					<li>전송 단가 : <%=unitCost%></li>
				</ul>
			</fieldset>
		 </div>
	</body>
</html>