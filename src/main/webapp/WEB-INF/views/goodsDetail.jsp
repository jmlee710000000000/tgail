<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="/resources/css/goodsDetail2.css">
</head>
<body>
<%@include file="./header.jsp" %>
<a href="/cart/${member.user_id}">장바구니</a>
 <div class="wrapper">
	<div class="wrap">
			<div class="search_area">
                	<div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<select name="type">
                					<option value="T">책 제목</option>
                					<option value="A">작가</option>
                				</select>
                				<input type="text" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
			</div>
		<div class="content_area">
						<div class="line">
			</div>			
			<div class="content_top">
				<div class="ct_left_area">
					<div class="image_wrap" data-shipid="${goodsInfo.imageList[0].shipId}" data-path="${goodsInfo.imageList[0].uploadPath}" data-uuid="${goodsInfo.imageList[0].uuid}" data-filename="${goodsInfo.imageList[0].fileName}">
						<img>
					</div>				
				</div>
				<div class="ct_right_area">
					<div class="title">
						<h1>
							${goodsInfo.shipName}
						</h1>
					</div>
					<div class="line">
					</div>
					
					<div class="line">
					</div>	
					<div class="price">
						<div class="sale_price">정가 : <fmt:formatNumber value="${goodsInfo.shipPrice}" pattern="#,### 원" /></div>
						<div class="discount_price">
												
					</div>			
					<div class="line">
					</div>	
					<div class="button">						
						<div class="button_quantity">
							주문수량
							<input type="text" class="quantity_input" value="1">
							<span>
								<button class="plus_btn">+</button>
								<button class="minus_btn">-</button>
							</span>
						</div>
						<div class="button_set">
							<button class="btn_cart">장바구니 담기</button>
							<button class="btn_buy">바로구매</button>
								<!-- id는 check_module를 쓰겠습니다. -->
							<button id="check_module" type="button">테스트 결제</button>
						</div>
					</div>
				</div>
			</div>
			<div class="line">
			</div>				
			<div class="content_middle">
				<div class="ship_intro">
					${goodsInfo.shipIntro}
				</div>
			</div>
			<div class="line">
			</div>				
			<div class="content_bottom">
				리뷰
			</div>
			
			<!-- 주문 form -->
			<form action="/order/${member.user_id}" method="get" class="order_form">
				<input type="hidden" name="orders[0].shipId" value="${goodsInfo.shipId}">
				<input type="hidden" name="orders[0].shipCount" value="">
			</form>
			
		</div>
	</div>	
</div> 

</div> 

<script>
$(document).ready(function(){
	/* 이미지 삽입 */
	const bobj = $(".image_wrap");
	
	if(bobj.data("shipid")){
		const uploadPath = bobj.data("path");
		const uuid = bobj.data("uuid");
		const fileName = bobj.data("filename");
		
		const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
		
		bobj.find("img").attr('src', '/display?fileName=' + fileCallPath);
	} else {
		bobj.find("img").attr('src', '/resources/img/goodsNoImage.png');
	}
	

	
});	
//서버로 전송할 데이터
const form = {
		user_id : '${member.user_id}',
		shipId : '${goodsInfo.shipId}',
		shipCount : $(".quantity_input").val()
}
// 수량 버튼 조작
let quantity = $(".quantity_input").val();

$(".plus_btn").on("click", function(){
	$(".quantity_input").val(++quantity);
});
$(".minus_btn").on("click", function(){
	if(quantity > 1){
		$(".quantity_input").val(--quantity);	
	}
});

//장바구니 추가 버튼
$(".btn_cart").on("click", function(e){
		form.shipCount = $(".quantity_input").val();
		$.ajax({
			url: '/cart/add',
			type: 'POST',
			data: form,
			success: function(result){
				cartAlert(result);
			}
		})
	});
	
function cartAlert(result){
		if(result == '0'){
			alert("장바구니에 추가를 하지 못하였습니다.");
		} else if(result == '1'){
			alert("장바구니에 추가되었습니다.");
		} else if(result == '2'){
			alert("장바구니에 이미 추가되어져 있습니다.");
		} else if(result == '5'){
			alert("로그인이 필요합니다.");	
			window.location.href = '/moveLogin';
		}
	}
	
/* 바로구매 버튼 */
$(".btn_buy").on("click", function(){
	let shipCount = $(".quantity_input").val();
	$(".order_form").find("input[name='orders[0].shipCount']").val(shipCount);
	$(".order_form").submit();
});

$("#check_module").click(function () {
	var IMP = window.IMP; // 생략가능
	IMP.init("imp60508635"); 
	// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
	// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
	IMP.request_pay({
		pg: 'kakao',
		pay_method: 'card',
		merchant_uid: 'merchant_' + new Date().getTime(),
		/* 
		 *  merchant_uid에 경우 
		 *  https://docs.iamport.kr/implementation/payment
		 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
		 */
		name: '주문명 : 아메리카노',
		// 결제창에서 보여질 이름
		// name: '주문명 : ${auction.a_title}',
		// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
		amount: 2000,
		// amount: ${bid.b_bid},
		// 가격 
		buyer_name: '이름',
		// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
		// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
		buyer_postcode: '123-456',
		}, function (rsp) {
			console.log(rsp);
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '결제 금액 : ' + rsp.paid_amount;
			// success.submit();
			// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
			// 자세한 설명은 구글링으로 보시는게 좋습니다.
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
});
</script>

</body>
</html>