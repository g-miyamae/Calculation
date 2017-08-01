<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数値入力画面</title>


<script type="text/javascript">

	function calcu(){
		var nam1Elem = document.getElementById("id_nam1");
		var nam2Elem = document.getElementById("id_nam2");
		var nam3Elem = document.getElementById("id_operator");

		alert("数値１：" + nam1Elem.value + "\n数値3：" + nam3Elem.value + "\n数値２：" + nam2Elem.value );

		if(nam3Elem.value=="/"){
			if( nam2Elem.value==0){
				alert("false");
				return false;

			}
			else{
				alert("true");
				return treu;
			}
		}
		else{
			alert("true");
			return treu;
		}

	}

</script>


</head>
<body>

	<form action="/Calculation/CalculationServlet" method="get"
	name="namber" onsubmit="return calcu()">

		<input type="hidden" name="action" value="namber">
		<input type="number" name="calculationNamber1" value='1' required id=id_nam1>

		<select name="operator" id=id_operator>
			<option value="+">＋</option>
			<option value="-">－</option>
			<option value="*">×</option>
			<option value="/">÷</option>
		</select>

		<input type="number" name="calculationNamber2" value='1' required id=id_nam2>
		<input type="submit"value="計算する"><br>

	</form>

</body>
</html>