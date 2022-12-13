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
	
	<style>
	.container .header
	{
    /*width: 80%;*/
    height: 80px;
    margin-top: 0px;
    margin-right: 153px;
    margin-bottom: 0px;
    margin-left: 160px;
    display: flex;
    justify-content: space-between;
    align-items: center;
	}
	</style>
	
	
</head>
<body>
    <div class="container">
        <div class="header">
            <h1><a href="/home">Mesion Bonita</a></h1>
            <div class="nav">
                <ul>
                	<c:if test="${empty id}">
                		<li><a href="${path}/login">LOGIN</a></li>
                	</c:if>
                	
                	<c:if test="${not empty id}">
                		<li><a href="/logout">LOGOUT</a></li>
                	</c:if>
                
                    <c:if test="${empty id}">
                    <li><a href="${path}/create_user">JOIN</a></li>
                    </c:if>
                    
                    <li><a href="/detail_user?UserId=${id}">MYPAGE</a></li>
                    <li><a href="#">CART</a></li>
                    
                    <c:if test="${not empty id}">
                    
                    <li><a href="#">${id} 회원님</a><li>
                    </c:if>

                </ul>
            </div>
        </div>
        <div class="hero">
            <h2>2022 AUTUMN-WINTER CAMPAIGN</h2>
            <p> The F/W Collection is a circular turntable set embodying the Earth to show various people with different characteristics. <br>
                The peaceful communication and understanding of each other will be shown in this very space. <br>
                Each character on the table wears Coor’s collections interpreted in different ways. We invite you on this trip with your imagination.
                </p>
            <button><a href = "${path}/mainhome2">View Pages</button>
        </div>
    </div>
</body>
</html>