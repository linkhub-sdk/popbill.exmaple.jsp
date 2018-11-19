<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen"/>
    <title>팝빌 SDK jsp Example.</title>
</head>
<body>
<div id="content">
    <p class="heading1">팝빌 휴폐업조회 SDK jsp Example.</p>
    <br/>
    <fieldset class="fieldset1">
        <legend>휴폐업조회</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/checkCorpNum.jsp">checkCorpNum</a> - 휴폐업 단건조회</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/checkCorpNums.jsp">checkCorpNums</a> - 휴폐업 대량조회</li>
        </ul>
    </fieldset>
    <br/>
    <fieldset class="fieldset1">
        <legend>포인트 관리</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getChargeURL.jsp">getChargeURL</a> - 연동회원 포인트충전 URL</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getChargeInfo.jsp">getChargeInfo</a> - 과금정보 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getUnitCost.jsp">getUnitCost</a> - 전송 단가 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getBalance.jsp">getBalance</a> - 연동회원 잔여포인트 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getPartnerBalance.jsp">getPartnerBalance</a> - 파트너 잔여포인트 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getPartnerURL.jsp">getPartnerURL</a> - 파트너 포인트충전 URL</li>
        </ul>
    </fieldset>
    <br/>
    <fieldset class="fieldset1">
        <legend>회원정보</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/checkIsMember.jsp">checkIsMember</a> - 연동회원 가입여부 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/checkID.jsp">checkID</a> - 아이디 중복 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/joinMember.jsp">joinMember</a> - 연동회원 신규가입</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getCorpInfo.jsp">getCorpInfo</a> - 회사정보 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/updateCorpInfo.jsp">updateCorpInfo</a> - 회사정보 수정</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/registContact.jsp">registContact</a> - 담당자 등록</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/listContact.jsp">listContact</a> - 담당자 목록 확인</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/updateContact.jsp">updateContact</a> - 담당자 정보 수정</li>
            <li><a href="${pageContext.request.contextPath}/ClosedownService/getAccessURL.jsp">getAccessURL</a> - 팝빌 로그인 URL</li>
        </ul>
    </fieldset>
</div>
</body>
</html>
