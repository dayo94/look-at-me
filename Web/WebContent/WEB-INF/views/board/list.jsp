<%@page import="dto.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<Board> bList = (List) request.getAttribute("boardList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border: 1px solid #ccc;
	
	width: 1100px;
	margin: 0 auto; 
}

td {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	
	padding: 5px 10px;
}

tr:hover {
	background-color: #FAFAD2;
}
td:hover {
	background-color: #F3F3C2;
}
</style>


</head>
<body>

<h1>BOARD LIST</h1>

<hr>

<table>
<thead>
<tr>
	<th style="width: 10%">boardno</th>
	<th style="width: 20%">title</th>
	<th style="width: 20%">userid</th>
	<th style="width: 20%">content</th>
	<th style="width: 10%">hit</th>
	<th style="width: 20%">write_date</th>
</tr>
</thead>

<tbody>
<%	for(int i=0; i<bList.size(); i++) { %>
<tr>
	<td><%=bList.get(i).getBoardno() %></td>
	<td><a href="/board/view?boardno=<%=bList.get(i).getBoardno() %>">
			<%=bList.get(i).getTitle() %>
		</a>
	</td>
	<td><%=bList.get(i).getUserid() %></td>
	<td><%=bList.get(i).getContent() %></td>
	<td><%=bList.get(i).getHit() %></td>
	<td><%=bList.get(i).getWrite_date() %></td>
</tr>
<%	} %>
</tbody>
</table>






</body>
</html>