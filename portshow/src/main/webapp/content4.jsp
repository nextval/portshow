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

.content4 {
	text-align: center;
	font-size: 18px;
}
.content4 .h{
	position: relative;
    padding: 80px 0 0;
        line-height: 1.57;
}

.content4 p{
	font-size: 16px;
}
.content4 img{
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

<div class="content4">
	<div class="h">
	<h3>OPEN / 전남도청점</h3> <br>
	<span class="date">2022/12/22</span>
	</div>

	<br>
	<p><img src="<%=vImgURL%>/con12.jpg"></p>
	<p><br>
	자연과 공존하는 신도시 남악에<br>
	#전남도청점 이 새로 오픈하였습니다.<br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con13.jpg"></p>
	<p><br>
	깔끔하고 정갈한 도로와<br>
	그 사이를 잠깐 벗어나면 반겨주는<br>
	거대한 자연의 풍경을 즐겨보세요<br><br>
	
	통유리창과 폴딩 도어가 인상적인 전남도청점이<br>
	도시 속 카페의 편안함과<br>
	바깥의 시원한 바람을 연결해 주며<br>
	기분 좋은 휴식처가 되어줄 거예요 <br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con14.jpg"></p>
	<p><br>
	드넓은 산과 낭만적인 수변공원,<br>
	멋진 저수지의 풍경을 거닐며<br>
	산책하기 좋은 곳, <br><br>
	반듯하게 지어진 신도시의<br>
	맑은 도시 풍경으로<br>
	활기찬 하루가 시작되는 곳<br>
	우리동네 카페 전남도청점입니다.<br>
	</p><br>

	<p>
	New Open <br>
	전남도청점<br>
	전라남도 무안군 삼향읍 대죽동로 16번길 31<br>
	</p><br><br>
	
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>


</body>

<script>

</script>
</html>