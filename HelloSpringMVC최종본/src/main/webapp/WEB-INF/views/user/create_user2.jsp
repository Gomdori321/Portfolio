<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./style/login.css">
<link rel="stylesheet" type="text/css" href="./style/common.css">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<title>회원가입</title>
<style type="text/css">

.login_logo{
    margin :10px 0 10px 0;
    color:#262626;
    font-family: 'Lobster', cursive;
    font-size: 40px;
}

#wrap{
    position:absolute;
    display: flex;
    flex-direction: column;
    align-items: center;
    width:500px;
    height:500px;
    top:40%;
    left:40%;
    margin: -175px 0px 0px -190px;
    background-color:white;
    border: 1px solid black;
}

td{
border:1px solid skyblue;
}

font{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
            background-color:skyblue;
            text-align:center;
}
body {
	margin: 0px;
    box-sizing: border-box;
}
#title{
background-color:skyblue;
text-align:center;

}
        
#btn1{
    width:100%;
    height:33px;
    margin: 10px 0 5px 0;
    color:white;
    background-color: #C0DFFD;
    border-radius: 5px;
    border-style: none;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
}
#btn2{
    width:100%;
    height:33px;
    margin: 10px 0 5px 0;
    color:white;
    background-color: #C0DFFD;
    border-radius: 5px;
    border-style: none;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
}


.id_ok{
color:#008000;
display: none;
}

.id_already{
color:red; 
display: none;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
		var duplicate = 0;

        function checkId_test(){
        	
        let id = document.getElementById("id").value;
        //static int duplicate = 1;	
        //alert(id);
        var aa = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
	
		
        
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

<div id="wrap">
<br><br>
 <div class="login_logo">MaisonBonita</div>
<br><br>

<form method="POST">
<table>
<tr>
	<td id="title">아이디</td>
	<td>
		<input type="text" name="id" maxlength="20" Id ="id">
		<input type="button" value="중복확인" onclick = "checkId_test()"/></br>    
		<span class="id_ok">사용 가능한 아이디입니다.</span>
		<span class="id_already">이미 사용중인 아이디입니다.</span>
	</td>
</tr>
   
<tr>
	<td id="title">비밀번호</td>
	<td>
		<input type="password" name="pw" maxlength="15">
	</td>
</tr>

<tr>
	<td id="title">주소</td>
	<td>
		<input type="text" size="40" name="address"/>
	</td>
</tr>

<tr>
   <td id="title">전화번호</td>
   <td>
   <input type="text" name="hp" />
   </td>
</tr>

<tr>
   <td id="title">이메일   </td>
   <td>
   <input type="text" name="e_mail" maxlength="20"/>
   </td>
</tr>
   
<tr>
<td id="title">성별</td>
<td>
<input type="radio" name="gender" value="남" checked ="checked">남
<input type="radio" name="gender" value="여" >여
</td>
</tr>
</table>

  <br>
   <input type="submit" value="가입" id="btn1"/>
   <input type="reset" value="취소" id="btn2"/>
   
  		</form>
	</div>

</body>
</html>