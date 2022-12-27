<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	ul {list-style: none;display: flex;}
	header {
		width: 100%;
		background-color: var(--bgcolor);
	}
	#header_wrap {
		width: 1280px;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
	}
	#header_wrap a {
		display: block;
		padding: 20px 30px;
		color: var(--text_color);
		font-size: 17px;
	}
	#logo {
		font-size: 20px;
	}
</style>
</head>
<body>
	<header>
		<div id="header_wrap">
			<a id="logo" href="./hsShopping.jsp">Home</a>
			<ul>
				<li><a href="member/login">로그인</a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="./hsShopping.jsp?page=prodList">상품 목록</a></li>
				<li><a href="./hsShopping.jsp?page=addProd">상품 등록</a></li>
				<li><a href="">상품 수정</a></li>
				<li><a href="">상품 삭제</a></li>
			</ul>
		</div>
	</header>
</body>
</html>