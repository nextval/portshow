<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeStore.jsp</title>
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
/*=======================*/

.storeMiddle {
	text-align: center;
}
.storeMiddle p {
	margin: 20px;
	font-size: 30px;
	font-weight: bold;
}
.storeMiddle .select{

	font-size: 15px;
	width: 80px;
	height: 30px;
	margin-left: 750px;
}
.storeMiddle .text{
	font-size: 15px;
	width: 200px;
	height: 25px;
}
.storeMiddle .button {
	font-size: 15px;
	width: 80px;
	height: 30px;
	background-color: tan;
	color:white;
	text-weight:bold;
}
.storeMiddle .img{
	width: 245px;
	height: 210px;
	object-fit: cover; /*가로세로 비율은 유지하면서 컨테이너에 꽉 차도록 설정됨*/
	cursor: pointer;
	margin: 20px;
}
.storeMiddle .img:hover{
	opacity: 0.5;
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


<div class="storeMiddle">
<p>Contents</p>
<!-- 	<select name="select" class="select">
		<option value="제목">제목</option>
		<option value="내용">내용</option>
	</select> 

	<input type="text" class="text" placeholder="검색어를 입력하세요">	
	<input type="button" class="button" value="검색"> -->
	<div>
		<a href="./content.jsp"><img src="<%=vImgURL %>/mg1.png" class="img"></a>
		<a href="./content2.jsp"><img src="<%=vImgURL %>/mg2.png" class="img"></a>
		<a href="./content3.jsp"><img src="<%=vImgURL %>/mg3.png" class="img"></a>
		<a href="./content4.jsp"><img src="<%=vImgURL %>/mg4.png" class="img"></a>
	</div>

	<div>
		<img src="<%=vImgURL %>/mg5.png" class="img">
		<img src="<%=vImgURL %>/mg6.jpg" class="img">
		<img src="<%=vImgURL %>/mg7.jpg" class="img">
		<img src="<%=vImgURL %>/mg8.jpg" class="img">
	</div>
</div>
 
<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>