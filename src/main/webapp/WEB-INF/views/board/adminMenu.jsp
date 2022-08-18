<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
<link rel="stylesheet" href="../../../resources/css/adminMenu.css">
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

	<source src="../../../resources/css/spaceGalaxy.mp4" type="video/mp4">

</video>


<a href="/"><button   class="goHomeBtn"> SPACE SHIP </button></a>

<div class="neon_effect">
	<h1 class="mainText">ADMINSTRATOR MENU</h1>
</div>



<!-- <div class="neon_effect">
	<a href="/adminMenu/adminMember" class="pGold">회원관리</a> <br>
</div>
<div class="neon_effect">
	<a href="/adminMenu/goodsEnroll" class="pGold">상품 등록</a> <br>
</div>
<div class="neon_effect">
	<a href="/adminMenu/goodsManage" class="pGold">상품 목록</a> <br>
</div> -->

<div class="neon_effect">
		<button type="submit" id="enrollBtn" class="mainBtn">
			<div class="back">
				<a href="/adminMenu/adminMember" class="btn btn--1"><p class="btnText">회원관리</p></a>

			</div>
		</button>
	</div>
<div class="neon_effect">
		<button type="submit" id="enrollBtn" class="mainBtn2">
			<div class="back">
				<a href="/adminMenu/goodsEnroll" class="btn btn--1"><p class="btnText">상품 등록</p></a>

			</div>
		</button>
	</div>
 <div class="neon_effect">
		<button type="submit" id="enrollBtn" class="mainBtn3">
			<div class="back">
				<a href="/adminMenu/goodsManage" class="btn btn--1"><p class="btnText">상품 목록</p></a>

			</div>
		</button>
	</div>
</body>
</html>