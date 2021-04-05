<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${member.id ne null}">
	<c:set var="id" value="${member.id}" />
</c:if>
<c:if test="${member.id eq null}">
	<c:redirect url="loginForm.jsp" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>회원</h2>
	<fieldset>
		<legend>main</legend>
		<h3>${id}로로그인 하셨습니다.</h3>
		<a href="logoutProcess">로그아웃</a><br>
		<c:if test="${id eq 'admin' }">
			<a href="memberList">관리자 모드 접속(회원목록 보기)</a>
		</c:if>
	</fieldset>
</body>
</html>