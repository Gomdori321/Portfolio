<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인창</title>
    <link rel="stylesheet" href="${path}/resources/login.css">


</head>

<body>
    <!-- header section starts -->
    <header>
        <h1><a href="mainhome2">Mesion Bonita</a></h1>
        <div class="nav">
            <ul>
            
            <!-- <li><a href="${path}/home">LOGOUT</a></li> -->
                
                <li><a href="/login">MYPAGE</a></li>
                <li><a href="#">CART</a></li>
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

    <form method = "post">
        <h2 class="logo">로그인</h2>        
        <div class="login_wrap">
            <div class="container">
                <input type="text" placeholder="ID" id="id" name = "id" class="account">
                <input type="password" placeholder="Password" name = "pw" id="password" class="account">
                <input type="submit" id="login" class="account" value ="login">
                <p id="alert" class="account"> </p>
            </div>
        </div>
       </form>

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
                    <li>서울특별시 강남구 압구정동 </li>
                    <li>전화 1588-5678</li>
                    <li><span>1:1문의 바로가기</span></li>
                </ul>
            </div>
        </div>
    </footer>
</body>

</html>