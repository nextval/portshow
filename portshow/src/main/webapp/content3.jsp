<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content.jsp</title>

<style>
/*=======top===========*/
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
/*========================*/

.content3 {
	text-align: center;
	font-size: 18px;
}
.content3 .h{
	position: relative;
    padding: 80px 0 0;
        line-height: 1.57;
}

.content3 p{
	font-size: 16px;
}
.content3 img{
	width: 700px;
	height: 450px;
}
/*=======bottom===========*/
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

String vURL = request.getContextPath(); //vURL: /ASJ

String vImgURL = request.getContextPath();
vImgURL += "/cafeBookFrame/img/";
%>
 
<div class="header">
<%@include file="./cafeTop.jspf"%>
</div>

<div class="content3">
	<div class="h">
	<h3>OPEN / 신경주역점</h3> <br>
	<span class="date">2022/12/1</span>
	</div>

	<br>
	<p><img src="<%=vImgURL%>/con9.jpg"></p>
	<p><br>
	천년 동안 전해온 이야기가<br>
	살아 숨 쉬며 흐르는 곳 경주에<br>
	#신경주역점 이 새로 오픈하였습니다.<br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con10.jpg"></p>
	<p><br>
	 오랜 기간 이어진 역사의 시작과 끝을<br>
	이곳 신경주역점에서<br>
	달콤한 커피 한잔의 여유로움과 함께 즐겨보세요<br><br>
	밝고 따뜻한 톤으로 오늘을 비추고 있는<br>
	신경주역점이<br>
	여러분의 여행에 설렘을 더해주며 <br>
	역사적인 순간을 환하게 밝혀줄 거에요<br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con11.jpg"></p>
	<p><br>
	천천히 쌓여가는 과거와<br>
	KTX처럼 빠르게 흘러가는 현재를<br>
	역사와 함께하는 미래로 데려다주는 곳, <br><br>
	신경주역 내 마련된 자리로<br>
	열차를 기다리는 동안 편안한 휴식을 취할 수 있는 곳<br>
	우리동네 카페 신경주역점입니다.<br>
	</p><br>

	<p>
	New Open <br>
	신경주역점<br>
	경상북도 경주시 건천읍 신경주역로80 1층<br>
	</p><br><br>
	
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>


</body>

<script>

</script>
</html>