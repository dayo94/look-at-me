<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />


<h1>회원가입</h1>
<hr>

<form action="/member/join" method="post">

<label>아이디<input type="text" name="id" id="id" /></label><br>
<label>비밀번호<input type="text" name="pw" id="pw" /></label><br>
<label>닉네임<input type="text" name="nick" id="nick" /></label><br><br>
<button>가입</button>

</form>



</div><!-- .container -->

<c:import url="/WEB-INF/views/layout/footer.jsp" />