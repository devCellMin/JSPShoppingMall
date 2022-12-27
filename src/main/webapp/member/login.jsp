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
		--greeting_bgcolor : lightgray;
	}
	*, html, body {margin: 0;padding: 0; box-sizing: border-box;}
	html, body {width: 100%; height: 100%;}
	a {color: #000000; text-decoration: none; cursor: pointer;}
</style>
</head>
<body>
	<jsp:include page="../include_part/header.jsp" />
	
	<div id="login_wrap">
		<h2>Login</h2>
		
		<form id="loginForm" method="post" action="./result.jsp?from='login'">
			<input type="text" name="userID" id="userID" placeholder="ID" autofocus="autofocus">
			<input type="password" name="userPWD" id="userPWD" placeholder="Password">
			
			<div id="btn_wrap">
				<input type="button" id="btnLogin" value="로그인">
				<input type="button" id="btn2Main" value="메인으로">
			</div>
		</form>
	</div>
	
	<jsp:include page="../include_part/footer.jsp" />
	
	<script type="text/javascript">
		window.onload = ()=> {
			btnLogin.addEventListener('click', ()=> {
				if(!userID.value.trim()) {
					alert('아이디를 입력하세요');
					userID.value = '';
					userID.focus();
					return;
				} else if(!userPWD.value.trim()) {
					alert('비밀번호를 입력하세요.');
					userPWD.value = '';
					userPWD.focus();
					return;
				} else {
					loginForm.submit();
				}
			})
		}
	</script>
</body>
</html>