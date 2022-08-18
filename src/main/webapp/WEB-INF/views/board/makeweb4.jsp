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
<link rel="stylesheet" href="../../resources/css/make4.css">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<body>


	<c:if test="${not empty sessionScope.user_id}">
		<div class="neon_effect">
			<div class="header">
				<h1>
					<a href="/" class="pGold"> SPACE SHIP </a>
				</h1>




				<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
					class="a1">사업분야</a> <a href="/moveMakeWeb4" class="lightOna1">ufo</a>


				<a href="/moveMakeWeb5" class="a1">우주인채용</a> <a class="frame-btn"
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


			<div class="mid">
				<h1>UFO '미확인 비행물체(Unidentified Flying Object)</h1>
				<video class="ufo1" src="../../../resources/css/ufo.mp4" muted
					autoplay loop></video>
				<h3 class="ufoText1">
					본래 '확인된 비행 물체(identified flying object; IFO)'의 반댓말로, 날아다니는 무언가의 정체가
					아직 식별되지 않은 것들을 통틀어 지칭하는 단어이다. <br /> 즉 사전적인 뜻으로는 문자 그대로 미확인 항공기, 즉
					적국의 정찰기, 미사일, 드론, 헬륨 풍선 등도 모두 해당될 수 있다. <br /> 단, 일반적으로 다른 수식어 없이
					UFO라고만 하면 하술할 외계인과 관련한 용어로 사용되는 경우가 대부분이다.
				</h3>
				<video class="spinUfo" src="../../../resources/css/Ufo - 35126.mp4"
					muted autoplay loop></video>
				<h1 class="ufoText1">광해군 시기의 UFO 소동</h1>
				<h3 class="ufoText1">
					조선왕조실록 중 광해군일기의 천문(天文)기사에 특이한 기상 현상이 기록된 것을 말한다. <br>실제로 어떤
					것이었는지는 현재에 와서 추정하기가 어렵지만, '홀연히 어떤 물체가 하늘에 나타났다(忽有物在天)'고 기록되었으며 <br>백주
					대낮에 나타난 이 현상은 당시 옛날 사람들 눈에는 매우 신기하게 느껴졌을 것이다. <br>실록에 따르면 이
					현상은 1609년(광해 1년) 9월 22일 화요일(음력 8월 25일) 오전 9시에서 오후 3시 사이(사시~ 미시)에
					서울, 평안도 및 강원도 일대에서 확인됐다. <br> 서울과 평안도 선천군의 목격 기록은 8월 25일 당일
					기사로 수록되었으며, <br> 강원 감사 이형욱이 관하 고을에서의 목격 기록을 모아 조정에 보고한 기록이
					이로부터 한 달 뒤인 음력 9월 25일 기사에 수록되어 있다.
				</h3>
			</div>

			<video class="spinUfo" src="../../../resources/css/black_hole.mov"
				muted autoplay loop></video>
		</div>

	</c:if>





	<c:if test="${empty sessionScope.user_id}">
		<div class="neon_effect">
			<div class="header">

				<h1>
					<a href="/" class="pGold"> SPACE SHIP</a>
				</h1>



				<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
					class="a1">사업분야</a> <a href="/moveMakeWeb4" class="lightOna1">ufo</a>


				<a href="/moveMakeWeb5" class="a1">우주인채용</a> <a class="frame-btn"
					href="moveLogin"> <span
					class="frame-btn__outline frame-btn__outline--tall"> <span
						class="frame-btn__line frame-btn__line--tall"></span> <span
						class="frame-btn__line frame-btn__line--flat"></span>
				</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
						class="frame-btn__line frame-btn__line--tall"></span> <span
						class="frame-btn__line frame-btn__line--flat"></span>
				</span> <span class="frame-btn__solid"></span> <span
					class="frame-btn__text">LOGIN</span>
				</a>
			</div>
		</div>

		<div class="mid">

			<h1 class="pGold">UFO '미확인 비행물체(Unidentified Flying Object)</h1>

			<video class="ufo1" src="../../../resources/css/ufo.mp4" muted
				autoplay loop></video>
			<h3 class="ufoText1">
				본래 '확인된 비행 물체(identified flying object; IFO)'의 반댓말로, 날아다니는 무언가의 정체가
				아직 식별되지 않은 것들을 통틀어 지칭하는 단어이다. <br /> 즉 사전적인 뜻으로는 문자 그대로 미확인 항공기, 즉
				적국의 정찰기, 미사일, 드론, 헬륨 풍선 등도 모두 해당될 수 있다. <br /> 단, 일반적으로 다른 수식어 없이
				UFO라고만 하면 하술할 외계인과 관련한 용어로 사용되는 경우가 대부분이다.
			</h3>

			<video class="spinUfo" src="../../../resources/css/Ufo - 35126.mp4"
				muted autoplay loop></video>
			<h1 class="ufoText1">광해군 시기의 UFO 소동</h1>
			<h3 class="ufoText1">
				조선왕조실록 중 광해군일기의 천문(天文)기사에 특이한 기상 현상이 기록된 것을 말한다. <br>실제로 어떤
				것이었는지는 현재에 와서 추정하기가 어렵지만, '홀연히 어떤 물체가 하늘에 나타났다(忽有物在天)'고 기록되었으며 <br>백주
				대낮에 나타난 이 현상은 당시 옛날 사람들 눈에는 매우 신기하게 느껴졌을 것이다. <br>실록에 따르면 이 현상은
				1609년(광해 1년) 9월 22일 화요일(음력 8월 25일) 오전 9시에서 오후 3시 사이(사시~ 미시)에 서울, 평안도
				및 강원도 일대에서 확인됐다. <br> 서울과 평안도 선천군의 목격 기록은 8월 25일 당일 기사로 수록되었으며,
				<br> 강원 감사 이형욱이 관하 고을에서의 목격 기록을 모아 조정에 보고한 기록이 이로부터 한 달 뒤인 음력
				9월 25일 기사에 수록되어 있다.
			</h3>

			<video class="ufo1" src="../../../resources/css/Dj - 105420.mp4"
				muted autoplay loop></video>

		</div>
	</c:if>

	<script>
		document.getElementById('vid').play();
	</script>
</body>
</html>