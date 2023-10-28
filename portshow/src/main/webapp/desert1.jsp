<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>desert1.jsp</title>
</head>
<body>
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
.desert1{
width: 100%;
height: 100%;
}

.desert1 p{
float: left;
padding: 50px;
font-size: 27px;
font-weight: bold;
}

.desert1 hr {
border: 2px solid gray;
width: 88%;
float: left;
margin: -55px 45px; /*텍스트와 거리, 오른쪽으로 이동*/
}


.desert1 .img{ 
width: 450px;
height: 500px;
float: left;
padding: 10px;
}

.desert1 .txt{
text-align: left;
font-size: 20px;
font-weight: normal;
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

<div class="desert1">
<p>팥빙수</p><br>
<hr>

<img src="<%=vImgURL %>/de1.png" class="img">
<p class="txt">부드러운 우유 베이스에 달콤한 팥과 인절미, 고소한 견과류, 쫀득한 바닐라<br>
젤라또가 조화롭게 어우러진 클래식 젤라또 빙수</p>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>
