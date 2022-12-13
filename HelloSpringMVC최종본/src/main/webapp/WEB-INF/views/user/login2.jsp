<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인창</title>
    <link rel="stylesheet" href="${path}/resources/login.css">

    <style>
        .main{
            position: fixed;
            top:50%;
            left:50%;
            
            border: 2px solid black;
            transform:translate(-50%, -50%);
        }
    </style>
</head>

<body>
<form method = "post">
    <div class="main">
        <h1 class="logo">MaisonBonita</h1>
        <div class="container">
            <input type="text" placeholder="ID" id="id" name = "id" class="account">
            <input type="password" placeholder="Password" name = "pw" id="password" class="account">
            <input type="submit" id="login" class="account" value ="login">
            <p id="alert" class="account"> </p>
        </div>
    </div>
   </form>
    <script src="login.js"></script>
</body>
