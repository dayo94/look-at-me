<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<div>
	name: <%=request.getParameter("name") %><br>
	content: <%=request.getParameter("content") %><br><br>
	
	<%=request.getParameter("name") %>님, <%=request.getParameter("content") %> 
</div>
<hr>