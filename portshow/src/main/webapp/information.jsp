<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="java.util.ArrayList" %>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="cafeBook.cafeDTO" %>
<%@page 	import="cafeBook.cafeDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>information.jsp</title>

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
#wrapCafeUpd {
text-align:center;
}

#wrapCafeUpd .memberImg {
width: 100%;
height: 200px;
}
#wrapCafeUpd form{
width: 100%;
height: auto;
}

#wrapCafeUpd table{
margin:auto;
width: 390px;
height: 230px;
border: none;
/*position: relative; position주고 방향으로 테이블위치조정*/
bottom: -130px;
}
#wrapCafeUpd .th{
float: right;
}
#wrapCafeUpd .text{
color: gray;
font-size: 19px;
border:1px solid gray; 
height: 90%;
width: 250px;
}
#wrapCafeUpd .pwd{
color: gray;
font-size: 19px;
border:1px solid gray; 
height: 30px;
width: 250px;
}
#wrapCafeUpd .membership{
font-size: 23px;
font-weight: bold;
}

#wrapCafeUpd .signup {
font-size: 23px;
width: 100px;
height: 50px;
border: none;
background-color: orange;
color: white;
cursor: pointer;
margin: 18px 0px 0px 10px;
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
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String vURL = request.getContextPath();

String vImgURL = request.getContextPath();
vImgURL += "/cafeBookFrame/img/";

ArrayList<cafeDTO> dtoL = (ArrayList<cafeDTO>)request.getAttribute("dtoL");
//System.out.println("infor에 들어온 id----"+ dtoL.size());
String idSession = (String)request.getAttribute("idSession"); //세션값 받음
%>

<div class="header">
<%@include file="./cafeTop.jspf"%>
</div>

<div id="wrapCafeUpd">
<img src="<%=vImgURL %>mem.jpg" class="memberImg">

<%
if(dtoL != null){
	for(int idx=0; idx < dtoL.size(); idx++) { //ArrayList는 length대신 size사용
		String vPwd, vName, vPhone, vEmail;	
	
		vPwd = dtoL.get(idx).getCafe_pwd();
		vName = dtoL.get(idx).getCafe_name();
		vPhone = dtoL.get(idx).getCafe_phone();
		vEmail = dtoL.get(idx).getCafe_email();
%>

<form method="post" action="<%=vURL%>/cafeBook.do?category=inforUpd">
<%-- 	<input type="hidden" name="cafe_id" value="<%=vId%>"> : 지금 들어있는 값을 보내는 것--> 없어도됨!!! --%>
	
<br><div class="membership">회원 정보 수정</div><br>

<!-- ######## -->
<table>
<tr>
	<th class="th">아이디</th>
	<th><input type="text" class="text" name="cafe_id" readonly=readonly value="<%=vId%>"></th>
</tr>

<tr>
	<th class="th">비밀번호</th>
	<th><input type="text" class="text" name="cafe_pwd" value="<%=vPwd%>"></th>
</tr>

<tr>
	<th class="th">이름</th>
	<th><input type="text" class="text" name="cafe_name" value="<%=vName%>"></th> 
</tr>

<tr>
	<th class="th">전화번호</th>
	<th><input type="text" class="text"  name="cafe_phone" value="<%=vPhone%>"></th>
</tr>

<tr>
	<th class="th">이메일</th>
	<th><input type="text" class="text" name="cafe_email" value="<%=vEmail%>"></th>
</tr>
<tr>
</table>
<div>
	<input type="submit" class="signup" value="수정">
</div><br> 

<%
	}
}
%>

</form>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>