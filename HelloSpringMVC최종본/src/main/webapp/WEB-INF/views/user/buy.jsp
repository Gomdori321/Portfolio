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
.line{
border-bottom:1px solid grey;

}
</style>
</head>

<body>
	<!-- header section starts -->
	<header>
		<h1>
			<a href="/mainhome2">Mesion Bonita</a>
		</h1>
		<div class="nav">
			<ul>
				<li><a href="#">${id} 회원님</a>
				<li><a href="${path}/home">LOGOUT</a></li>
				<c:choose>
					<c:when test="${name eq '관리자'}">
						<li><a href="/index">MYPAGE</a></li>
					</c:when>

					<c:otherwise>
						<li><a href="/home">MYPAGE</a></li>
					</c:otherwise>

				</c:choose>
				<li><a href="#">CART</a></li>
				<li><a href="#">COMMUNITY</a></li>
			</ul>
		</div>
	</header>
	<!-- header section end -->

	<!-- 카테고리 코드 -->
	<div style="position: relative; z-index: 2;">
		<div class="menu" id="menu">
			<ul>
				<li><a href="#menu1">OUTER</a>
					<ul>
						<li><a href="#menu1">CARDIGAN</li>
						<li><a href="#menu1">JUMPER</li>
						<li><a href="#menu1">COAT</li>
						<li><a href="#menu1">JACKET</li>
					</ul></li>

				<li><a href="#menu2">TOP</a>
					<ul>
						<li><a href="#menu2">KNIT</li>
						<li><a href="#menu2">TEE&SHIRT</li>
						<li><a href="#menu2">MTM&HOOD</li>
						<li><a href="#menu2">BLOUSE</li>
					</ul></li>

				<li><a href="#menu3">BOTTOM</a>
					<ul>
						<li><a href="#menu3">STRAIGHT</li>
						<li><a href="#menu3">WIDE</li>
						<li><a href="#menu3">SLACKS</li>
					</ul></li>

				<li><a href="#menu4">DRESS</a>
					<ul>
						<li><a href="#menu4">SKIRT</li>
						<li><a href="#menu4">DRESS</li>
					</ul></li>
				<li><a href="#menu5">ACC</a>
					<ul>
						<li><a href="#menu5">SKIRT</li>
						<li><a href="#menu5">DRESS</li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!-- </div>  -->
	<!-- products section starts -->

	<div style="position: relative; left: 10px; top: -20px; z-index: 1;">
		<section class="products" id="products">
			<div class="box-container">

			<div class="1" style="float: left">
						<h1>주문하기!!!!!!!!!</h1>
						<img src="${data.img}" alt="" style="width: 200px; hight: 3000px;">
					</div>
					<div id="option">

						<div>&nbsp;</div>
						<div>&nbsp;</div>
						<div>&nbsp;</div>
						
						<input name="id" type="hidden" value="${id}" style="background-color:white"/>
						 <p>상품번호 : <input name="pd_num" type="text" value="${data.pd_num}" style="background-color:white"/></p>
						  <p>상품명 : <input name="pd_name" type="text" value="${data.pd_name}" style="background-color:white"/></p>
						  <p>상품 가격 : <input name="price" type="text" value="${data.price}" style="background-color:white" /></p>
					     <p>주소 : <input type="text" name="address"  style="background-color:white"/></p>
						<input name="pd_des" type="hidden" value="${data.pd_des }">
						<input name="img" type="hidden" value="${data.img }">
						<input name="pd_category" type="hidden" value="${data.pd_category }">
						<input name="pd_category_big" type="hidden" value="${data.pd_category_big }">
						<input name="orderCount" type="hidden" value="${data.orderCount }"><div>수량: ${data.orderCount}</div>
						
						<input type="submit" style="border: 2px solid;"value="주문하기">
				
		</section>
	</div>
	<c:if test="${startPage!=1}">
		<a href="/mainhome2?nowPage=${startPage-1}&keyword=${keyword}">&lt;</a>
	</c:if>
	<c:forEach var="idx" begin="${startPage}" end="${endPage}">
		<c:choose>
			<c:when test="${nowPage!=idx}">
				<a href="/mainhome2?nowPage=${idx}&keyword=${keyword}">
					${idx}&nbsp;</a>
			</c:when>
			<c:when test="${nowPage==idx}">
				<b>${idx}&nbsp;</b>
				<!-- 현재껀 진하게 표시 -->
			</c:when>
		</c:choose>
	</c:forEach>
	<c:if test="${endPage!=totalCount}">
		<a href="/mainhome2?nowPage=${endPage+1}&keyword=${keyword}">&gt;</a>
	</c:if>

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


