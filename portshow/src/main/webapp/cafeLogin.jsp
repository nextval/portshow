<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="cafeBook.cafeDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeLogin.jsp</title>
</head>
<style>
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
#cafeLogin{
text-align: center;
}

#cafeLogin .logImg{
width: 100%;
height: 200px;
}

#cafeLogin form{
width: 100%;
height: auto;
}
#cafeLogin table  {
margin: auto;
width: 30%;
height: 230px;
border: none;
/*position: relative; position주고 방향으로 테이블위치조정*/
bottom: -130px;
}

#cafeLogin .id , .pwd{
color: gray;
font-size: 19px;
border:1px solid gray; 
height: 30px;
width: 200px;
}

#cafeLogin .login{
font-size: 23px;
font-weight: bold;
}

#cafeLogin .logBtn {
font-size: 23px;
width: 30%;
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
<%
request.setCharacterEncoding("UTF-8");

String vURL = request.getContextPath(); // vURL: /ASJ
String vImgURL = request.getContextPath();
vImgURL += "/cafeBookFrame/img/";
%>

<header>
<%@include file="./cafeTop.jspf"%>
</header>

<section> <!--로그인-->
<div id="cafeLogin">
<img src="<%=vImgURL %>/m3.jpg" class="logImg">
<form  action="<%=vURL %>/cafeBook.do?category=cafeLog" method="post"> <!--입력값을 controller로 보냄 -->
	<input type="hidden" name="category" value="cafeLog" >
<table>
<tr>
<br><th class="login">로그인<br><br></th>
</tr>

<tr>
<th><input type="text" class="id" placeholder="Id" name="cafe_id"></th>
</tr>

<tr>
<th><input type="password" class="pwd" placeholder="Password" name="cafe_pwd">
</th>
</tr>

<tr>
<th><input type="submit" class="logBtn" value="로그인"><br><br></th>
</tr>
</table>
</form>
</div>
</section>

<footer>
<%@include file="./cafeBottom.jspf"%>
</footer>

</body>

<script>
</script>
</html>
