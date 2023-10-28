<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="java.util.ArrayList" %>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="javax.servlet.ServletResponse" %>
<%@page import="cafeBook.cafeDTO"%>
<%@page import="cafeBook.cafeDAO"%>
<%@page import="java.net.URLEncoder"%>

<!DOCTYPE html>
<html>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");

String vURL = request.getContextPath();
%>
<head>
<meta charset="UTF-8">
<title>cafeSingleList.jsp</title> <!-- 리스트의 목록클릭시 -->
<style>

<style>
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

section {
	width: 100%;
	height:/* 830px; */ auto;
	margin-bottom: 250px;
	background-color: white;
}
/*
footer {
width:100%;
height: 200px;
margin:auto;
background-color:tan;
}
*/

ul {
	width: 100%;
	height:140px; 
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: tan; 
	display: flex; 
	justify-content: center;
}

li {
	margin: 30px;
	float: left;
	width: 250px;
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
	background-color: white;
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
	/*background-color: white;*/
	color: gray;
	font-weight:bold;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.button{
	width: 120px;
	height: 40px;
	background-color: white;
	color:Gray;
	font-weight:bold;
	border: none;
	font-size: 20px;
	cursor: pointer;
}

 img{
	width: 100%;
	height: 100%;
}
/*======================*/

#cafeSingle {  /*div id*/
width: 100%;
margin:0 auto; 
width: 750px;
text-align:center;
}
#cafeSingle table, th{
	border: 2px solid tan;
}
#cafeSingle .list { /*제목*/
	color: tan;
	font-weight: bold;
	font-size:40px;
}
#cafeSingle form{ /*form*/
	width: 100%;
	display: flex;
	justify-content: center;
}
#cafeSingle table{
	width: 100%;
	border-style: none;
	font-size: 18px;
}

#cafeSingle .mainList{
	background-color: tan;
	color:white;
	border-spacing: 5px; /*테이블tr간 간격주기 separate이어야 적용가능*/
	border-collapse: separate;
	
}
#cafeSingle input[type=text]{
	width: 800px;
	height: 25px;
	float: left;
	border: none;
}
</style>
</head>

<body>
<header>
<%@include file="./cafeTop.jspf"%>
</header>

<section>
<div id="cafeSingle">
<p class="list">List</p>

<form>
<table>
<tr>
<th class="mainList">작성자</th>
<th><input type="text" class="writer" name="list_name" style="height:30px; width:670px;"></th>
</tr>

<tr>
<th class="mainList">제목</th>
<th><input type="text" class="title" name="list_title" style="height:30px; width:670px;"></th>
</tr>

<tr>
<th class="mainList">내용</th>
<th><input type="text" class="content" name="list_content" style="height:300px; width:670px;"></th>
</tr>

</table>
</form>

</div>
</section>

<footer>
<%@include file="./cafeBottom.jspf"%>
</footer>
</body>
</html>