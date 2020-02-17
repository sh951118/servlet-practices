<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>		<!-- JSTL만의 메소드를 쓸 수있게 해줌  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	<!-- 함수 처리를 쓸 수있게 해줌  -->
<%
	int count = 1;
	pageContext.setAttribute("count1", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL(forEach Tag) test</h1>
	<c:set var='listCount' value='${fn:length(list) }'/>
	<c:forEach items='${list }' var='vo' varStatus='status'>
		${listCount-status.index } -> ${status.index}:${status.count } [${vo.no } : ${vo.name }] <br>
	</c:forEach>
	
	<c:set var='count2' value='20'/>
	====${count }====  <br>	
	====${count1 }==== <br>	 
	====${count2 }==== <br>	
</body>
</html>