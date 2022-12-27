<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> cartList;
		
		if(session.getAttribute("cartList") == null) { %>
			<script type="text/javascript">
				alert('저장되어 있는 상품이 없습니다.');
				window.location.href= './productlist.jsp';
			</script>
	<%	} else {
			cartList = (List<String>) session.getAttribute("cartList");
			for(String id : cartList) {
				out.println(id + "<br>");
			}
		}	
	%>
</body>
</html>