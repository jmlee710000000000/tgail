<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, height=device-height, minimum-scale=1.0, user-scalable=0">
<meta name="theme-color" content="">

<title>Your</title>


<link
	href="https://fonts.googleapis.com/css?family=Monoton&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lobster&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Comfortaa:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Notable&display=swap"
	rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/adminMember.css">
<body>



	<%-- 	<tr>
											<td>${list.user_id}</td> <br>
											<td><a href="/memberRead?m_no=${list.user_pw}">
													${list.user_pw}</a></td> <br>
											<td>${list.user_nick}</td> <br>
											<td>${list.user_phone}</td> <br>
											<td>${list.user_email}</td> <br>
											<td>${list.user_adult}</td> <br>
											<td>${list.email_check}</td> <br>
											<td><fmt:formatDate value="${list.user_insertDate}" 
													pattern="yyyy-MM-dd HH:mm:ss" /></td> <br>
											<td><a href="/memberDelete?m_no=${list.user_id}">삭제</a></td><br>
										</tr> --%>












		<div class="Page">
			<div class="neon_effect">
				<div class="exitBtnBox">
					<a href="/adminMenu" class=""><p class="exitBtn">홈으로 가기</p></a>
				</div>






				<h1 class="headText">
					<p class="pGold">죄수 명단</p>
				</h1>




				<form action="/" method="get">


					<table class="">

						<tr>
							<th class="" style="text-align: center;"><p class="pGold">회원아이디</p></th>
							<th class="" style="text-align: center;"><p class="pGold">이름</p></th>
							<th class="" style="text-align: center"><p class="pGold">휴대전화번호</p></th>
							<th class="" style="text-align: center"><p class="pGold">이메일</p></th>
							<th class="" style="text-align: center"><p class="pGold">성인여부</p></th>
							<th class="" style="text-align: center"><p class="pGold">연락수신여부</p></th>
							<th class="" style="text-align: center"><p class="pGold">계정
									제조일자</p></th>
						</tr>


						<c:forEach var="list" items="${list}">

							<%-- <a href="/products/spacex-spacesuit-onesie?variant=32599227629647">${list.user_pw}</a>
														<a href="/products/spacex-spacesuit-onesie?variant=32599227629647">${list.user_nick}</a>
														<a href="/products/spacex-spacesuit-onesie?variant=32599227629647">${list.user_phone}</a>
												<a href="/products/spacex-spacesuit-onesie?variant=32599227629647">${list.user_email}</a>
														<a href="/products/spacex-spacesuit-onesie?variant=32599227629647">${list.user_adult}</a>
														<a href="/products/spacex-spacesuit-onesie?variant=32599227629647">${list.user_insertDate}</a> --%>

							<tr>
								<th class="" style="text-align: center"><p>${list.user_id}</p></th>
								<th class="" style="text-align: center">${list.user_nick}</th>
								<th class="" style="text-align: center">${list.user_phone}</th>
								<th class="" style="text-align: center">${list.user_email}</th>
								<th class="" style="text-align: center">${list.user_adult}</th>
								<th class="" style="text-align: center">${list.email_check}</th>
								<th class="" style="text-align: center">${list.user_insertDate}</th>
								<th style="text-align: center"><a
									href="/memberDelete?user_id=${list.user_id}" class=""><p
											class="p1">삭제</p></a></th>




								<!-- 	<button type="submit" class="goBack">Go Back</button> -->


							</tr>
						</c:forEach>

					</table>

				</form>

			</div>
		</div>
		<%-- 	<tr class="CartItem">
											<tr>

												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<a href="/#"> ${list.user_id}</a>
														</h2>
													</div>
												</td>

												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<a href="/#"> ${list.user_nick}</a>
														</h2>
													</div>
												</td>
												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<a href="/#"> ${list.user_phone}</a>
														</h2>
													</div>
												</td>
												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<a href="/#"> ${list.user_email}</a>
														</h2>
													</div>
												</td>
												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<a href="/#"> ${list.user_adult}</a>
														</h2>
													</div>
												</td>
												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<a href="/#"> ${list.email_check}</a>
														</h2>
													</div>
												</td>
												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
														<h2 class="CartItem__Title Heading">
															<fmt:formatDate value="${list.user_insertDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
														</h2>
													</div>
												</td>
												<td>
													<div class="CartItem__Actions Heading Text--subdued"
														style="text-align: center">
														<div class="CartItem__QuantitySelector"></div>
													<h1>
														<a href="/memberDelete?user_id=${list.user_id}" class="CartItem__Remove Link Link--underline Link--underlineShort">Remove</a>
													</h1>
													</div>
												</td> 




											</tr>--%>





		<!-- <button type="submit" class="mainBtn2">
					<div class="back2">
						<a class="btn3 btn--3">홈으로 가기</a>

					</div>
				</button> -->




	<script type="text/javascript" src="/resources/js/adminMember.js"></script>
</body>
</html>