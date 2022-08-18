<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>커뮤니티</title>
<link rel="stylesheet" href="../../resources/css/make2.css">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

</head>
<body>


	<c:if test="${not empty sessionScope.user_id}">

		<div class="header">

			<h1>
				<a href="/" class="Logo"> SPACE SHIP </a>
			</h1>




			<a href="/moveMakeWeb2" class="lightOna1">역사</a> <a
				href="/moveMakeWeb3" class="a1">사업분야</a> <a href="/moveMakeWeb4"
				class="a1">ufo</a> <a href="/moveMakeWeb5" class="a1">우주인채용</a>
				
				
				<a class="frame-btn"
				href="/memberRead?user_no=${sessionScope.user_no}" > <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">마이페이지</span>
			</a> 
			<c:if test="${isAdmin == 1}">
        <a class="frame-btn" href="/adminMenu" id="logoutBtn"> <span
            class="frame-btn__outline frame-btn__outline--tall"> <span
               class="frame-btn__line frame-btn__line--tall"></span> <span
               class="frame-btn__line frame-btn__line--flat"></span>
         </span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
               class="frame-btn__line frame-btn__line--tall"></span> <span
               class="frame-btn__line frame-btn__line--flat"></span>
         </span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">admin</span>
         </a>
         
         </c:if>
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
		<br>
		<h1 class="h1_1">"우주를 향한 인류의 위대한 도약"</h1>

		<video src="../../../resources/css/star_ship_king.mov" muted autoplay
			loop class="star_ship"></video>
		<br>
		<br>
		<br>
		<h3>
			우주선은 우주에서 이동하는 인공 물체를 말한다. 사람의 탑승 유무와는 관계없이 모두 우주선이라고 칭하므로, 우주왕복선,
			인공위성, 탐사선 등을 모두 통틀어 우주선이라 부를 수 있다.<br> 이 때문에 지구 정지궤도에 진입한 인공위성도
			우주선이라고 부르지만, 예외적으로 유인 인공위성인 우주정거장만큼은 우주선이라고 부르지 않는다.
		</h3>
		<br>
		<br>
		<br>
		<video class="space_ship_launch"
			src="../../../resources/css/space_ship_launch.mp4" muted autoplay
			loop></video>
		<br>
		<br>
		<br>
		<h3>
			준궤도 우주비행에서 우주선은 우주에 진입하여 궤도를 도는 일이 없이 행성(통상 지구)의 표면으로 돌아온다.<br>
			<br> 궤도 우주비행에서는 우주선은 행성 주위로 원을 이루는 궤도에 들어선다. 유인 우주비행을 위한 우주선은
			승무원 또는 승객들을 내부에 실어 나를 수 있다. <br>
			<br>로봇의 우주 임무를 위한 우주선은 자율적으로 또는 원격 조종으로 운영된다. 행성에 접근하는 로봇 우주선은
			우주 탐사선이라 부른다. <br>
			<br>행성의 궤도에 남는 로봇 우주선은 '인공위성'이 된다. 행성간 여행을 위한 성간 우주선은 실제로 존재한다.
			<br>
			<br>우주선은 통신, 지구 관측, 기상, 내비게이션, 행성 탐사, 우주 여행 등 다양한 용도에 상용. 우주선과
			우주 여행은 공상과학 소설에서 흔한 소재가 된다.
		</h3>
		<br>
		<br>
		<br>
		<video class="locat1" src="../../../resources/css/locat1.mp4" muted
			autoplay loop></video>
		<h3 class="video3text">발사된 우주왕복선의 모습</h3>
	</c:if>





	<c:if test="${empty sessionScope.user_id}">
		<div class="header">
			<h1>
				<a href="/" class="Logo"> SPACE SHIP </a>
			</h1>



			<a href="/moveMakeWeb2" class="lightOna1">역사</a> <a
				href="/moveMakeWeb3" class="a1">사업분야</a> <a href="/moveMakeWeb4"
				class="a1">ufo</a> <a href="/moveMakeWeb5" class="a1">우주인채용</a> <a
				class="frame-btn" href="moveLogin"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">LOGIN</span>
			</a>
		</div>

		<br>
		<h1 class="h1_1">"우주를 향한 인류의 위대한 도약"</h1>

		<video src="../../../resources/css/star_ship_king.mov" muted autoplay
			loop class="star_ship"></video>
		<br>
		<br>
		<br>
		<h3>
			우주선은 우주에서 이동하는 인공 물체를 말한다. 사람의 탑승 유무와는 관계없이 모두 우주선이라고 칭하므로, 우주왕복선,
			인공위성, 탐사선 등을 모두 통틀어 우주선이라 부를 수 있다.<br> 이 때문에 지구 정지궤도에 진입한 인공위성도
			우주선이라고 부르지만, 예외적으로 유인 인공위성인 우주정거장만큼은 우주선이라고 부르지 않는다.
		</h3>
		<br>
		<br>
		<br>
		<video class="space_ship_launch"
			src="../../../resources/css/space_ship_launch.mp4" muted autoplay
			loop></video>
		<br>
		<br>
		<br>
		<h3>
			준궤도 우주비행에서 우주선은 우주에 진입하여 궤도를 도는 일이 없이 행성(통상 지구)의 표면으로 돌아온다.<br>
			<br> 궤도 우주비행에서는 우주선은 행성 주위로 원을 이루는 궤도에 들어선다. 유인 우주비행을 위한 우주선은
			승무원 또는 승객들을 내부에 실어 나를 수 있다. <br>
			<br>로봇의 우주 임무를 위한 우주선은 자율적으로 또는 원격 조종으로 운영된다. 행성에 접근하는 로봇 우주선은
			우주 탐사선이라 부른다. <br>
			<br>행성의 궤도에 남는 로봇 우주선은 '인공위성'이 된다. 행성간 여행을 위한 성간 우주선은 실제로 존재한다.
			<br>
			<br>우주선은 통신, 지구 관측, 기상, 내비게이션, 행성 탐사, 우주 여행 등 다양한 용도에 상용. 우주선과
			우주 여행은 공상과학 소설에서 흔한 소재가 된다.
		</h3>
		<br>
		<br>
		<br>
		<video class="locat1" src="../../../resources/css/locat1.mp4" muted
			autoplay loop></video>
		<h3 class="video3text">발사된 우주왕복선의 모습</h3>
	</c:if>

	<script type="text/javascript">
		
	</script>

</body>
</html>