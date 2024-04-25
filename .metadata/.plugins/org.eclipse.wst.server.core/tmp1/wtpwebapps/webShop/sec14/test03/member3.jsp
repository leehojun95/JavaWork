<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    request.setCharacterEncoding("utf-8");
    %>
    
    <!-- JSTL Core태그라이브러리 변수선언 문법 -->
    <c:set var="id" value="hong" scope="page" />
    <c:set var="pwd" value="1234" scope="page"/>
    <c:set var="name" value="${'홍길동' }" scope="page"/>
    <c:set var="age" value="${22 }" scope="page"/>
    <c:set var="height" value="${177 }" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Core태그의 조건문 실습</h3>

<c:if test="${true }">
	<h1>항상 참입니다.</h1>
</c:if>

<c:if test="${11==11 }">
	<h1>두 값은 같습니다.</h1>
</c:if>

<!-- else의 의미 -->
<c:if test="${11!=11 }">
	<h1>두 값은 같습니다.</h1>
</c:if>

<c:if test="${11!=31 }">
	<h1>두 값은 같지 않습니다.</h1>
</c:if>

<c:if test="${(id =='hong') && (name == '홍길동')}">
	<h1>아이디는 ${id }이고, 이름은 ${name } 입니다.</h1>
</c:if>

<c:if test="${age == 22 }">
	<h1>${name }의 나이는 ${age }살 입니다.</h1>
</c:if>

<c:if test="${height > 160 }">
	<h1>${name }의 키는 160보다 큽니다.</h1>
</c:if>

</body>
</html>