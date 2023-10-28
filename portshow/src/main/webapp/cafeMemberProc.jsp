<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String vMsg = (String)request.getAttribute("vMsg"); //controller에서 보낸 vMsg를 받음
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinProc.jsp</title> <!--회원가입시 alert창띄운다. -->
</head>
<body>
<script>
	alert('<%=vMsg %>');
	location.href="<%=request.getContextPath()%>/cafeMember.jsp"; //alert창 띄우고 cafeMember.jsp로 이동
</script>
</body>
</html>