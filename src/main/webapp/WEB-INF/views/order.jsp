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
								<option value="T">품명</option>

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

				<div class="content_main">
					<div class="member_info_div">
						<table class="table_text_align_center memberInfo_table">
							<tbody>
								<tr>
									<th style="width: 25%;">주문자</th>
									<td style="width: *">${memberInfo.user_nick}|
										${memberInfo.user_email}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="addressInfo_div">
						<div class="addressInfo_button_div">
							<button class="address_btn address_btn_1"
								onclick="showAdress('1')" style="background-color: #3c3838;">사용자
								정보 주소록</button>
							<button class="address_btn address_btn_2"
								onclick="showAdress('2')">직접 입력</button>
						</div>
						<div class="addressInfo_input_div_wrap">
							<div class="addressInfo_input_div addressInfo_input_div_1"
								style="display: block">
								<table>
									<colgroup>
										<col width="25%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td>${memberInfo.user_nick}</td>
										</tr>
										<tr>
											<th>주소</th>
											<td>${memberInfo.user_address}
											<input class="selectAddress" value="T" type="hidden">
											<input class="addressee_input" value="${memberInfo.user_nick}" type="hidden">
											<input class="address1_input" type="hidden" value="${memberInfo.user_address}">
	

											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="addressInfo_input_div addressInfo_input_div_2">

								<table>
									<colgroup>
										<col width="25%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td><input class="addressee_input"></td>
										</tr>
										<tr>
											<th>주소</th>
											<td>

											<input class="selectAddress" value="F" type="hidden">
											<input class="address1_input" placeholder="우편번호, 상세주소">
											<a class="address_search_btn" onclick="execution_daum_address()">주소 찾기</a>
											</td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
					</div>

					<div class="orderGoods_div">
						<!-- 상품 종류 -->
						<div class="goods_kind_div">
							주문상품 <span class="goods_kind_div_kind"></span>종 <span
								class="goods_kind_div_count"></span>개
						</div>
						<!-- 상품 테이블 -->
						<table class="goods_subject_table">
							<colgroup>
								<col width="15%">
								<col width="45%">
								<col width="40%">
							</colgroup>
							<tbody>
								<tr>
									<th>이미지</th>
									<th>상품 정보</th>
									<th>판매가</th>
								</tr>
							</tbody>
						</table>
						<table class="goods_table">
							<colgroup>
								<col width="15%">
								<col width="45%">
								<col width="40%">
							</colgroup>
							<tbody>
								<c:forEach items="${orderList}" var="ol">
									<tr>
										<td>
											<div class="image_wrap"
												data-shipid="${ol.imageList[0].shipId}"
												data-path="${ol.imageList[0].uploadPath}"
												data-uuid="${ol.imageList[0].uuid}"
												data-filename="${ol.imageList[0].fileName}">
												<img>
											</div>
										</td>
										<td><span id="shipNameTd">${ol.shipName}</span></td>
										<td class="goods_table_price_td">수량 ${ol.shipCount}개 <br>
										<fmt:formatNumber value="${ol.shipPrice*ol.shipCount}" pattern="#,### 원" />
											<input type="hidden" class="individual_shipPrice_input"value="${ol.shipPrice}"> 
											<input type="hidden"class="individual_shipCount_input" value="${ol.shipCount}">
											<input type="hidden" class="individual_shipPrice_shipCount_input" value="${ol.shipPrice * ol.shipCount}">
											<input type="hidden" class="individual_shipId_input"value="${ol.shipId}">
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<!-- 주문 종합 정보 -->
					<div class="total_info_div">
						<!-- 가격 종합 정보 -->
						<div class="total_info_price_div">
							<ul>
								<li><span class="price_span_label">상품 금액</span> <span
									class="totalPrice_span"></span>원</li>
								<li><span class="price_span_label">배송비</span> <span
									class="delivery_price_span"></span>원</li>

								<li class="price_total_li"><strong
									class="price_span_label total_price_label">최종 결제 금액</strong> <strong
									class="strong_red"> <span
										class="total_price_red finalTotalPrice_span"></span>원
								</strong></li>
							</ul>
						</div>
						<!-- 버튼 영역 -->
						<div class="total_info_btn_div">
							<!-- <button class="order_btn">결제하기</button> -->
						</div>

						 
						<form method="post" action="/kakaoPay">
						    <button class="order_btn">카카오페이</button>
						    <input type=hidden name="total_amount" value="2000">
						    <input type=hidden name="tax_free_amount" value="200">
						    <input type=hidden name="partner_order_id" value="1002">
						    <input type=hidden name="partner_user_id" value="admin">
						    <input type=hidden name="item_name" value="타이탄외 1건">
						    <input type=hidden name="quantity" value="1">
					    
						</form>
 
					</div>


				</div>
		<!-- 주문 요청 form -->
		<form class="order_form" action="/order" method="post">
			<!-- 주문자 회원번호 -->
			<input name="memberId" value="${memberInfo.user_id}" type="hidden">
			<!-- 주소록 & 받는이-->
			<input name="addressee" type="hidden">
			<input name="memberAddr1" type="hidden">
			<!-- 사용 포인트 -->
			<input name="usePoint" type="hidden">
			<!-- 상품 정보 -->
		</form>

			</div>
		</div>
	</div>

	<script>
		/* 주소입력란 버튼 동작(숨김, 등장) */

		$(document).ready(function() {

			/* 주문 조합정보란 최신화 */
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

		function showAdress(className) {
			/* 컨텐츠 동작 */
			/* 모두 숨기기 */
			$(".addressInfo_input_div").css('display', 'none');
			/* 컨텐츠 보이기 */
			$(".addressInfo_input_div_" + className).css('display', 'block');

			/* 버튼 색상 변경 */
			/* 모든 색상 동일 */
			$(".address_btn").css('backgroundColor', '#555');
			/* 지정 색상 변경 */
			$(".address_btn_" + className).css('backgroundColor', '#3c3838');
			
			/* selectAddress T/F */
			/* 모든 selectAddress F만들기 */
				$(".addressInfo_input_div").each(function(i, obj){
					$(obj).find(".selectAddress").val("F");
				});
			/* 선택한 selectAdress T만들기 */
				$(".addressInfo_input_div"+ className).find(".selectAddress").val("T");
		}

		/* 다음 주소 연동 */
		function execution_daum_address() {
			console.log("동작");
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 추가해야할 코드
								// 주소변수 문자열과 참고항목 문자열 합치기
								addr += extraAddr;

							} else {
								addr += ' ';
							}

							// 제거해야할 코드
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							$(".address").val(data.zonecode);

						}
					}).open();

		}

		/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
		function setTotalInfo() {

			let totalPrice = 0; // 총 가격
			let totalCount = 0; // 총 갯수
			let totalKind = 0; // 총 종류
			let deliveryPrice = 0; // 배송비
			let finalTotalPrice = 0; // 최종 가격(총 가격 + 배송비)	

			$(".goods_table_price_td").each(
					function(index, element) {
						// 총 가격
						totalPrice += parseInt($(element).find(
								".individual_shipPrice_shipCount_input").val());
						// 총 갯수
						totalCount += parseInt($(element).find(
								".individual_shipCount_input").val());
						// 총 종류
						
						totalKind += 1;
						
						
					});

			/* 배송비 결정 */
			if (totalPrice >= 30000) {
				deliveryPrice = 10000;
			} else if (totalPrice == 0) {
				deliveryPrice = 0;
			} else {
				deliveryPrice = 50000;
			}

			finalTotalPrice = totalPrice + deliveryPrice;

			/* 값 삽입 */
			// 총 가격
			$(".totalPrice_span").text(totalPrice.toLocaleString());
			// 총 갯수
			$(".goods_kind_div_count").text(totalCount);
			// 총 종류
			$(".goods_kind_div_kind").text(totalKind);
			// 배송비
			$(".delivery_price_span").text(deliveryPrice.toLocaleString());
			// 최종 가격(총 가격 + 배송비)
			$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());

		}
		

			
	
	
		/* 주문 요청 */
		$(".order_btn").on("click", function(){
	
			/* 주소 정보 & 받는이*/
			$(".addressInfo_input_div").each(function(i, obj){
				if($(obj).find(".selectAddress").val() === 'T'){
					$("input[name='addressee']").val($(obj).find(".addressee_input").val());
					$("input[name='memberAddr1']").val($(obj).find(".address1_input").val());
				}
			});	
	
			
		/* 상품정보 */
		let form_contents = ''; 
		$(".goods_table_price_td").each(function(index, element){
			let shipId = $(element).find(".individual_shipId_input").val();
			let shipCount = $(element).find(".individual_shipCount_input").val();
			let shipId_input = "<input name='orders[" + index + "].shipId' type='hidden' value='" + shipId + "'>";
			form_contents += shipId_input;
			let shipCount_input = "<input name='orders[" + index + "].shipCount' type='hidden' value='" + shipCount + "'>";
			form_contents += shipCount_input;
		});	
		$(".order_form").append(form_contents);	
		
		/* 서버 전송 */
		$(".order_form").submit();	
			
		});
	</script>
</body>
</html>