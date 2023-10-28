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

.content {
	text-align: center;
	font-size: 18px;
}
.content .h{
	position: relative;
    padding: 80px 0 0;
        line-height: 1.57;
}

.content p{
	font-size: 16px;
}
.content img{
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

<div class="content">
	<div class="h">
	<h3>OPEN / 대만 타오위안 쫑메이점</h3> <br>
	<span class="date">2023/02/19</span>
	</div>

	<br>
	<p><img src="<%=vImgURL%>/con1.jpg"></p>
	<p><br>
	"다음엔 대만에서 만날까? <br>
	가장 이국적인 곳에서 쉬고 싶어. <br>
	매력적인 경계선에 발을 들이고 <br>
	분위기에 이끌리고 싶은 지금이야." <br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con2.jpg"></p>
	<p><br>
	 더 즐거워지는 곳, <br>
	대만 쫑리 지역 최고 핫플에 <br>
	카페베네 타오위안 쫑메이점이 오픈하였습니다.<br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con3.jpg"></p>
	<p><br>
	일상을 새롭게 여행하고 싶을 때면 <br>
	이제 대만에서 서울의 아침을 맞이해 보세요. <br><br>
	대형 백화점, 영화관, 쇼핑몰로 둘러싸여<br>
	달콤한 휴식을 취하기 좋은 곳 <br><br>
	카페베네 인기 디저트 크로플바를 <br>
	다양하게 즐길 수 있는 곳 <br><br>
	우리동네 카페베네 타오위안 쫑메이점입니다. <br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con4.jpg"></p>
	<p>
	New Open <br>
	中壢中美門市 카페베네 타오위안 쫑메이점<br>
	1F, No.12, Section 1, Zhongmei Rd, Zhongli District, Taoyuan City, Taiwan(R.O.C) <br>
	</p><br><br>
	
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>


</body>

<script>

</script>
</html>