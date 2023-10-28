<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="cafeBook.cafeDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeMember.jsp</title>
</head>
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
/* ========================== */
.cafeMember {
text-align:center;
}

.cafeMember .memberImg {
width: 100%;
height: 200px;
}
.cafeMember form{
width: 100%;
height: auto;
}

.cafeMember table{
margin: auto;
width: 30%;
height: 230px;
border: none;
/*position: relative; position주고 방향으로 테이블위치조정*/
bottom: -130px;
}

.cafeMember .text{
color: gray;
font-size: 19px;
border:1px solid gray; 
height: 30px;
width: 200px;
}
.cafeMember .pwd{
color: gray;
font-size: 19px;
border:1px solid gray; 
height: 30px;
width: 200px;
}
.cafeMember .membership{
font-size: 23px;
font-weight: bold;
}

.cafeMember .signup {
font-size: 23px;
width: 35%;
height: 50px;
border: none;
background-color: orange;
color: white;
cursor: pointer;
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

<body>
<%
request.setCharacterEncoding("UTF-8");

String vURL = request.getContextPath(); //vURL: /ASJ

String vImgURL = request.getContextPath();
vImgURL += "/cafeBookFrame/img/";
%>

<div class="header">
<%@include file="./cafeTop.jspf"%>
</div>

<div class="cafeMember">
<img src="<%=vImgURL %>sub1.jpg" class="memberImg">

<form action="<%=vURL %>/cafeBook.do?category=cafeMember" method="post" >
	<input type="hidden" name="category" value="cafeMember">
<table>
<tr>
	<br><th class="membership">회원 가입</th>
</tr>
<tr>
	<th><br>
	<input type="text" class="text" placeholder="Id" name="cafe_id" >
	</th>
</tr>
<tr>
	<th>
	<input type="password" class="pwd" placeholder="Password" name="cafe_pwd">
	</th>
</tr>
<tr>
	<th>
	<input type="text" class="text" placeholder="Name" name="cafe_name">
	</th>
</tr>
<tr>
	<th>
	<input type="text" class="text" placeholder="Phone" name="cafe_phone">
	</th>
</tr>
<tr>
	<th>
	<input type="text" class="text" placeholder="E-mail" name="cafe_email">
	</th>
</tr>
<tr>
	<th>
	<p></p>
	<input type="submit" class="signup" value="가입신청"><br><br>
	</th>
</tr>

</table>
</form>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>

</html>