<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeDesert.jsp</title>
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
/*======================*/

.cafeMiddle table {
	margin: auto;
	border: none;
	display: flex; 
	justify-content: center;
	border-spacing: 50px;
}

.cafeMiddle th{
	margin: auto;
	background-color:#f2f2f2;
}

.cafeMiddle img {
	width: 220px;
	height: 200px;
	cursor: pointer;
}
.cafeMiddle p{
	font-weight: normal;
}
.cafeMiddle .img:hover {
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


<div class="cafeMiddle">
<table>
<tr>
<th><a href="./desert1.jsp"><img src="<%=vImgURL %>/de1.png" class="img"></a>
<p>팥빙수</p></th>
<th><img src="<%=vImgURL %>/de2.png" class="img">
<p>애플망고 빙수</p></th>
<th><img src="<%=vImgURL %>/de3.png" class="img">
<p>제주녹차 빙수</p></th>
<th><img src="<%=vImgURL %>/de4.png" class="img">
<p>생딸기 순우유 롤</p></th>
<th><img src="<%=vImgURL %>/de5.png" class="img">
<p>쿠키엔크림 케이크</p></th>
</tr>

<tr>
<th><img src="<%=vImgURL %>/de6.png" class="img">
<p>당근 치즈 케이크</p></th>
<th><img src="<%=vImgURL %>/de7.png" class="img">
<p>카라멜 시나몬 브레드</p></th>
<th><img src="<%=vImgURL %>/de8.png" class="img">
<p>비벼먹는 페스츄리 초콜릿</p></th>
<th><img src="<%=vImgURL %>/de9.png" class="img">
<p>비벼먹는 페스츄리 딸기</p></th>
<th><img src="<%=vImgURL %>/de10.png" class="img">
<p>생딸기 크림 소보로</p></th>
</tr>
</table>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>