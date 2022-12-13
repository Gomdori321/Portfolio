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
				<li><a href="user/cartlist/?id=${id}">CART</a></li>
				<li><a href="#">COMMUNITY</a></li>
			</ul>
		</div>
	</header>
	<!-- header section end -->

	<!-- 카테고리 코드 -->
<div style="position: relative; z-index: 2;">
        <div class="menu" id="menu">
            <ul >
                <li><a href="/mainhome2_cb?pd_category=OUTER">OUTER</a>
                    <ul>
                        <li><a href="/mainhome2_c?pd_category_big=CARDIGAN">CARDIGAN</li>
                        <li><a href="/mainhome2_c?pd_category_big=JUMPER">JUMPER</li>
                        <li><a href="/mainhome2_c?pd_category_big=COAT">COAT</li>
                        <li><a href="/mainhome2_c?pd_category_big=JACKET">JACKET</li>
                    </ul>
                </li>
        
                <li><a href="/mainhome2_cb?pd_category=TOP">TOP</a>
                    <ul >
                        <li><a href="/mainhome2_c?pd_category_big=KNIT">KNIT</li>
                        <li><a href="/mainhome2_c?pd_category_big=TEE&SHIRT">TEE&SHIRT</li>
                        <li><a href="/mainhome2_c?pd_category_big=MTM&HOOD">MTM&HOOD</li>
                        <li><a href="/mainhome2_c?pd_category_big=BLOUSE">BLOUSE</li>
                    </ul>
                </li>
        
                <li><a href="/mainhome2_cb?pd_category=BOTTOM">BOTTOM</a>
                    <ul >
                        <li><a href="/mainhome2_c?pd_category_big=STRAIGHT">STRAIGHT</li>
                        <li><a href="/mainhome2_c?pd_category_big=WIDE">WIDE</li>
                        <li><a href="/mainhome2_c?pd_category_big=SLACKS">SLACKS</li>
                    </ul>
                </li>
        
                <li><a href="/mainhome2_cb?pd_category=DRESS">DRESS</a>
                    <ul >
                        <li><a href="/mainhome2_c?pd_category_big=SKIRT">SKIRT</li>
                        <li><a href="/mainhome2_c?pd_category_big=DRESS">DRESS</li>
                    </ul>
                </li>
                <li><a href="/mainhome2_cb?pd_category=ACC">ACC</a>
                    <ul >
                        <li><a href="/mainhome2_c?pd_category_big=SKIRT">SKIRT</li>
                        <li><a href="#">DRESS</li>
                    </ul>
                </li>
            </ul>        
        </div>
        </div>    
	<!-- </div>  -->
	<!-- products section starts -->
	<form method="post">
		<div style="position: relative; left: 10px; top: -20px; z-index: 1;">
			<section class="products" id="products">
				<div class="box-container">

					<div class="1" style="float: left">
						<h1>상품정보</h1>
						<img src="/resources/image/${data.img}" alt="" style="width: 300px; hight: 500px;">
					</div>
					<div id="option">

						<div>&nbsp;</div>
						<div>&nbsp;</div>
						<div>&nbsp;</div>
						
						<input name="id" type="hidden" value="${id}"/>
						<input name="pd_num" type="hidden" value="${data.pd_num}"/><div>상품번호: ${data.pd_num}</div>
						<input name="pd_name" type="hidden" value="${data.pd_name}"/><div>상품명: ${data.pd_name}</div>
						<input name="price" type="hidden" value="${data.price}"/><div>상품 가격: ${data.price}</div>
						<input name="pd_des" type="hidden" value="${data.pd_des }">
						<input name="img" type="hidden" value="${data.img}">
						<input name="pd_category" type="hidden" value="${data.pd_category }">
						<input name="pd_category_big" type="hidden" value="${data.pd_category_big }">
						<div>
							수량: <select name="orderCount" >
								<option value="1">1</option>
								<option value="2">2</option>
								<option  value="3">3</option>
								<option value="4">4</option>
								<option  value="5">5</option>

							</select>
						</div>
		
						<input type="submit" name = "action" style="border: 2px solid;"value="카트에 담기">
						&nbsp; 
					<a href="/user/buy" style="border: 2px solid;" value="주문하기" >주문하기</a>

					</div>
				</div>
				</section>
		</div>
	</form>
	<h1 style="text-align: left0; margin-left: 30vh">상품설명</h1>
	<div style="text-align: left0; margin-left: 30vh; margin-right: 30vh;">
		${data.pd_des}</div>


	</section>
	</div>
<%-- 	<c:if test="${startPage!=1}"> --%>
<%-- 		<a href="/mainhome2?nowPage=${startPage-1}&keyword=${keyword}">&lt;</a> --%>
<%-- 	</c:if> --%>
<%-- 	<c:forEach var="idx" begin="${startPage}" end="${endPage}"> --%>
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${nowPage!=idx}"> --%>
<%-- 				<a href="/mainhome2?nowPage=${idx}&keyword=${keyword}"> --%>
<%-- 					${idx}&nbsp;</a> --%>
<%-- 			</c:when> --%>
<%-- 			<c:when test="${nowPage==idx}"> --%>
<%-- 				<b>${idx}&nbsp;</b> --%>
<!-- 				현재껀 진하게 표시 -->
<%-- 			</c:when> --%>
<%-- 		</c:choose> --%>
<%-- 	</c:forEach> --%>
<%-- 	<c:if test="${endPage!=totalCount}"> --%>
<%-- 		<a href="/mainhome2?nowPage=${endPage+1}&keyword=${keyword}">&gt;</a> --%>
<%-- 	</c:if> --%>

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


