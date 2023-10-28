<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="java.util.ArrayList" %>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="javax.servlet.ServletResponse" %>
<%@page 	import="cafeBook.cafeDTO" %>   
<%@page 	import="cafeBook.cafeDAO" %>   
<%@page import="java.net.URLEncoder"%> 
<!DOCTYPE html>
<html>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8"); 

String vURL = request.getContextPath();

cafeDTO dtoChk = (cafeDTO)request.getAttribute("dtoChk");

String gubun = (String)request.getAttribute("gubun");
String no = (String)request.getAttribute("listNo");
String pwd = request.getParameter("list_pwd"); 

	//out.println(dtoChk);
	//out.println("gubun>>"+gubun);
	//out.println("pass>>"+dtoChk.getList_pwd());
%>
<head>
<meta charset="UTF-8">
<title>cafeChk.jsp</title>
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Comic+Neue:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Diphylleia&family=East+Sea+Dokdo&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
#wrapper{margin:0 auto; width:900px; }

body{
	font-family: 'Noto Sans K/R', sans-serif;
	font-size: 20px;
}

#box {
	text-align: center;
	width:100%;
	border-style:none;	
	padding:10%;
}

#td1{
	border-style:none;
	background: tan;
	color:white;
	font-weight: bold;
	width:100%;
}

#td2{
	border: none;
	width:100%;
}

#td3{
	border-style:none;
	background:tan;
	width:100%;
}

input[type=button] {
	background: white;
	color:gray;
	border:1px solid white;
	font-size:20px;
	font-weight: bold;
	width:15%;
	height:40px;
	margin: 10px;
	cursor: pointer;
}

#password{
	width:99%;
	border: 3px solid tan;
	cursor: pointer;
	color:orange;
}

</style>
</head>

<body>

<%
if(dtoChk == null) { //dtoL이 빈 값이라면 , 자체실행
	response.sendRedirect(vURL + "?category=frmChk");
}
%>

<div id="wrapper">

<form name="frmChk" method="post" action="<%=vURL%>?category=frmDel">
	<input type="hidden" name="category" value="frmDel">
	<input type="hidden" name="list_no" value="<%=no%>">
	<input type="hidden" name="list_pwd" value="<%=pwd%>"> 
</form>
<table id="box" border="1";>
<tr>
<td id="td1">** 글을 남기실때 입력하신 비밀번호를 입력하여 주십시오! **</td>
</tr>

<tr>
<td id="td2">
<input type="password" id="password" style="height:30px;"></td>
</tr>

<tr>
<td id="td3">
<input type="button" value="확인" onclick="gueChk()">
<input type="button" value="방명록쓰기" onclick="test()">
</td>
</tr>
</table>

<label for="text"></label>
 </body>
 
 <script>		
var password= document.getElementById("password");
password.focus();

var frmDel;
function gueChk() { /* 목록리스트의 "수정" >> cafeChk.jsp >> 비밀번호 체크까지 34_02 입력한pwd값==dto의 pwd값을 비교함*/
	if( password.value == '<%= dtoChk.getList_pwd()%>') { 
		alert("비밀번호 일치 확인")
		document.frmChk.category.value = "<%=gubun%>"
		document.frmChk.list_no.value = "<%=dtoChk.getList_no()%>"
	
		document.frmChk.action = "<%=vURL%>/cafeBook.do";
		document.frmChk.submit();
		
	} else if( password.value != '<%= dtoChk.getList_pwd()%>') { //비밀번호 불일치 하다면
			alert("비밀번호 확인 하세요"); password.select();
	}
	
	if( '<%=gubun%>' == 'frmDel') {//구분이 frmDel 일 때
		if(password.value == '<%= dtoChk.getList_pwd()%>'){ //pwd가 일치하다면
			document.frmDel.category.value = "<%=gubun%>"
			document.frmDel.list_no.value = "<%=dtoChk.getList_no()%>"		
			
			document.frmDel.action = "<%=vURL%>/cafeBook.do";
			document.frmDel.submit();
		} 
	}
}

</script>
</html>