<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon" />
	<link rel="icon" href="/img/favicon.ico" type="image/x-icon" />


	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="en">
<head>
<style>
#videobcg {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 1920px;
	min-height: 1080px;
	width: 100%;
	height: 100%;
	z-index: -1000;
	overflow: hidden;
}
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입페이지</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../../resources/css/goodsUpdate.css">
</head>
<style>
/* 깔끔하게 스크롤바싹없애는 */
html, body, div, video {
	margin: 0;
	padding: 0;
}
body {
	padding: 0px, 0px, 0px, 0px;
	margin: 0px, 0px, 0px, 0px;
	overflow: hidden;
	background-color: #000;
}
.container {
	
}
</style>
<body>
<video id="videobcg" preload="auto" autoplay="true" loop="loop"
	muted="muted">

	<source src="../../../resources/css/veryGoodSpace.mp4" type="video/mp4">



</video>

<%-- 	<h1>회원상세보기</h1>
   <form action="/memberUpdate" method="post">
   <input type="hidden" name="user_no" value="${dto.user_no}">
   회원 아이디 : <input type="text" name="user_id" value="${dto.user_id}"> <br>
   회원 닉네임: <input type="text" name="user_nick" value="${dto.user_nick}"> <br>
   회원 전화번호 : <input type="text" name="user_phone" value="${dto.user_phone}"> <br>
   회원 이메일 : <input type="email" name="user_email" value="${dto.user_email}"> <br>
   회원 성인여부 : <input type="checkbox" name="user_adult" value="1" <c:if test="${dto.user_adult}"> checked</c:if>> <br>
   회원 이메일수신여부 : <input type="checkbox" name="email_check" value="1" <c:if test="${dto.email_check}"> checked</c:if>> <br>
   회원 등록일 : ${dto.user_insertDate} <br>
   <input type="submit" value="수정하기">
   </form>
	<script type="text/javascript" src="/resources/js/regist.js"></script> --%>



 <div class="header">

			<h1 class="Logo"> <a href="/" class="spaceShip">SPACE SHIP</a></h1>

			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="a1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a> <a
				href="/moveMakeWeb5" class="a1">우주인채용</a> 


			<a class="frame-btn" href="/adminMenu" id="logoutBtn"> <span
            class="frame-btn__outline frame-btn__outline--tall"> <span
               class="frame-btn__line frame-btn__line--tall"></span> <span
               class="frame-btn__line frame-btn__line--flat"></span>
         </span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
               class="frame-btn__line frame-btn__line--tall"></span> <span
               class="frame-btn__line frame-btn__line--flat"></span>
         </span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">admin</span>
         </a>
			 <a class="frame-btn" href="/logout" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
			</a>
			</div>
  <div class="neon_effect">
   <h1 class="pGold">product Update</h1>
   </div>
   <div class="neon_effect">
<div class="userText">
	  <h2 class="userText1H2">shipName <br>
	   shipPrice  <br>
	   shipStock  <br>
	   shipIntro <br>
	   </h2>
</div>
<div class="neon_effect">
<form action="/goodsUpdate" method="post">
    	<h2 class="userText2H2">
    	<input type="hidden" name="shipId" value="${dto.shipId}">
    	<input type="text" class="input-ty1" name="shipName" value="${dto.shipName}"required="required"><br>
    	<input type="number" class="input-ty1" name="shipPrice" value="${dto.shipPrice}"required="required"><br>
    	<input type="number" class="input-ty1" name="shipStock" value="${dto.shipStock}"required="required"><br>
    	<input type="text"class="input-ty1" name="shipIntro" value="${dto.shipIntro}"required="required"><br>
    	  <!-- <input class="inputBox" id="user-input" type="text" > -->
    	</h2>

    		<button type="submit" class="sujungBtn">
    			  <a class="frame-btn2"> <span
				class="frame-btn2__outline frame-btn2__outline--tall"> <span
					class="frame-btn2__line frame-btn2__line--tall"></span> <span
					class="frame-btn2__line frame-btn2__line--flat"></span>
			</span> <span class="frame-btn2__outline frame-btn2__outline--flat"> <span
					class="frame-btn2__line frame-btn2__line--tall"></span> <span
					class="frame-btn2__line frame-btn2__line--flat"></span>
			</span> <span class="frame-btn2__solid"></span> <span class="frame-btn2__text">수정하기</span>
			</a></button>

    	</form>
  </div>  


			<%-- <div class="neon_effect">
				<div class="exitBtnBox">
					<a href="/memberUpdate?user_no=${dto.user_no}" class="homeATag">수정하기</a>
				</div> --%>
   </div>


</body>
</html>

</body>
</html>