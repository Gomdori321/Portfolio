<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link href="create_user.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${path}/resources/create_user.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
		var duplicate = 0;

        function checkId_test(){
        	
        let id = document.getElementById("user_id").value;
        //static int duplicate = 1;	
        //alert(id);
        var aa = $('#user_id').val(); //id값이 "id"인 입력란의 값을 저장
	
		
        
        $.ajax({
            url:'./idCheck_test', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{id:id},
//             contentType : 'application/json; charset=UTF-8'
            //dataType : 'json',
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
          	
                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                	$('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
					duplicate = 1;
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                	$('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    duplicate = 0;
                    alert("아이디가 중복되었습니다.");

                }
            },
            error:function(request, status, error){
				
        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
        };

       
      
      


        </script>

</head>

<body>
    <!-- header section starts -->
    <header>
        <h1><a href="mainhome2">Mesion Bonita</a></h1>
        <div class="nav">
            <ul>
                <li><a href="${path}/home">LOGOUT</a></li>
                <li><a href="/detail_user?UserId=${id}">MYPAGE</a></li>
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

<div class="join_wrap">
    <h2>회원가입</h2>
    <form method="post">
        <fieldset>
            <table class="jointable">
                <tr>
                    <th class="first">아이디</th>
                    <td><input type="text" name = "id" id="user_id" class="textForm" required autofocus>
                        <input type="button" value="중복확인" class="btn" onclick = "checkId_test()"><br>
                    <span class="id_ok">사용 가능한 아이디입니다.</span>
					<span class="id_already">이미 사용중인 아이디입니다.</span>
                    </td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>
                        <input type="password" id="user_pw" name ="pw" class="textForm">
                    </td>
                </tr>
                
                <tr>
                    <th>고객이름</th>
                    <td>
                        <input type="text" id="user_name" name ="name" class="textForm">
                    </td>
                </tr>
                  <tr>
                    <th>주소</th>
                    <td>
                        <input type="text" id="user_address" name ="address" class="textForm">
                    </td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td>
                        <input type="hp" id="user_hp" name="hp" class="textForm">
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td>
                        <input type="email" id="user_email" name= "e_mail" class="textForm">
                    </td>
                </tr>
                
                <tr>
                    <th>성&nbsp&nbsp별</th>
                    <td>
                        <input type="radio" name="gender" id="male" checked ="checked" value="남">
                        <label for="male">남</label>&nbsp&nbsp&nbsp&nbsp
                        <input type="radio" name="gender" id="female" value="여">
                        <label for="female">여</label>
                    </td>
                </tr>
            </table>
        </fieldset>
        <div class="btn_area">
            <button type="reset">취 소</button>
            <button type="submit" class="btn_join">회원가입</button>
        </div>
    </form>
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