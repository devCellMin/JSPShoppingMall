<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="Database.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	:root {
		--bgcolor: #020715;
		--text_color : #FFFFFF;
		--pageTitle_bgcolor : lightgray;
		--product_border: lightgray;
	}
	*, html, body {margin: 0;padding: 0; box-sizing: border-box;}
	html, body {width: 100%; height: 100%;}
	a {color: #000000; text-decoration: none; cursor: pointer;}
	
	.pageTitle {
		width: 100%;
		background-color: var(--pageTitle_bgcolor);
		text-align: center;
	}
	.pageTitle > p {
		width: 100%;
		display: block;
		margin: 0 auto;
		padding: 70px 0;
		font-size: 60px;
		white-space: pre-line;
	}
	#info_wrap {
		width: 1100px;
		margin: 30px auto 130px auto;
		padding: 30px 0;
		display: flex;
		border: 1px solid var(--product_border);
	}
	#product_Image {
		width: 600px;
		hegiht: 600px;
		padding: 10px;
		object-fit: contain;
	}
	#product_info {
		width: 500px;
		padding: 10px 0 10px 20px;
		position: relative;
	}
	#product_info>h2 {
		font-size: 30px;
		padding: 0 0 20px;
	}
	.description, #productId, .manufacturer, .category, .unitsInStock {
		font-size: 17px;
		padding: 10px 0;
	}
	.price {
		position: absolute;
		bottom: 80px;
		font-size: 38px;
		font-weight: 500;
	}
	#product_info>a {
		padding: 15px 30px;
		font-weight: bold;
		cursor: pointer;
		display: block;
		position: absolute;
		bottom: 10px;
	}
	#prod_order {
		left: 20px;
		color: black;
		background-color: lightgreen;
	}
	#prod_addList {
		left: 192px;
		color: black;
		background-color: lightblue;
	}
	#prod_list {
		left: 326px;
		color: white;
		background-color: black;
	}
	
</style>
</head>
<body>
	<%@ include file="../include_part/header.jsp" %>
	<%
		Product product = ProductRepository.getInstance().getProductById(request.getParameter("prodID"));
		DecimalFormat df = new DecimalFormat("###,###");
	%>
	<div class = "pageTitle">
		<p>상세보기</p>
	</div>
	<div id="info_wrap">
		<img id="product_Image" alt="product_Image" src="./images/<%= product.getFilename() %>">
		<div id="product_info">
			<h2><%= product.getPname() %></h2>
			<p class="description"><%= product.getDescription() %></p>
			<p id="productId">상품 코드 : <span><%= product.getProductId() %></span></p>
			<p class="manufacturer">제조사 : <%= product.getManufacturer() %></p>
			<p class="category">분류 : <%= product.getCategory() %></p>
			<p class="unitsInStock">남은 수량 : <%= product.getUnitsInStock() %></p>
			<p class="price"><%= df.format(product.getUnitprice()) %> 원</p>
			<a id="prod_order">장바구니 추가</a>
			<a id="prod_addList">장바구니</a>
			<a id="prod_list" href="./productlist.jsp">상품 목록</a>
		</div>
	</div>
	<%@ include file="../include_part/footer.jsp" %>
	<script type="text/javascript">
		window.onload = ()=> {
			prod_order.onclick = ()=> {
				if(confirm('장바구니에 상품을 추가하시겠습니까?')) {
					window.location = `./addCart.jsp?add_prodID=<%= product.getProductId() %>`;
				}
			}
			prod_addList.onclick = ()=> {
				if(confirm('장바구니로 이동 하시겠습니까?')) {
					window.location = `./cart.jsp`;
				}
			}
		}
	</script>
</body>
</html>