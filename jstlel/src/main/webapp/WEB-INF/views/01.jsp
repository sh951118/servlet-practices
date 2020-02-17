<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>		<!-- JSTL만의 메소드를 쓸 수있게 해줌  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	<!-- 함수 처리를 쓸 수있게 해줌  -->
<%
	pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 받아보기</h1>
	${iVal }	<br>
	${lVal }	<br>
	${fVal }	<br>
	${bVal }	<br>
	${obj } <br>
	${vo.no } <br>
	${vo.name } <br>
	
	<p style='width:100px; height:100px; border:1px solid #0000ff'>
		${fn:replace(sVal, newLine, "<br>" )}
	</p>
	
	<h1>산술연산 해보기</h1>
	${3+10*20 }	<br>
	${iVal+10 }	<br>
	
	<h1>관계연산 해보기</h1>
	${iVal == 10 }	<br>
	${iVal < 5 }	<br>
	${obj == null }	<br>
	${vo != null }	<br>
	${empty obj }	<br>
	${not empty obj }	<br>
	
	<h1>논리연산 해보기</h1>
	${iVal == 10 && lVal < 10000}	<br>
	${iVal < 5 || lVal - 10 == 0 }	<br>
	
	<h1>요청 파라미터 값 받아보기</h1>
	${param.a } <br>
	${param.email } <br>
	
	<h1>map으로 값 받아보기</h1>
	${map.iVal } <br>
	${map.lVal } <br>
	${map.fVal } <br>
	${map.bVal } <br>
</body>
</html>