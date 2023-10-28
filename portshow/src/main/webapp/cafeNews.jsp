<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeNews.jsp</title>
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

.news{
	text-align:center;
	font-size: 16px;
}
h3{
	text-align:center;
    font-size: 22px;
    font-weight: 700;
    color: #3a466a;
    line-height: 1.59;
   	margin: 0;
    padding: 40px;
}
.titleImg img{
	margin:0 auto 80px;
	vertical-align: middle;
    border: none;
}
img{
	vertical-align: middle;
    border: none;
}

.content{
	witdh:100%;
	 margin: 0 auto 60px;
	  display: table;
}
.viewImg img{
	max-width:700px;
	vertical-align: middle;
    border: none;
	display:inline-block;
	vertical-align:top
}
.viewImgs img{
    width: 340px;
	padding:0 0 0 50px;
}
.content .txt{
    padding: 0 40px 0 0;
	vertical-align:top
}
.content>div{
	display:table-cell;
}
.content p{
    margin-top: 30px;
    vertical-align:top
}
p{
	display: block;
	margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
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


<div class="news">

<h3>그때, 우리가 만난 꽃의 사계절<br>블루밍 블렌드</h3>
<div class="titleImg">
	<p class="viewImg">
		<img src="./cafeBookFrame/img/v2.jpg">
	</p>
</div>
<div class="content">
	<div class="txt">
		<p>언젠가, 커피가 사진기가 되어준 적이 있어요.<br>
		보통 사진기는 그날의 풍경을 단편적으로 찍어주잖아요.<br>
		그런데 커피는 창문 바깥에서 흔들리고 있는<br>
		꽃들의 비밀스러운 속삭임이나<br>
		너와 내가 함께한 순간의 고요함 같은,<br>
		그런 장면을 선명하게 담아<br>
		제 마음속에 팩스로 보내주는 느낌이더라고요.</p>
	</div>
	<div class="viewImgs">
		<img src="./cafeBookFrame/img/v3.jpg">
	</div>
</div>

<div class="content">
	<div class="viewImgs">
		<img src="./cafeBookFrame/img/v4.jpg">
	</div>
		<div class="txt">
		<p>그리고 저는<br>
		기억할 만한 장면에 플래시를 터트려주었던 커피가<br>
		나중에 마음속 추억으로 꽃 핀다는 것을 알게 되었죠.<br>
		개인적으로 커피를 마신다는 건,<br>
		맛과 향으로 기억되는 순간과 장면을 가지게 된다는 것과<br>
		다르지 않은 것 같아요.<br>
		그 맛에 개성과 또렷한 색체, 기억이 더해지면<br>
		그 순간에 분명 꽃이 피는 순간과 닮았을 거라고 믿고요.<br>
		저는 이 커피의 이름을 블루밍 블렌드라고 짓게 됐어요.<br>
		꽃은 사계절 내내 피는데,<br>
		많은 사람들이 특정한 꽃을 기다리고 또 추억하니까요.</p>
	</div>
</div>	

	<div class="txt">
	<p>너와 함께한 순간의 장면이<br>
	선명하게 피어난 순간<br>
	그때,<br>
	우리가 만난 꽃의 사계절<br><br>
	Blooming Blend<br><br>
	쉽고 재밌는 커피 이야기가 필요한 순간,<br>
	Hello Again<br><br><br><br></p>
	</div>
</div>


<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>