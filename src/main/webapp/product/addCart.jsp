<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
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
		String prodID = String.valueOf(request.getParameter("add_prodID"));
		List<String> cartList;	
	
		if(session.getAttribute("cartList") == null) {
			cartList = new ArrayList<String>();
			cartList.add(prodID);
			session.setAttribute("cartList", cartList); %>
			<script type="text/javascript">
				alert('상품 추가가 완료되었습니다.');
				if(confirm('장바구니로 이동하시겠습니까?')) {
					window.location.href= './cart.jsp';
				}else {
					window.location.href= './productlist.jsp';
				}
			</script>
		<% }else {
			cartList = (List<String>) session.getAttribute("cartList");
			for(String id : cartList) {
				if(id.equals(prodID)) { %>
			<script type="text/javascript">
				alert('선택하신 상품이 이미 장바구니에 존재합니다.');
				if(confirm('장바구니로 이동하시겠습니까?')) {
					window.location.href= './cart.jsp';
				}else {
					window.location.href= './productlist.jsp';
				}
			</script>
		<%			return;
				}
			}
			cartList.add(prodID);
			session.setAttribute("cartList", cartList);	%>
			<script type="text/javascript">
				alert('상품 추가가 완료되었습니다.');
				if(confirm('장바구니로 이동하시겠습니까?')) {
					window.location.href= './cart.jsp';
				}else {
					window.location.href= './productlist.jsp';
				}
			</script>
		<% } %>	
</body>
</html>





