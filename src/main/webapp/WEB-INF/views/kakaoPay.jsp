<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/order.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<!-- 다음주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<body>

카카오 결재 페이지

${member.user_id}
폼목개수 : ${orderItemCount} 개
합계금액 : ${totalPrice} 원
총배송비 : ${totalShipPrice} 웝
회원명 : ${memberId} 님
주문번호 : ${orderId} 
<c:forEach items="${orderItems}" var="ol">
					<tr>
						<td>
							<div class="image_wrap">
						 
						<form method="post" action="/kakaoPay">
						    <button class="order_btn">카카오페이</button>
						    <input type=hidden class="total_amount" name="total_amount" value="${totalPrice}">
						    <input type=hidden class="tax_free_amount" name="tax_free_amount" value="${tax_free_amount}">
						    <input type=hidden class="partner_order_id" name="partner_order_id" value="${orderId}">
						    <input type=hidden class="partner_user_id" name="partner_user_id" value="${memberId}">
						    <input type=hidden class="item_name" name="item_name" value="주문품">
						    <input type=hidden class="quantity" name="quantity" value="${orderItemCount}">
						</form>
 
							<c:out value="${ol.orderId}"></c:out>
							</div>
						</td>
					</tr>
</c:forEach>
</body>
</html>