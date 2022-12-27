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
	
	#add_prod {
		width: 100%;
	}
	
	#add_prod>table{
		margin: 0 auto;
	}
	
	#add_prod>table tr>th,
	#add_prod>table tr>td {
		padding: 10px;
	}
	#productId, #pname, #unitprice, #manufacturer, 
	#category, #unitsInStock, #condition {
		width: 100%;
		height: 40px;
		padding: 5px;
	}
	
	#description {
		width: 100%;
		height: 50px;
		padding: 5px;
		resize: none;
	}
	#btn_wrap {
		display: flex;
		justify-content: center;
		padding: 20px 0 30px;
	}
	#btnReset, #btnAddProd {
		padding: 10px 25px;
		color: var(--text_color);
		background-color: var(--bgcolor);
		cursor: pointer;
		margin: 0 10px;
	}
</style>
</head>
<body>
	<%@ include file="../include_part/header.jsp" %>
	
	<div class = "pageTitle">
		<p>상품추가</p>
	</div>
	
	<form id="add_prod" method="post" action="./ProcessAddProduct.jsp" enctype="multipart/form-data">
		<table>
			<colgroup>
				<col width="150px">
				<col width="300px">
			</colgroup>
			<tr>
				<th>
					상품 코드
				</th>
				<td>
					<input type="text" id="productId" name="productId">
				</td>
			</tr>
			<tr>
				<th>
					상품명
				</th>
				<td>
					<input type="text" id="pname" name="pname">
				</td>
			</tr>
			<tr>
				<th>
					가격
				</th>
				<td>
					<input type="text" id="unitprice" name="unitprice">
				</td>
			</tr>
			<tr>
				<th>
					상세정보
				</th>
				<td>
					<textarea id="description" name="description"></textarea>
				</td>
			</tr>
			<tr>
				<th>
					제조사
				</th>
				<td>
					<input type="text" id="manufacturer" name="manufacturer">
				</td>
			</tr>
			<tr>
				<th>
					분류
				</th>
				<td>
					<input type="text" id="category" name="category">
				</td>
			</tr>
			<tr>
				<th>
					재고 수
				</th>
				<td>
					<input type="text" id="unitsInStock" name="unitsInStock">
				</td>
			</tr>
			<tr>
				<th>
					상태
				</th>
				<td>
					<input type="text" id="condition" name="condition">
				</td>
			</tr>
			<tr>
				<th>
					이미지
				</th>
				<td>
					<input type="file" id="filename" name="filename" multiple="multiple">
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<div id="btn_wrap">
						<input type="reset" id="btnReset" value="다시입력">
						<input type="button" id="btnAddProd" value="상품등록">
					</div>
				</td>
			</tr>
		</table>
	</form>
	<%@ include file="../include_part/footer.jsp" %>
	
	<script type="text/javascript">
		window.onload = function() {
			btnAddProd.onclick = ()=> {
				if(!productId.value.trim()) {
					alert('상품 코드를 입력하세요.');
					productId.value = "";
					return;
				}else if(!pname.value.trim()) {
					alert('상품명을 입력하세요.');
					pname.value = "";
					return;
				}else if(!unitprice.value.trim()) {
					alert('가격을 입력하세요.');
					unitprice.value = "";
					return;
				}else if(!description.value.trim()) {
					alert('상세정보를 입력하세요.');
					description.value = "";
					return;
				}else if(!manufacturer.value.trim()) {
					alert('제조사를 입력하세요.');
					manufacturer.value = "";
					return;
				}else if(!category.value.trim()) {
					alert('분류를 입력하세요.');
					category.value = "";
					return;
				}else if(!unitsInStock.value.trim()) {
					alert('재고 수량을 입력하세요.');
					unitsInStock.value = "";
					return;
				}else if(!condition.value.trim()) {
					alert('상태를 입력하세요.');
					condition.value = "";
					return;
				}else if(confirm('상품을 추가하시겠습니까?')) {
					add_prod.submit();
				}
			}
		}
	</script>
	
</body>
</html>