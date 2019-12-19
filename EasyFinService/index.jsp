<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen"/>
    <title>팝빌 SDK jsp Example.</title>
</head>
<body>
<div id="content">
    <p class="heading1">팝빌 계좌 간편조회 API SDK jsp Example.</p>
    <br/>
    <fieldset class="fieldset1">
        <legend>계좌관리</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getBankAccountMgtURL.jsp">getBankAccountMgtURL</a> - 계좌 관리 팝업 URL</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/listBankAccount.jsp">listBankAccount</a> - 계좌 목록 확인</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>계좌 거래내역 수집</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/requestJob.jsp">requestJob</a> - 수집 요청</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getJobState.jsp">getJobState</a> - 수집 상태 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/listActiveJob.jsp">listActiveJob</a> - 수집 상태 목록 확인</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>계좌 거내내역 관리</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/search.jsp">search</a> - 거래 내역 조회</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/summary.jsp">summary</a> - 거래 내역 요약정보 조회</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/saveMemo.jsp">saveMemo</a> - 거래 내역 메모저장</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>포인트 관리 / 정액제 신청</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getFlatRatePopUpURL.jsp">getFlatRatePopUpURL</a> - 정액제 서비스 신청 URL</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getFlatRateState.jsp">getFlatRateState</a> - 정액제 서비스 상태 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getBalance.jsp">getBalance</a> - 연동회원 잔여포인트 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getChargeURL.jsp">getChargeURL</a> - 연동회원 포인트충전 URL</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getPartnerBalance.jsp">getPartnerBalance</a> - 파트너 잔여포인트 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getPartnerURL.jsp">getPartnerURL</a> - 파트너 포인트충전 URL</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getChargeInfo.jsp">getChargeInfo</a> - 과금정보 확인</li>
        </ul>
    </fieldset>
    <fieldset class="fieldset1">
        <legend>회원정보</legend>
        <ul>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/checkIsMember.jsp">checkIsMember</a> - 연동회원 가입여부 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/checkID.jsp">checkID</a> - 아이디 중복 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/joinMember.jsp">joinMember</a> - 연동회원 신규가입</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getAccessURL.jsp">getAccessURL</a> - 팝빌 로그인 URL</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/getCorpInfo.jsp">getCorpInfo</a> - 회사정보 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/updateCorpInfo.jsp">updateCorpInfo</a> - 회사정보 수정</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/registContact.jsp">registContact</a> - 담당자 등록</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/listContact.jsp">listContact</a> - 담당자 목록 확인</li>
            <li><a href="${pageContext.request.contextPath}/EasyFinService/updateContact.jsp">updateContact</a> - 담당자 정보 수정</li>
        </ul>
    </fieldset>
</div>
</body>
</html>