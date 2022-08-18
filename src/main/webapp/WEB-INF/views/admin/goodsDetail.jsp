<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#videobcg {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 1920px;
	min-height: 1080px;
	width: 100%;
	height: 100%;
	z-index: -1000;
	overflow: hidden;
}

#result_card img {
	max-width: 400px;
	height: auto;
	display: block;
	padding: 5px;
	margin-top: 10px;
	margin: auto;
}
</style>
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../../../resources/css/goodsDetail.css">
</head>

 <style>
/* 깔끔하게 스크롤바싹없애는 */
html, body, div, video {
	margin: 0;
	padding: 0;
}
body {
	padding: 0px, 0px, 0px, 0px;
	margin: 0px, 0px, 0px, 0px;
	overflow: hidden;
	background-color: black;
}
</style> 


<body>
	<video id="videobcg" preload="auto" autoplay="true" loop="loop"
		muted="muted">

		<source src="../../../resources/css/spaceGalaxy.mp4" type="video/mp4">

	</video>


	<div class="admin_content_wrap">
		<div class="admin_content_subject">
			<span>상품 상세</span>
		</div>



		<div class="container">

			<div class="admin_content_main">
				<div class="neon_effect">
					<div class="inputText1">
						<label class="menuText">ship 제목</label>
					</div>
					<div class="inputbox">
						<input class="inputTag" name="shipName"
							value="<c:out value="${goodsInfo.shipName}"/>" disabled>
					</div>


					<div class="inputText2">
						<label class="menuText">ship 가격</label>
					</div>
					<div class="inputbox">
						<input class="inputTag" name="shipPrice"
							value="<c:out value="${goodsInfo.shipPrice}"/>" disabled>
					</div>



					<div class="inputText3">
						<label class="menuText">ship 재고</label>
					</div>
					<div class="inputbox">
						<input class="inputTag" name="shipStock"
							value="<c:out value="${goodsInfo.shipStock}"/>" disabled>
					</div>






					<div class="inputText5">
						<label class="menuText">등록 날짜</label>
					</div>
					<div class="inputbox">
						<input class="inputTag"
							value="<fmt:formatDate value='${goodsInfo.regDate}' pattern='yyyy-MM-dd'/>"
							disabled>
					</div>



					<div class="inputText6">
						<label class="menuText">최근 수정 날짜</label>
					</div>
					<div class="inputbox">
						<input class="inputTag"
							value="<fmt:formatDate value='${goodsInfo.updateDate}' pattern='yyyy-MM-dd'/>"
							disabled>
					</div>


					<div class="inputText4">

						<label class="menuText">ship 소개</label>
					</div>
					<div class="areaBox">
						<textarea class="inputTagLarge" name="shipIntro"
							id="shipIntro_textarea" disabled>${goodsInfo.shipIntro}</textarea>
					</div>
				</div>

			</div>




			<div class="btn_box">
				<button id="modifyBtn" class="btn">수정</button>
				<!-- </div>
			<div class="btn_box2"> -->
				<button id="cancelBtn" class="btn">상품 목록</button>
			</div>
				
				
				
				<a href="/adminMenu"><button  id="cancelBtn" class="goHomeBtn"> 관리자 메뉴로 돌아가기 </button></a>
			<!-- <button id="cancelBtn" class="btn">관리자 메뉴로 돌아가기</button> -->

			<!-- 
			<div class="neon_effect">
			
					<div class="back">
						<a href="/adminMenu" class="btn btn--1"><p
								class="btnText">관리자 메뉴로 돌아가기</p></a>
					</div>
		
			</div>
			<div class="neon_effect">
				<button id="cancelBtn" class="mainBtn2">
					<div class="back">
						<a href="/adminMenu/goodsManage" class="btn btn--1"><p
								class="btnText">수정</p></a>
					</div>
				</button>
			</div> -->



		</div>

		<div class="imgCont">
			<div class="form_section_title">
				<label>상품 이미지</label>
			</div>
			<div class="form_section_content">

				<div id="uploadReslut" class="imgBox"></div>
			</div>
		</div>

		<form id="moveForm" action="/adminMenu/goodsManage" method="get">
			<input type="hidden" name="pageNum" value="${cri.pageNum}"> <input
				type="hidden" name="amount" value="${cri.amount}"> <input
				type="hidden" name="keyword" value="${cri.keyword}">

		</form>

	</div>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							/* 이미지 정보 호출 */
							let shipId = '<c:out value="${goodsInfo.shipId}"/>';
							let uploadReslut = $("#uploadReslut");

							$
									.getJSON(
											"/getAttachList",
											{
												shipId : shipId
											},
											function(arr) {
												if (arr.length === 0) {
													let str = "";
													str += "<div id='result_card'>";
													str += "<img src='/resources/image/goodsNoImage.png'>";
													str += "</div>";

													uploadReslut.html(str);
													return;
												}
												let str = "";
												let obj = arr[0];

												let fileCallPath = encodeURIComponent(obj.uploadPath
														+ "/s_"
														+ obj.uuid
														+ "_" + obj.fileName);
												str += "<div id='result_card'";
        				str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
        				str += ">";
												str += "<img src='/display?fileName="
														+ fileCallPath + "'>";
												str += "</div>";

												uploadReslut.html(str);

											});
						});

		/* 목록 이동 버튼 */
		$("#cancelBtn").on("click", function(e) {
			e.preventDefault();
			$("#moveForm").submit();
		});
		/* 수정 페이지 이동 */
		$("#modifyBtn")
				.on(
						"click",
						function(e) {
							e.preventDefault();
							let addInput = '<input type="hidden" name="shipId" value="${goodsInfo.shipId}">';
							$("#moveForm").append(addInput);
							$("#moveForm").attr("action", "/admin/goodsModify");
							$("#moveForm").submit();
						});
	</script>
</body>
</html>