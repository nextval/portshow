<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeJuice.jsp</title>
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
/*=======================*/
.juiceMiddle table{
	margin: auto;
	border: none;
	display: flex; 
	justify-content: center;
	border-spacing: 50px;
}

.juiceMiddle th{
	margin: auto;
	background-color:#f2f2f2;
}

.juiceMiddle img {
	width: 220px;   
	height: 200px;
	/*object-fit: cover; 가로세로 비율은 유지하면서 컨테이너에 꽉 차도록 설정됨*/
	cursor: pointer;
}

.juiceMiddle p{
	font-weight: normal;	
}
.juiceMiddle .img:hover{
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

<div class="juiceMiddle">
<table>
<tr>
<th><a href="./juice1.jsp"><img src="<%=vImgURL %>/ju1.png" class="img"></a>
<p>애플망고 프라페노</p></th>
<th><img src="<%=vImgURL %>/ju2.png" class="img">
<p>애플망고 치즈 젤라또 프라페노</p></th>
<th><img src="<%=vImgURL %>/ju3.png" class="img">
<p>딸기 소보로 프라페노R</p></th>
<th><img src="<%=vImgURL %>/ju4.png" class="img">
<p>생딸기 라떼</p></th>
<th><img src="<%=vImgURL %>/ju5.png" class="img">
<p>문경오미자 뱅쇼</p></th>
</tr>

<tr>
<th><img src="<%=vImgURL %>/ju6.png" class="img">
<p>제주녹차 오트 라떼</p></th>
<th><img src="<%=vImgURL %>/ju7.png" class="img">
<p>제주한라봉 리얼 요거트 프라페노</p></th>
<th><img src="<%=vImgURL %>/ju8.png" class="img">
<p>자몽얼그레이 티</p></th>
<th><img src="<%=vImgURL %>/ju9.png" class="img">
<p>유자 히비스커스 티</p></th>
<th><img src="<%=vImgURL %>/ju10.png" class="img">
<p>애플 시나몬 티</p></th>
</tr>
</table>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>