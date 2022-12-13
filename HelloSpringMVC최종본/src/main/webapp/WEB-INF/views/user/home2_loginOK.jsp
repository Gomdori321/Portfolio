<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홈페이지 제작</title>
	<link href="ex.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${path}/resources/ex.css"/>
	
	
</head>
<body>
    <div class="container">
        <div class="header">
            <h1><a href="#">Mesion Bonita</a></h1>
            <div class="nav">
                <ul>
			<li><a href="#">${id} 회원님</a>
	    		<li><a href="${path}/login">LOGIN</a></li>
                    <li><a href="${path}/home">LOGOUT</a></li>
			<c:choose>
			<c:when test="${id eq '관리자'}">
				<li><a href="/index">MYPAGE</a></li>
			</c:when>

			<c:otherwise>
				<li><a href="/home">MYPAGE</a></li>
			</c:otherwise>

					</c:choose>
                    <li><a href="#">CART</a></li>
                    
                </ul>
            </div>
        </div>
        <div class="hero">
            <h2>2022 AUTUMN-WINTER CAMPAIGN</h2>
            <p> The F/W Collection is a circular turntable set embodying the Earth to show various people with different characteristics. <br>
                The peaceful communication and understanding of each other will be shown in this very space. <br>
                Each character on the table wears Coor’s collections interpreted in different ways. We invite you on this trip with your imagination.
                </p>
            <button><a href="/mainhome2">View Pages </button>
        </div>
    </div>
</body>
</html>