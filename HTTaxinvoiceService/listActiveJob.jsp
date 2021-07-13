<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		<title>팝빌 SDK jsp Example.</title>
	</head>

<%@ include file="common.jsp" %>
<%@page import="com.popbill.api.hometax.HTTaxinvoiceJobState" %>
<%@page import="com.popbill.api.PopbillException"%>

<%
    /*
     * 전자세금계산서 매입/매출 내역 수집요청에 대한 상태 목록을 확인합니다.
     * - 수집 요청 후 1시간이 경과한 수집 요청건은 상태정보가 반환되지 않습니다.
     * - https://docs.popbill.com/httaxinvoice/java/api#ListActiveJob
     */

    // 팝빌회원 사업자번호
    String testCorpNum = "1234567890";

    HTTaxinvoiceJobState[] jobList = null;

    try {

        jobList = htTaxinvoiceService.listActiveJob(testCorpNum);

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
            <%
                if ( jobList != null ){
                    for ( int i = 0; i < jobList.length; i++ ) {
            %>
            <fieldset class="fieldset2">
                <legend>jobID (작업아이디) :  <%= jobList[i].getJobID() %> </legend>
                <ul>
                    <li>jobState (수집상태) : <%=jobList[i].getJobState() %> </li>
                    <li>queryType (수집유형) : <%=jobList[i].getQueryType() %> </li>
                    <li>queryDateType (일자유형) : <%=jobList[i].getQueryDateType() %> </li>
                    <li>queryStDate (시작일자) : <%=jobList[i].getQueryStDate() %> </li>
                    <li>queryEnDate (종료일자) : <%=jobList[i].getQueryEnDate() %> </li>
                    <li>errorCode (오류코드) : <%=jobList[i].getErrorCode() %> </li>
                    <li>errorReason (오류메시지) : <%=jobList[i].getErrorReason() %> </li>
                    <li>jobStartDT (작업 시작일시) : <%=jobList[i].getJobStartDT() %> </li>
                    <li>jobEndDT (작업 종료일시) : <%=jobList[i].getJobEndDT() %> </li>
                    <li>collectCount (수집개수) : <%=jobList[i].getCollectCount() %> </li>
                    <li>regDT (수집 요청일시) : <%=jobList[i].getRegDT() %> </li>
                </ul>
            </fieldset>
            <%  }
            }
            %>
        </fieldset>
    </div>
    </body>
</html>
