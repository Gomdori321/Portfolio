<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="mainhome.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${path}/resources/mainhome.css">

<style>
ul li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #333;
}
/*메              인 */
.detail_wrap {
	width: 600px;
	margin-top: 10%;
	margin: 0 auto;
	text-align: center;
	font: "malgun gothic";
}


.detailtable th, .detailtable td {
	padding: 5px;
	box-sizing: border-box;
	border-bottom: 1px solid rgba(237, 237, 237, 0.696);
}

.detailtable th {
	text-align: center;
	background-color: #dededebd;
	width: 300px;
	color: rgb(79, 79, 79);
}

.detailtable td {
	width: 500px;
}

.detailtable {
	width: 420px;
	height: 42px;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 0 10px;
	box-sizing: border-box;
}
</style>
</head>

<body>
	<!-- header section starts -->
	<header>
		<h1>
			<a href="#">Mesion Bonita</a>
		</h1>
		<div class="nav">
			<ul>
				<li><a href="/logout">LOGOUT</a></li>
				<li><a href="#">MYPAGE</a></li>
				<li><a href="#">CART</a></li>
				<li><a href="#">COMMUNITY</a></li>
			</ul>
		</div>
	</header>
	<!-- header section end -->

	<!-- 카테고리 코드 -->
	<!--  <div style="position: relative; z-index: 2;">
		<div class="menu" id="menu">-->
		<!-- </div> -->
		<div class="detail_wrap">
			<h2>회원정보</h2>
			
			<form method="post">
				<fieldset>
					<table class="detailtable">
						<tr>
							<th>아이디</th>
							<td>${data.id}</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${ data.address }</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td>${data.hp}</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>${ data.gender }</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${ data.e_mail }</td>
						</tr>
					</table>
				</fieldset>
			</form>

			<a href="/update_user?UserId=${data.id}">수정</a>
			
			<form method="POST" action="/delete">
	
				<input type="hidden" name="UserId" value="${data.id}" /> <input
					type="submit" value="삭제" />
			</form>
		</div>







	</div>
	<!-- </div>  -->
	<!-- products section starts -->
	<div style="position: relative; left: 10px; top: -20px; z-index: 1;">
		<section class="products" id="products"></section>
	</div>

	<!-- footer -->
	<footer>
		<ul id="footer_menu">
			<li>회사약관</li>
			<li>회사소개</li>
			<li>이용안내</li>
			<li>고객센터</li>
			<li>개인정보취급방침</li>
		</ul>
		<div class="footer_box">
			<div class="footers">
				<h3>MesionBonita(주)</h3>
				<ul>
					<li>사업자 등록번호:12345567</li>
					<li>대표이사 홍길동 | 대구광역시 동구 신천동</li>
					<li>전화 1111-2222</li>
				</ul>
			</div>
			<div class="footers">
				<h3>고객센터</h3>
				<ul>
					<li>대구광역시 동구 신천동</li>
					<li>전화 1234-5678</li>
					<li><span>1:1문의 바로가기</span></li>
				</ul>
			</div>
			<div class="footers">
				<h3>전자금융거래 분쟁처리</h3>
				<ul>
					<li>서울특별시 강남구 압구정동</li>
					<li>전화 1588-5678</li>
					<li><span>1:1문의 바로가기</span></li>
				</ul>
			</div>
		</div>
	</footer>
</body>

</html>


