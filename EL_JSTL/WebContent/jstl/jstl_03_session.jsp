<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>c:set</h1>
<h3>세션 데이터 확인</h3>
<hr>

세션 데이터: ${sessionData }<br>

<a href="./jstl_03.jsp">이전 페이지</a>

<hr>

A Key: ${m.A }<br>
B Key: ${m.B }<br><br>

A Key: ${m.get("A") }<br>
B Key: ${sessionScope.m.get("B") }<br><br>

<%
	out.print("A Key: ");
	out.print( ((Map) request.getSession().getAttribute("m")).get("A") );
%>

<hr>

userSession: ${userSession }

</body>
</html>



















