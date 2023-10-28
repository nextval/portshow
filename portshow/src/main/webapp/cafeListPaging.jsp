<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 	import="java.util.ArrayList" %>
<%@page 	import="javax.servlet.ServletRequest" %>
<%@page 	import="javax.servlet.ServletResponse" %>
<%@page import="cafeBook.cafeDTO"%>
<%@page import="cafeBook.cafeDAO"%>
<%@page import="java.net.URLEncoder"%>

<!DOCTYPE html>
<html>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");

String vURL = request.getContextPath();
String vImgURL = request.getContextPath(); //절대경로를 가져옴
	//out.println("지금 경로확인==>"+vURL);
vImgURL += "/cafeBookFrame/img/";

String msg=request.getParameter("msg"); 
%>
<head>

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
.cafeList {  /*div id*/
	width: 80%;
	margin:0 auto; 
	/* width: 1180px; */
	text-align: center;
}

.cafeList p { /*제목 <p>*/
	color: tan;
	font-weight: bold;
	font-size:40px;
}

.cafeList .search{
	margin: 15px 0px 0px 630px;
}

.cafeList form{
	width: 100%;
	display: flex;
	justify-content: center;
}

.cafeList table{
	width: 100%;
	font-size: 18px;
}

.cafeList .rows {
	text-align: center;
}
.cafeList .row {
	color: white;
	font-weight: bold;
	font-size: 17px;
	background-color: tan;
	/* width: calc(100% /4); */
	width: 260px;
}
.cafeList .trClick {
	cursor: pointer;
}
.cafeList .text{
	width: 300px;
	height: 25px;
}

.cafeList .searchBtn{
	width: 50px;
	height: 30px;
	cursor: pointer;
	font-size: 19px;
	font-weight: bold;
	margin: 0px 0px 0px 360px;
}

#pageWrapper{
	display: flex;
	justify-content: center;
}

.pageItem{
	display: block;
	width: 50px;
	height: 50px;
	line-height: 50px;
	border: 1px solid  tan;
	text-align: center;
	background-color: white;
	color: gray;
	font-weight: bold;
	font-size: 22px;
	text-decoration: none;
	margin: 15px 3px 15px 0px;
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

<meta charset="UTF-8">
<title>cafeListPaging.jsp</title>
</head>

<body>

<div class="header">
<%@include file="./cafeTop.jspf"%>
</div>


<div class="cafeList">
<p>Notice</p>

<p class="search">
<!-- <span> <input type="text" class="text" placeholder="작성자를 입력하세요">
<input type="button" class="searchBtn" value="검색"> -->
<span class="searchBtn" onclick="location.href='<%=vURL%>/cafeWrite.jsp'">[글쓰기]</span>
</p>

<form method="post" name="listFrm" id="listFrm" action="<%=vURL%>/cafeBook.do?category=list">
	<input type="hidden" name="list_no"> 
	<input type="hidden" name="list_name">
	<input type="hidden" name="list_title">
	<input type="hidden" name="list_content">
	<input type="hidden" name="list_logtime">
<table>
<tr class="rows">
	<td class="row">NO</td>
	<td class="row">제목</td>
	<td class="row">작성자</td>
	<td class="row">등록일</td>
</tr>

<%
ArrayList<cafeDTO> dtoL = (ArrayList<cafeDTO>)request.getAttribute("dtoL");

if(dtoL == null) {
	response.sendRedirect(vURL + "/cafeBook.do?category=listPaging"); //category를 찾아서 controller를 다녀온다 (자체실행)
	dtoL = (ArrayList)request.getAttribute("dtoL");
} 
else {  //Outer If >> 254Line까지 연결 >> 10개의 레코드씩 출력되게끔
	int totalRecord = dtoL.size();
	int recPerPage = 10; //페이지당 보여질 레코드 수
	int pagePerBlock = 10; //블럭당 보여질 페이지 수
		
	int nowPage = 0; //현재 페이지 위치
	int nowBlock = 0; //현재 블럭 위치
		
	int totalPage = (int)Math.ceil((double)totalRecord / recPerPage); //총 페이지 수
	int totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock); //총 블럭 수
		
	//페이지 클릭하면 같은 페이지에서 계속 리로드된다(컨트롤러 갔다 옴)
	if (request.getAttribute("nowPage") != null) { //controller에서 보낸 nowPage값을 getAttribute로 받고, 그 값이 null이 아니라면
		nowPage = Integer.parseInt((String)request.getAttribute("nowPage"));
	}
	if (request.getAttribute("nowBlock") != null) {//받아온 nowBlock 값이 null이 아니라면
		nowBlock = Integer.parseInt((String)request.getAttribute("nowBlock"));
	}
		
	int recOfBeginPage = nowPage*recPerPage; //시작 페이지의 레코드 값
	int pageOfBeginBlock = nowBlock*pagePerBlock; //시작 블럭의 페이지 값
	
//----------------------------------------------------------------변수 정의

if(dtoL != null && dtoL.size() != 0) {
	for(int idx=recOfBeginPage ; idx < (recOfBeginPage+recPerPage); idx++) { //숫자 클릭할때마다 레코드를10개씩 출력하게끔 반복한다. 
		if(idx == totalRecord) { break;} 
		cafeDTO dto = (cafeDTO)dtoL.get(idx);
		
		int listNo;
		String listName, listTitle, listContent, listLogtime;
		listNo = dto.getList_no();
		listName = dto.getList_name();
		listTitle = dto.getList_title();
		listContent = dto.getList_content();
		listLogtime = dto.getList_logtime();
%>
<!--onClick="valSend('<%=listNo%>','<%=listTitle%>', '<%=listName%>', '<%=listContent%>', '<%=listLogtime%>')" -->
<%-- <tr class="trClick" onClick="valSend('<%=listNo%>')"> --%>
<tr class="trClick" onClick="valSend('<%=listNo%>')"> 
	<td><%=listNo%></td>
	<td><%=listTitle%></td>
	<td><%=listName%></td> 
	<td><%=listLogtime%></td>
</tr>

<%  } //for  %>

</table>
</form>

<div id="pageWrapper">
<%   // << 클릭시
if (totalRecord != 0) {
	if (nowBlock > 0) {
%>
<a class="pageItem" href="<%=vURL%>/cafeBook.do?category=listPaging&nowBlock=<%=nowBlock - 1%>&nowPage=<%=((nowBlock - 1) * pagePerBlock)%>&totalRecord=<%=(totalRecord)%>">
	《 </a>
<%
	} //nowBlock>0
%>

<%  //숫자 클릭시
for (int idx = pageOfBeginBlock ; idx < (pageOfBeginBlock + pagePerBlock); idx++) { %>
<a class="pageItem" href="<%=vURL%>/cafeBook.do?category=listPaging&nowBlock=<%=nowBlock%>&nowPage=<%=idx%>&totalRecord=<%=(totalRecord)%>">
	<%=(idx + 1)%>
</a>
<% if ((idx + 1) == totalPage) { break; } %>
<% } //for %>

<%   // >> 클릭시
if (totalBlock > nowBlock + 1) {  %>
<a class="pageItem" href="<%=vURL%>/cafeBook.do?category=listPaging&nowBlock=<%=nowBlock + 1%>&nowPage=<%=((nowBlock + 1) * pagePerBlock)%>&totalRecord=<%=(totalRecord)%>">
》
 </a>

<%
	}
  } 
}
else  {
	out.println("등록된 게시물이 없습니다.");
}

} //outer if문(!=null)
%>
</div>
</div>

<div class="footer">
<%@include file="./cafeBottom.jspf"%>
</div>

</body>

<script>
	function valSend(no, name, title, content, logtime){
		var obj= document.getElementById("listFrm");
	
			obj.list_no.value= no;
			obj.list_name.value= name;
			obj.list_title.value= title;
			obj.list_content.value= content;
			obj.list_logtime.value= logtime;
			obj.submit();
	}
	function valSend(no){ //contents에서 수정글에서 content부분에  enter치면> Error발생 >> enter입력해도 글 수정될 수 있도록
		var obj = document.getElementById("listFrm");
		obj.list_no.value= no;
		obj.submit();
	}

</script>
</html>
