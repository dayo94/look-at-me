<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />


<h1>로그인</h1>
<hr>
<form action="/member/login" method="post">

<label>아이디<input type="text" name="id" id="id" /></label><br>
<label>비밀번호<input type="text" name="pw" id="pw" /></label><br>

<button>로그인</button>
</form>

</div><!-- .container -->

<c:import url="/WEB-INF/views/layout/footer.jsp" />