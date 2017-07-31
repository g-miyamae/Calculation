<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="error" value="${error}"/>
	<h2><c:out value="${error}"/></h2>

	<form action="/Calculation/CalculationServlet" method="get" name="namber" >

	<input type="hidden" name="action" value="namber">


		<input type="number" name="calculationNamber1" placeholder="数値を入力してください" required >

		<select name="example">
			<option value="+">＋</option>
			<option value="-">－</option>
			<option value="*">×</option>
			<option value="/">÷</option>
		</select>

		<input type="number" name="calculationNamber2" placeholder="数値を入力してください" required >

		<input type="submit" value="計算する"><br>

	</form>

</body>
</html>