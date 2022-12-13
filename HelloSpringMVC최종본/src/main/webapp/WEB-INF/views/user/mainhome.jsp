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
        <h1><a href="#">Mesion Bonita</a></h1>
        <div class="nav">
            <ul>
                <li><a href="${path}/home">LOGOUT</a></li>
                <li><a href="#">MYPAGE</a></li>
                <li><a href="#">CART</a></li>
                <li><a href="#">COMMUNITY</a></li>
            </ul>
        </div>
    </header>
    <!-- header section end -->

        <!-- 카테고리 코드 -->
        <div style="position: relative; z-index: 2;">
        <div class="menu" id="menu">
            <ul >
                <li><a href="#menu1">OUTER</a>
                    <ul>
                        <li><a href="#menu1">CARDIGAN</li>
                        <li><a href="#menu1">JUMPER</li>
                        <li><a href="#menu1">COAT</li>
                        <li><a href="#menu1">JACKET</li>
                    </ul>
                </li>
        
                <li><a href="#menu2">TOP</a>
                    <ul >
                        <li><a href="#menu2">KNIT</li>
                        <li><a href="#menu2">TEE&SHIRT</li>
                        <li><a href="#menu2">MTM&HOOD</li>
                        <li><a href="#menu2">BLOUSE</li>
                    </ul>
                </li>
        
                <li><a href="#menu3">BOTTOM</a>
                    <ul >
                        <li><a href="#menu3">STRAIGHT</li>
                        <li><a href="#menu3">WIDE</li>
                        <li><a href="#menu3">SLACKS</li>
                    </ul>
                </li>
        
                <li><a href="#menu4">DRESS</a>
                    <ul >
                        <li><a href="#menu4">SKIRT</li>
                        <li><a href="#menu4">DRESS</li>
                    </ul>
                </li>
                <li><a href="#menu5">ACC</a>
                    <ul >
                        <li><a href="#menu5">SKIRT</li>
                        <li><a href="#menu5">DRESS</li>
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
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
            <div class="box">
                <img src="https://image.msscdn.net/images/goods_img/20220708/2653637/2653637_3_320.jpg" alt="">

                <div class="content">
                    <h3><a href="#clothes">상의</a></h3>
                    <div class="price">$45</div>
                </div>
            </div>
        </div>
    </section>
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
                <li>서울특별시 강남구 압구정동  </li>
                <li>전화 1588-5678</li>
                <li><span>1:1문의 바로가기</span></li>
            </ul>
        </div>        
    </div>
</footer>
</body>

</html>


