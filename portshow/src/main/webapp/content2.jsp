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

.content2 {
	text-align: center;
	font-size: 18px;
}
.content2 .h{
	position: relative;
    padding: 80px 0 0;
        line-height: 1.57;
}

.content2 p{
	font-size: 16px;
}
.content2 img{
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

<div class="content2">
	<div class="h">
	<h3>OPEN / 백령도 2호점</h3> <br>
	<span class="date">2023/01/19</span>
	</div>

	<br>
	<p><img src="<%=vImgURL%>/con5.jpg"></p>
	<p><br>
	" 백령도로 가지 않을래?<br>
	섬이 건네주는 따스한 일몰과 <br>
	점박이물범들을 보다 보면 <br>
	오늘을 사랑하게 될지도 몰라 " <br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con6.jpg"></p>
	<p><br>
	 하루가 저무는 것이 아쉽지 않은 곳 백령도에<br>
	백령도2호가 오픈하였습니다. <br><br>
	너무 행복해서<br>
	행복의 끝이 걱정될 때면<br><br>
	이제 서해 최북단의 섬에서<br>
	더 큰 행복이 시작되는 것을 지켜보세요 <br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con7.jpg"></p>
	<p><br>
	끝을 알아도 끝이 즐거운 곳 <br>
	오늘이 가장 멋지게 저무는 곳 <br><br>
	커피 한 잔으로<br>
	내가 머무는 곳이 더 자연스러워지는 <br><br>
	우리동네 백령도 2호입니다.<br>
	</p><br>
	
	<p><img src="<%=vImgURL%>/con8.jpg"></p>
	<p>
	New Open <br>
	백령도 2호<br>
	인천광역시 옹진군 백령면 백령로 846-28, 1층 <br>
	</p><br><br>
	
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>


</body>

<script>

</script>
</html>