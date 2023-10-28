<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="javax.servlet.ServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeStory.jsp</title>
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

.storyMiddle img {
	position: relative;
	width: 550px;
	height: /*600px;*/ auto;
	/*padding: 5px;*/
}

.storyMiddle span{
	font-size: 17px;
	padding: 25px;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
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

<div class="storyMiddle">
<img src="<%=vImgURL %>/coffee.gif">
<span>Almost all my middle-aged and elderly acquaintances, including me, feel about 25, unless we haven't had our coffee, in which case we feel 107. -Martha Beck- <br>
내가 아는 중년과 노년의 지인들은 나를 포함해 커피를 마시지 않을 때를 제외하면 25살 같은 느낌으로 살고 있다. 이 커피를 마시지 않을 때는 107살 정도는 먹은 느낌이지만 <br>
커피는 마시지 않으면 우리를 잠들게 만드는 음료이다<br>
Good communications is just ad stimulating as black coffr, and just as hard to sleep atfer.
-Anne Morrow Lindbergh-<br>
즐거운 대화는 블랙커피처럼 자극적이어서, 대화가 끝난 후에 잠을 설치게 만드는 것이다<br>
</span>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>


</html>
