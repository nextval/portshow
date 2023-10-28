<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="java.util.ArrayList" %>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="javax.servlet.ServletResponse" %>
<%@page import="cafeBook.cafeDTO"%>
<%@page import="cafeBook.cafeDAO"%>
<%@page import="java.net.URLEncoder"%>
<script src="./_jQuerylib/jquery-3.7.0.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");

String vURL = request.getContextPath();
%>

<head>
<style>
/*=====header=======*/
html{
	width: 100%;
	height: 100%;
}
body{
	width: 100%;
	height: 100%;
	background-color: white;
	font-size: 21px;
}
ul {
	width: 100%; /*★*/
	height:140px; /*★*/
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: tan; /*★*/
	display: flex; /*★*/
	justify-content: center; /*★*/
}

li {
	margin: 30px;
	float: left;
	width: 250px; /*★*/
}

li a, .dropList {
	display: inline-block;
	color: white;
	font-weight: bold;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropList {
	background-color: tan;
	color: gray;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute; 
	background-color: tan;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: tan;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.button{
	width: 120px;
	height: 40px;
	background-color: white;
	color:Gray;
	border: none;
	font-size: 20px;
	cursor: pointer;
}

.middle img{
	width: 100%;
	height: auto;
}
/*======================*/
#cafeList {  /*div id*/
	width: 100%;
	margin:0 auto; 
	text-align: center;
}

#cafeList p { /*제목 <p>*/
	color: tan;
	font-weight: bold;
	font-size:40px;
}

#cafeList .search{
	color: tan;
	font-size: 18px;
	margin: 15px 0px 0px 500px;
	cursor: pointer;
}

#cafeList form{ /*form*/
	width: 100%;
	display: flex;
	justify-content: center;
}

#cafeList table, th{
	width: 800px;
	font-size: 18px;
	border:1px solid tan;
}

#cafeList .wri{
	border-style:none;
	background-color: tan;
	color:white;
	font-weight: bold;
	width:20%;
}

#cafeList .date{
	border-style:none;
	background: tan;
	color:white;
	font-weight: bold;
	width:100%;
}

#cafeList .tit{
	border-style:none;
	background: tan;
	color:white;
	font-weight: bold;
	width:100%;
}

#cafeList .cont{
	border-style:none;
	background: tan;
	color:white;
	font-weight: bold;
	width:100%;
}

 #cafeList input[type=text], textarea{
	width:100%;
	border: 1px solid tan;
	cursor: pointer;
}

#cafeList .wri1 {
	border:none;
}
#cafeList .date1 {
	border:none;
}
#cafeList .tit1 {
	border:none;
}
#cafeList .cont1 {
	border:none;
}
/*=====footer============*/
html{
	width: 100%;
	height: 100%;
}
body{
	width: 100%;
	height: 100%;
	background-color: white;
}
#bottom {
	font-size: 17px;
	text-align: center;
	width:100%;
	height: /* 170px; */ auto;
	margin:/*  0px 0px ; */ auto;
	background-color: Tan;
}
</style>

<meta charset="UTF-8">
<title>cafeList.jsp</title> <!--게!시!판! -->
</head>

<body>

<div class="header">
<%@include file="./cafeTop.jspf"%>
</div>

<div id="cafeList">
<p>Notice</p>
<!-- 
c:forEach형식>> c:forEach var="변수이름" items="배열과 같은 집합체" /몸체/ /c:forEach
 -->
<c:forEach var="dtoS" items="${dtoS}">
	<c:if test="${dtoS != null }">

<!-- ★자바코드 대신 jQuery+JSTL적용하기
★c:forEach형식>> c:forEach var="변수이름" items="배열과 같은 집합체" /몸체/ /c:forEach
ArrayList<cafeDTO> dtoS = (ArrayList<cafeDTO>)request.getAttribute("dtoS");

if(dtoS != null){
	for(int idx=0; idx < dtoS.size(); idx++) { //ArrayList는 length대신 size사용
		
		int listNo;
		String listName, listPwd,  listTitle, listContent, listLogtime;		

		listNo = dtoS.get(idx).getList_no();
		listName = dtoS.get(idx).getList_name();
		listPwd = dtoS.get(idx).getList_pwd();
		listTitle = dtoS.get(idx).getList_title();
		listContent = dtoS.get(idx).getList_content();
		listLogtime = dtoS.get(idx).getList_logtime();

-->
<p class="search">
<!-- ↓폼네임으로 보내는 방법 >> 폼네임 frmUpd / frmDel ////dtoS.get(idx).getList_no()-->
<span onClick="valSend('frmUpd', '${dtoS.list_no}', '${dtoS.list_pwd}')">[수정]</span>
<span onClick="valSend('frmDel', '${dtoS.list_no}', '${dtoS.list_pwd}')">[삭제]</span>
<span onclick="location.href='<%=vURL%>/cafeWrite.jsp'">[글쓰기]</span>
<span onclick="location.href='<%=vURL%>/cafeListPaging.jsp'">[목록 리스트]</span>
</p>

<form method="post" name="gueFrm" action="<%=vURL%>/cafeBook.do?category=frmChk">
	<input type="hidden" name="gubun" value="nice1">
	<input type="hidden" name="list_no" value="no">
	<input type="hidden" name="list_pwd" value="pwd">
	
<table>
<tr>
<td class="wri">작성자</td>
<td class="wri1">
<input type="text" id="name" name="list_name" style="height:30px; width:200px;" autofocus
<%-- value="<%=listName%>"></td> --%>
value="${dtoS.list_name}"></td>
									
<td class="date">날짜</td>
<td class="date1">
<input type="text" id="logtime" name="list_logtime" style="height:30px; width:200px;"
value="${dtoS.list_logtime}"></td>
</tr>

<tr>
<td class="tit">제목</td>
<td colspan="3" class="tit1">
<input type="text" id="title" name="list_title" style="height:30px; width:600px;"
value="${dtoS.list_title}"></td>
</tr>

<tr>
<td class="cont">내용</td>
<td colspan="3" class="cont1">
<textarea id="content" name="list_content" style="height:300px; width:600px;"
>${dtoS.list_content}</textarea>
</tr>
</table>

</c:if>
</c:forEach>

<c:if test="${dtoS == null}">
		response.sendRedirect(vURL+ "/cafeBook.do?category=list");
	dtoS = (ArrayList)request.getAttribute("dtoS");
</c:if>
<!-- 자바코드
	}//for
}
else{  //자체적으로 컨트롤러를 거쳐옴 >> 컨트롤러를 거쳐서 dtoL!=null 조건 충족 > for문 실행 후 출력
	response.sendRedirect(vURL+ "/cafeBook.do?category=list");
	dtoS = (ArrayList)request.getAttribute("dtoS");
}
-->
</form>
</div><br>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>

<script>
function valSend(gubun, no, pwd){ //formName= gueFrm
	document.gueFrm.gubun.value= gubun;
	document.gueFrm.list_no.value= no;
	document.gueFrm.list_pwd.value= pwd;
	document.gueFrm.submit();
}
</script>
</html>
