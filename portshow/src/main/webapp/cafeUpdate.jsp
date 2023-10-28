<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="java.util.ArrayList" %>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="cafeBook.cafeDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafeUpdate.jsp</title>

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
#wrapCafeWri {  /*div id*/
	width: 100%;
	margin:0 auto; 
	text-align:center;
}

#wrapCafeWri p{ /*제목*/
	color: tan;
	font-weight: bold;
	font-size:40px;
}
#wrapCafeWri form{ /*form*/
	width: 100%;
	display: flex;
	justify-content: center;
}

#wrapCafeWri table, th{
	width: 800px;
	font-size: 18px;
	border: 1px solid tan;
}

#wrapCafeWri .mainList{
	border-style: none;
	background-color: tan;
	color:white;
	font-weight: bold;
	width:100%;
	
}
#wrapCafeWri input[type=text], textarea{
	width:100%;
	border: 1px solid tan;
	cursor: pointer;
}
#wrapCafeWri .list1, .list2, .list3, .list4{
	border:none;
}
.btn { text-align:center;}
.submit{
width: 70px;
height: 40px;
cursor: pointer;
background-color: tan;
color: white;
font-size: 19px;
font-weight: bold;
border-style: none;
text-align: center;
}
.reset{
width: 70px;
height: 40px;
cursor: pointer;
background-color: tan;
color: white;
font-size: 19px;
font-weight: bold;
border-style: none;
text-align: center;
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
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String vURL = request.getContextPath();

ArrayList<cafeDTO> dtoS = (ArrayList<cafeDTO>)request.getAttribute("dtoS");
	//System.out.println(dtoS.get(0).getList_no()); //내용 넘어오는것 확인 완료
	
cafeDTO dtoSel = dtoS.get(0);
String listNo = (String)request.getAttribute("listNo");
	//out.println("컨트 frmUpd에서 넘어온 넘버===>"+listNo); //256확인
%>

<div class="header">
<%@include file="./cafeTop.jspf"%>
</div>

<div id="wrapCafeWri">
<p>cafeUpdate</p>

<form method="post" action="<%=vURL%>/cafeBook.do">
	<input type="hidden" name="category" value="cafeUpd">
	<input type="hidden" name="list_no" value="<%=listNo%>">
						<!-- name은 컨트롤러에서 호출하는 이름-->
	<!--out.println("upd넘버>>"+%=listNo%>);  ####여기도 확인됨 -->
<table class="box" border="1">
<tr>
<td class="mainList">작성자</td>
<td class="list1">
<input type="text" class="writer" name="list_name" style="height:30px; width:200px;"
value="<%=dtoSel.getList_name()%>" autofocus></td>
					
<td class="mainList">비밀번호</td>
<td class="list2">
<input type="text" class="pwd" name="list_pwd" style="height:30px; width:200px;"
value="<%=dtoSel.getList_pwd()%>"></td>
</tr>

<tr>
<td class="mainList">제목</td>
<td colspan="3" class="list3">
<input type="text" class="title" name="list_title" style="height:30px; width:670px;"
value="<%=dtoSel.getList_title()%>"></td>
</tr>

<tr>
<td class="mainList">내용</td>
<td colspan="3" class="list4">
<textarea class="content" name="list_content" style="height:300px; width:670px;">
<%=dtoSel.getList_content()%></textarea></td>
</tr>
</table>	

</div> 
<p class="btn">
<input type="submit" value="Update" class="submit">
<input type="reset" value="Reset" class="reset">
</p>
</form>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>
</html>