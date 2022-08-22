<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

<div class="header">
	<h1 class="Logo">
		<a href="/adminMenu"> SPACE SHIP</a>
	</h1>
	<a href="/moveMakeWeb2" class="a1">역사</a>
	<a href="/moveMakeWeb3" class="a1">사업분야</a> 
	<a href="/moveMakeWeb4" class="a1">ufo</a> 
	<a href="/moveMakeWeb5" class="a1">우주인채용</a> 
				
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
				
			<c:if test="${not empty member.user_id}">
				<a class="frame-btn" href="/logout" id="logoutBtn"> 
				<span class="frame-btn__outline frame-btn__outline--tall"></span> 
				<span class="frame-btn__line frame-btn__line--tall"></span> 
				<span class="frame-btn__line frame-btn__line--flat"></span>
				<span class="frame-btn__outline frame-btn__outline--flat"></span>
				<span class="frame-btn__line frame-btn__line--tall"></span> 
				<span class="frame-btn__line frame-btn__line--flat"></span>
				<span class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
				</a>	
				
				
		
  			                          
								<a class="frame-btn" href="/orderList">
				<span class="frame-btn__outline frame-btn__outline--tall"></span> 
				<span class="frame-btn__line frame-btn__line--tall"></span> 
				<span class="frame-btn__line frame-btn__line--flat"></span>
				<span class="frame-btn__outline frame-btn__outline--flat"></span>
				<span class="frame-btn__line frame-btn__line--tall"></span> 
				<span class="frame-btn__line frame-btn__line--flat"></span>
				<span class="frame-btn__solid"></span> <span class="frame-btn__text">주문현황</span>
				</a>	
			</c:if>
				
			<c:if test="${empty member.user_id}">
				<a class="frame-btn" href="moveLogin"> 
					<span class="frame-btn__outline frame-btn__outline--tall"></span>
					<span class="frame-btn__line frame-btn__line--tall"></span> 
					<span class="frame-btn__line frame-btn__line--flat"></span>
					<span class="frame-btn__outline frame-btn__outline--flat"></span>
					<span class="frame-btn__line frame-btn__line--tall"></span> 
					<span class="frame-btn__line frame-btn__line--flat"></span>
					<span class="frame-btn__solid"></span> 
					<span class="frame-btn__text">LOGIN</span>
				</a>
			</c:if>
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
		
</div>
