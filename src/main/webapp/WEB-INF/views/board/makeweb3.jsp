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
<link rel="stylesheet" href="../../resources/css/make3.css">
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




			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="lightOna1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a>


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
	</c:if>





	<c:if test="${empty sessionScope.user_id}">
		<div class="header">
			<h1>
				<a href="/" class="Logo"> SPACE SHIP </a>
			</h1>



			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="lightOna1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a>


			<a href="/moveMakeWeb5" class="a1">우주인채용</a> <a class="frame-btn"
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
	</c:if>

</body>
</html>