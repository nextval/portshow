<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String vMsg = (String)request.getAttribute("vMsg"); //controller에서 보낸 vMsg를 받음
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogProc.jsp</title>
</head>
<body>
<script>
	alert('<%=vMsg%>');
	location.href="<%=request.getContextPath()%>/cafeLogin.jsp";
</script>
</body>
</html>