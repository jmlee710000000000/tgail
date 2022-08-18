<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/make.css">
</head>

<body>

	<c:if test="${not empty sessionScope.user_no}">
		<div class="header">
			<h1 class="Logo"> <a href="/memberRead2?user_no=${sessionScope.user_no}">SPACE SHIP</a></h1>

			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="a1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a> <a
				href="/moveMakeWeb5" class="a1">우주인채용</a> 
				
				
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
				
				<div class="search_area">
					<div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<input type="text" name="keyword" class="searchInput">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
				</div>
				  </c:if>


	<c:if test="${empty sessionScope.user_no}">
		<div class="header">
			<h1 class="Logo">
				<a href="/adminMenu"> SPACE SHIP</a>
			</h1>
			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="a1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a> <a
				href="/moveMakeWeb5" class="a1">우주인채용</a> <a class="frame-btn"
				href="moveLogin"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">LOGIN</span>
			</a>
		</div>
		<div class="search_area">
					<div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<input type="text" name="keyword" class="searchInput">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
				</div>
		<video class="mainVideo"
			src="../../resources/css/nebula_-_25168 (Original).mp4" muted
			autoplay loop></video>

		<h1 class="stupid">"마치 우주같이 위대한 나를 위하여 그대들이 해줄것이 있소"</h1>

		<video class="ship"
			src="../../resources/css/hubble_space_telescope_-_221 (Original).mp4"
			width="50%" muted autoplay loop></video>

		<h1 class="stupid2">"헌금을 내시오"</h1>

		<video class="video3"
			src="../../resources/css/the_sun_in_the_space_-_15299 (Original)"
			muted autoplay loop></video>
		<div>
			<h1 class="CEO">CEO</h1>
			<p class="footer">
				<strong>Lee, Won Ik</strong>
			</p>
			<p class="footer2">"Zi-Ral ha ji ma ra"</p>


		</div>
		<video class="video4"
			src="../../resources/css/nature_-_107586 (Original).mp4" muted
			autoplay loop></video>


	</c:if>


</body>
</html>