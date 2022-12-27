<%@page import="function.CurrentTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HS Shopping</title>
<style type="text/css">
	:root {
		--bgcolor: #020715;
		--text_color : #FFFFFF;
		--greeting_bgcolor : lightgray;
	}
	*, html, body {margin: 0;padding: 0; box-sizing: border-box;}
	html, body {width: 100%; height: 100%;}
	a {color: #000000; text-decoration: none; cursor: pointer;}
	
	
	main {
		width: 100%;
		min-height: 400px;
		padding-top: 30px;
	}
	.mainGreeting {
		width: 100%;
		background-color: var(--greeting_bgcolor);
		text-align: center;
	}
	.mainGreeting > p {
		width: 100%;
		display: block;
		margin: 0 auto;
		padding: 170px 0;
		font-size: 100px;
		white-space: pre-line;
	}
	#greeting_wrap {
		width: 100%;
		text-align: center;
	}
	#greeting_wrap > h2 {
		padding: 20px;
		font-size: 50px;
		font-weight: 500;
	}
	
	#greeting_wrap > p {
		padding: 10px;
		font-size: 30px;
		font-weight: 400;
	}
</style>
</head>
<body>
	<jsp:include page="./include_part/header.jsp" />
	<%!
		String greeting = "효성 쇼핑몰에 오신것을 환영합니다.";
		String tagLine = "Welcome to HS Shoppingmall";
	%>
	
	<div class = "mainGreeting">
		<p><%= greeting %></p>
	</div>
	
	<main role="main">
		<div id="greeting_wrap">
			<h2><%= tagLine %></h2>
			<p>현재 접속한 시간 : <%= new CurrentTime().getCurrentTime() %></p>
		</div>
	</main>
	<%@ include file="./include_part/footer.jsp" %>
</body>
</html>