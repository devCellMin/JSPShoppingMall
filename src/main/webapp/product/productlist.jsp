<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
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
	#product_wrap {
		width: 1280px;
		min-height: 700px;
		margin: 10px auto;
		padding: 10px;
		display: flex;
		list-style: none;
	}
	
	#product_wrap>li {
		width: calc(100% / 4);
		height: 590px;
		margin: 0 10px;
	}
	
	.product {
		width: 100%;
		height: 550px;
		display: block;
		text-align: center;
		margin: 20px auto;
		position: relative;
		border: 2px solid var(--product_border);
	}
	
	.product>img {
		display: block;
		width: 290px;
		height: 290px;
		margin: 0 auto;
	}
	.product>h3 {
		padding: 10px;
		margin-bottom: 10px;
		font-size: 25px;
	}
	.product>p {
		display: block;
		width: 290px;
		margin: 10px auto;
	}
	.price {
		font-size: 20px;
		position: absolute;
		bottom: 60px;
	}
	.product>a {
		padding: 7px 20px;
		color: var(--text_color);
		background-color: var(--bgcolor);
		cursor: pointer;
		display: block;
		position: absolute;
		bottom: 20px;
		left: 50%;
		transform : translate(-50%);
	}
</style>
</head>
<body>
	<%@ include file="../include_part/header.jsp" %>
	<%
		ProductRepository productRepository = ProductRepository.getInstance();
		List<Product> products = productRepository.getAllProducts();
		DecimalFormat df = new DecimalFormat("###,###");
	%>
	<div class = "pageTitle">
		<p>상품목록</p>
	</div>
	<ul id="product_wrap">
	<%
	for(Product product : products) {
	%>
		<li>
			<div class="product">
				<img alt="<%= product.getPname() %>" src="./images/<%= product.getFilename() %>">
				<h3><%= product.getPname() %></h3>
				<p class="description"><%= product.getDescription() %></p>
				<p class="price"><%= df.format(product.getUnitprice()) %></p>
				<a href="./hsShopping.jsp?page=product&prodID=<%= product.getProductId() %>">상세보기</a>
			</div>
		</li>
	<%	} %>
	</ul>
	<%@ include file="../include_part/footer.jsp" %>
</body>
</html>