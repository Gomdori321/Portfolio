<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
				
				<c:if test="${empty id}">
                		<li><a href="${path}/login">LOGIN</a></li>
                </c:if>
                
                <c:if test="${not empty id}">
				<li><a href="#">${id} 회원님</a>
				<li><a href="/logout">LOGOUT</a></li>
				</c:if>
				
				<c:choose>
					<c:when test="${id eq 'admin'}">
						<li><a href="/index">ADMIN</a></li>
					</c:when>

					<c:otherwise>
						<c:if test="${empty id}">
						<li><a href="/login">MYPAGE</a></li>
						</c:if>
						
						<c:if test="${not empty id}">
						<li><a href="/detail_user?UserId=${id}">MYPAGE</a></li>
						</c:if>
						
						
					</c:otherwise>

				</c:choose>
				<li><a href="/login">CART</a></li>
				<li><a href="/weather">WEATHER</a></li>
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
    <div style="position: relative; left:10px; top: -20px; z-index: 1;">
    <section class="products" id="products">
        <div class="box-container">
        
        	<c:forEach var="row" items="${data}">
        		<div class="box">
        			<img src="/resources/image/${row.img}" alt="" style="width:300px; height:450px;">

						<div class="content">
							<h3>
								<a href="/admin/goods/detail2?pd_num=${row.pd_num}">${row.pd_name}</a>
							</h3>
							<div class="price">${row.price}</div>
						</div>
					</div>
				</c:forEach>

			</div>


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
				<b>${idx}&nbsp;</b> <!-- 현재껀 진하게 표시 -->
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
                <li>서울특별시 강남구 압구정동  </li>
                <li>전화 1588-5678</li>
                <li><span>1:1문의 바로가기</span></li>
            </ul>
        </div>        
    </div>
</footer>
</body>

</html>


