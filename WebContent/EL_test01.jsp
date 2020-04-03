<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%
// 	session.invalidate();

	String str = "5교시....졸립겠네요..";
//우선순위
	pageContext.setAttribute("msg",str);
	request.setAttribute("msg", "그런다고 졸면 될까요?");
	session.setAttribute("msg", "졸음을 개는 건 의지가 아니라 관심입니다.");
	application.setAttribute("msg", "관심을 가져주세요... 제발");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<ul>
		<li>스크립트릿 : <% out.println(pageContext.getAttribute("msg")); %></li>
		<li>표현식 : <%= pageContext.getAttribute("msg") %></li>
		<li>EL문 : ${sessionScope.msg} </li>
		<li>스코프 : ${applicationScope.msg}</li>
	</ul>
</body>
</html>