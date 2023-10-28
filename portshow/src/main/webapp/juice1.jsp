<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>juice1.jsp</title>
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
.juice1{
width: 100%;
height: 100%;
}

.juice1 p{
float: left;
padding: 50px;
font-size: 27px;
font-weight: bold;
}

.juice1 hr {
border: 2px solid gray;
width: 88%;
float: left;
margin: -55px 45px; /*텍스트와 거리, 오른쪽으로 이동*/
}


.juice1 .img{ 
width: 450px;
height: 500px;
float: left;
padding: 10px;
}

.juice1 .txt{
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

<div class="juice1">
<p>애플망고 리얼 요거트 젤라또 프라페노</p><br>
<hr>

<img src="<%=vImgURL %>/ju1.png" class="img">
<p class="txt">새콤달콤한 애플망고와<br>
리얼 요거트, 요거트 젤라또가 어우러진<br>
블렌디드 음료
</p>
</div>



<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>
