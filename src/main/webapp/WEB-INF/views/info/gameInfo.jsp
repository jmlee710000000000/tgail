<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>GameInfo - Elden Ring</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link href="${path}/resources/css/styles.css" rel="stylesheet" />
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container px-5">
			<a class="navbar-brand" href="gameInfo.html">FROGame</a>
			<!-- 로그 클릭시 홈화면 새로고침 되도록 설정-->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!--<input type="text" placeholder="검색" style="position: relative; left: 30%; padding: 10px;">  상단 검색바-->
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/moveLogin">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="/moveRegist">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">장바구니</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">고객센터</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- <br>
        <div>
            <div>상점</div>
            <div>커뮤니티</div>
            <div>새 소식</div>
            <div><input type="text" placeholder="검색"></div>
        </div> -->
	<!-- Page Content-->
	<div class="container px-4 px-lg-5">
		<!-- Heading Row-->
		<div class="row gx-4 gx-lg-5 align-items-center my-5">
			<div class="col-lg-7">
				<img class="img-fluid rounded mb-4 mb-lg-0"
					src="${path}/resources/assets/maxresdefault.jpg"/>
			</div>
			<div class="col-lg-5">
				<h1 class="font-weight-light">Elden Ring</h1>
				<br>
				<p>본 게임은 본격적인 다크 판타지 세계를 무대로 한 액션 RPG입니다. 드넓은 필드와 던전 탐험을 통해 미지의
					것들을 발견해 보세요. 앞길을 막아서는 난관과 그것을 극복했을 때의 달성감, 그리고 등장인물들의 의도가 교착하는 군상극도
					즐기실 수 있습니다.</p>
				<a class="btn btn-primary" href="#!">구매하러 가기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card text-white bg-secondary my-5 py-4 text-center">
			- 시스템 요구사항 -
			<div class="card-body divid">
				<span class="explain">최소:<br> 운영체제: Windows 10 <br>
					프로세서: INTEL CORE I5-8400 or AMD RYZEN 3 3300X<br> 메모리: 12 GB
					RAM<br> 그래픽: NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580
					4 GB<br> DirectX: 버전 12<br> 저장공간: 60 GB 사용 가능 공간<br>
					사운드카드: Windows Compatible Audio Device<br>
				</span> <span class="explain">권장:<br> 운영체제: Windows 10/11<br>
					프로세서: INTEL CORE I7-8700K or AMD RYZEN 5 3600X<br> 메모리: 16 GB
					RAM<br> 그래픽: NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX
					VEGA 56 8 GB<br> DirectX: 버전 12<br> 저장공간: 60 GB 사용 가능 공간<br>
					사운드카드: Windows Compatible Audio Device<br>
				</span>
			</div>
		</div>
		<div id="text_setting">- 비슷한 태그의 추천 게임</div>
		<br>
		<!-- Content Row-->
		<div class="row gx-4 gx-lg-5">
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Game One</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Rem magni quas ex numquam, maxime minus quam
							molestias corporis quod, ea minima accusamus.</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-primary btn-sm" href="#!">More Info</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Game Two</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt
							pariatur voluptatem sunt quam eaque, vel, non in id dolore
							voluptates quos eligendi labore.</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-primary btn-sm" href="#!">More Info</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Game Three</h2>
						<p class="card-text">
							게임 설명 or 썸네일용 사진 <br> 추천 이유 or 태그 설명 <br> 하단 혹은 버튼 옆에
							해당 게임의 가격 추가
						</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-primary btn-sm" href="#!">More Info</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container px-4 px-lg-5">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2022</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${path}/resources/js/scripts.js"></script>
</body>
</html>
