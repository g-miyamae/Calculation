<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>計算結果・表示画面</title>
</head>
<body>

	<h1>計算結果は</h1>
	<c:set var="ans" value="${ans}"/>
	<h1>『<c:out value="${ans}"/>』です</h1>



</body>
</html>