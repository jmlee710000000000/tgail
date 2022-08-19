<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/cart.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<style type="text/css">
/* 상품 표 */
.list_search_result {
	width: 90%;
	margin: auto;
}

.type_list {
	width: 100%;
	border-bottom: 1px solid #e7e7e7;
	border-collapse: collapse;
}

.type_list tr {
	height: 200px;
	border-bottom: 1px solid #e7e7e7;
}

.detail div {
	margin-bottom: 5px;
}

.title {
	font-size: 20px;
	color: #3a60df;
	margin-left: 100px
}

.price {
	text-align: center;
}

/* 페이지 버튼 인터페이스 */
.pageMaker_wrap {
	text-align: center;
	margin-top: 30px;
	margin-bottom: 40px;
}

.pageMaker {
	list-style: none;
	display: inline-block;
}

.pageMaker_btn {
	float: left;
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin-left: 20px;
}

.active {
	border: 2px solid black;
	font-weight: 400;
}

.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}

.pageMaker_btn a:link {class="td_width_2"
	color: black;
}

.pageMaker_btn a:visited {
	color: black;
}

.pageMaker_btn a:active {
	color: black;
}

.pageMaker_btn a:hover {
	color: black;
}

.next a, .prev a {
	color: #ccc;
}

/* 상품 이미지 관련 */
.image_wrap {
	width:150px ;
	
	
}

.image_wrap img {
	max-width: 100%;
	height: auto;
	display: block;
	border-radius: 10%
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
	<div class="wrapper">
		<div class="wrap">
			<div class="search_area">
				<div class="search_wrap">
					<form id="searchForm" action="/search" method="get">
						<div class="search_input">
							<select name="type">
								<option value="T">책 제목</option>
								<option value="A">작가</option>
							</select> <input type="text" name="keyword"
								value="<c:out value="${pageMaker.cri.keyword}"/>">
							<button class='btn search_btn'>검 색</button>
						</div>
					</form>
				</div>
			</div>
			<div class="content_area">

				<div class="content_subject">
					<span>장바구니</span>
				</div>
				<!-- 장바구니 리스트 -->
				<div class="content_middle_section"></div>
				<!-- 장바구니 가격 합계 -->
				<!-- cartInfo -->
				<div class="content_totalCount_section">
					
							<!-- 체크박스 전체 여부 -->
					<div class="all_check_input_div">
						<input type="checkbox" class="all_check_input input_size_20" checked="checked"><span class="all_chcek_span">전체선택</span>
					</div>
					<table class="subject_table">
						<caption>표 제목 부분</caption>
						<tbody>

							<tr>
								<th class="td_width_1"></th>
								<th class="td_width_2"></th>
								<th class="td_width_3">상품명</th>
								<th class="td_width_4">가격</th>
								<th class="td_width_5">수량</th>
								<th class="td_width_6">삭제</th>
							</tr>
						</tbody>
					</table>
					<table class="cart_table">
						<caption>표 내용 부분</caption>
						<tbody>
							<c:forEach items="${cartInfo}" var="ci">
								<tr>
									<td class="td_width_1 cart_info_td">
									<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked">
									<input type="hidden" class="individual_shipPrice_input" value="${ci.shipPrice}">
									<input type="hidden" class="individual_shipCount_input" value="${ci.shipCount}">
									<input type="hidden" class="individual_shipPrice_shipCount_input" value="${ci.shipPrice * ci.shipCount}">
									<input type="hidden" class="individual_shipId_input" value="${ci.shipId}">
									</td>
									
									<td class="td_width_2111111111">
										<div class="image_wrap" data-shipid="${ci.imageList[0].shipId}" data-path="${ci.imageList[0].uploadPath}" data-uuid="${ci.imageList[0].uuid}" data-filename="${ci.imageList[0].fileName}">
											<img>
										</div>
									</td>
									<td class="td_width_3"> <span class="shipNameSpanc"> ${ci.shipName}</span></td>
									<td class="td_width_4 price_td"><span>정가 : <fmt:formatNumber
												value="${ci.shipPrice}" pattern="#,### 원" /></span> <br></td>
									<td class="td_width_4 table_text_align_center">
										<div class="table_text_align_center quantity_div">
											<input type="text" value="${ci.shipCount}"
												class="quantity_input">
											<button class="quantity_btn plus_btn">+</button>
											<button class="quantity_btn minus_btn">-</button>
										</div> <a class="quantity_modify_btn" data-cartid="${ci.cartId}">변경</a>
									</td>

									<td class="td_width_4 table_text_align_center delete_btn">
									<button id="delete_btn" data-cartid="${ci.cartId}">삭제</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<table class="list_table">
					</table>
				</div>
				<!-- 가격 종합 -->
				<div class="content_total_section">
					<div class="total_wrap">
						<table>
							<tr>
								<td>
									<table>
										<tr>
											<td>총 상품 가격</td>
											<td><span class="totalPrice_span"></span> 원</td>
										</tr>
										<tr>
											<td>배송비</td>
											<td><span class="delivery_price"></span>원</td>
										</tr>
										<tr>
											<td>총 주문 상품수</td>
											<td><span class="totalKind_span"></span>종 <span
												class="totalCount_span"></span>대</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<tr>
											<td></td>
											<td></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<div class="boundary_div">구분선</div>
						<table>
							<tr>
								<td>
									<table>
										<tbody>
											<tr>
												<td><strong>총 결제 예상 금액</strong></td>
												<td><span class="finalTotalPrice_span"></span> 원</td>
											</tr>
										</tbody>
									</table>
								</td>

							</tr>
						</table>
					</div>
				</div>
				<!-- 구매 버튼 영역 -->
				<div class="content_btn_section">
					<a class="order_btn">주문하기</a>
				</div>
				
				
					<!-- 수량 조정 form -->
			<form action="/cart/update" method="post" class="quantity_update_form">
				<input type="hidden" name="cartId" class="update_cartId">
				<input type="hidden" name="shipCount" class="update_shipCount">
				<input type="hidden" name="user_id" value="${member.user_id}">
			</form>

			<!-- 삭제 form -->
			<form action="/cart/delete" method="post" id="quantity_delete_form">
				<input type="hidden" name="cartId" id="delete_cartId">
				<input type="hidden" name="user_id" value="${member.user_id}">
			</form>	
			
			
			<!-- 주문 form -->
			<form action="/order/${member.user_id}" method="get" class="order_form">

			</form>
			
			</div>
		</div>
	</div>

	<script>
$(document).ready(function(){
	setTotalInfo();
	/* 이미지 삽입 */
	$(".image_wrap").each(function(i, obj){
			const bobj = $(obj);
		
					if(bobj.data("shipid")){
						const uploadPath = bobj.data("path");
						const uuid = bobj.data("uuid");
						const fileName = bobj.data("filename");
			
						const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
			
						$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
					} else {
						$(this).find("img").attr('src', '/resources/image/goodsNoImage.png');
					}	    
	
			});
});

/* 체크여부에따른 종합 정보 변화 */
$(".individual_cart_checkbox").on("change", function(){
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));
});

/* 체크박스 전체 선택 */
$(".all_check_input").on("click", function(){
	/* 체크박스 체크/해제 */
	if($(".all_check_input").prop("checked")){
		$(".individual_cart_checkbox").attr("checked", true);
	} else{
		$(".individual_cart_checkbox").attr("checked", false);
	}
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));	
});

function setTotalInfo(){
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;	
	let deliveryPrice = 0;			// 배송비// 총 갯수
	let totalKind = 0;	
	let finalTotalPrice = 0; 
$(".cart_info_td").each(function(index, element){
	if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
		// 총 가격
		totalPrice += parseInt($(element).find(".individual_shipPrice_shipCount_input").val());
		// 총 갯수
		totalCount += parseInt($(element).find(".individual_shipCount_input").val());
		// 총 종류
		totalKind += 1;
	}
});
/* 배송비 결정 */
if(totalPrice >= 30000){
	deliveryPrice = 10000;
} else if(totalPrice == 0){
	deliveryPrice = 0;
} else {
	deliveryPrice = 50000;	
}	

/* 최종 가격 */
finalTotalPrice = totalPrice + deliveryPrice;
/* 값 삽입 */
// 총 가격
$(".totalPrice_span").text(totalPrice.toLocaleString());
// 총 갯수
$(".totalCount_span").text(totalCount);
// 총 종류
$(".totalKind_span").text(totalKind);
// 배송비
$(".delivery_price").text(deliveryPrice);	
// 최종 가격(총 가격 + 배송비)
$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
}

/* 수량버튼 */
$(".plus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	$(this).parent("div").find("input").val(++quantity);
});
$(".minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
});

/* 수량 수정 버튼 */
$(".quantity_modify_btn").on("click", function(){
	let cartId = $(this).data("cartid");
	let shipCount = $(this).parent("td").find("input").val();
	$(".update_cartId").val(cartId);
	$(".update_shipCount").val(shipCount);
	$(".quantity_update_form").submit();
	
});

/* 장바구니 삭제 버튼 */
$("#delete_btn").on("click", function(e){
	e.preventDefault();
	const cartId = $(this).data("cartid");
	$("#delete_cartId").val(cartId);
	$("#quantity_delete_form").submit();
});

/* 주문 페이지 이동 */	
$(".order_btn").on("click", function(){
	
	let form_contents ='';
	let orderNumber = 0;
	
	$(".cart_info_td").each(function(index, element){
		
		if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
			
			let shipId = $(element).find(".individual_shipId_input").val();
			let shipCount = $(element).find(".individual_shipCount_input").val();
			
			let shipId_input = "<input name='orders[" + orderNumber + "].shipId' type='hidden' value='" + shipId + "'>";
			form_contents += shipId_input;
			
			let shipCount_input = "<input name='orders[" + orderNumber + "].shipCount' type='hidden' value='" + shipCount + "'>";
			form_contents += shipCount_input;
			
			orderNumber += 1;
			
		}
	});	

	$(".order_form").html(form_contents);
	$(".order_form").submit();
	
});
</script>

</body>
</html>