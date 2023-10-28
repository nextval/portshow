<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeIndex.jsp</title>

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

<div class="middle">
<img src="<%=vImgURL %>/slide1.png" onmouseover="cngImg();" onmouseout="clearTimeout(myVar)"> 
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>


</body>

<script>
var arryImg = [ "<%=vImgURL %>/slide1.png", "<%=vImgURL %>/slide2.png", "<%=vImgURL %>/slide3.png", "<%=vImgURL %>/slide4.png","<%=vImgURL %>/slide5.png"];
var i=0;
let myVar;

function cngImg(){
	
if( i != arryImg.length){ //i가 arryImg의 길이가 아니라면
	document.getElementsByTagName("img")[0].src= arryImg[i]; //인덱스0번의 이미지를 가져온다
	myVar=setTimeout(cngImg, 1000); 
		i++;
	} else{
		i=0; //i초기화 >> 계속 반복
		myVar=setTimeout(cngImg, 1000); 
	}
}
</script>
</html>