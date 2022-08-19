<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/css/search.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<style type="text/css">
/* 비디오 배경 */
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
/* 상품 표 */
.list_search_result {
	width: 90%;
	margin: auto;
}

.type_list {
	width: 100%;
	border-bottom: 1px solid #00ffff;
	border-collapse: collapse;
}
/* 리스트 줄들 */
.type_list tr {
	height: 91.2px;
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
	border: 2px solid #00ffff;
	font-weight: 400;
}

.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}
/* 페이지넘기기 숫자 설정 */
.pageMaker_btn a:link {
	color: #00ffff;
}

.pageMaker_btn a:visited {
	color: #00ffff;
}

.pageMaker_btn a:active {
	color: #00ffff;
}

.pageMaker_btn a:hover {
	color: #00ffff;
}

.next a, .prev a {
	color: #ccc;
}
/* 상품 이미지 관련 */
.image_wrap {
	margin-left: 200px;
	height: 72px;
	width: 200px;
}

.image_wrap img {
	border-radius: 20px;
	max-width: 130%;
	height: 72px;
	display: block;
}
</style>
<link rel="stylesheet" href="/resources/css/make.css">
</head>
<body>
	<%@include file="./header.jsp"%>
	<video id="videobcg" preload="auto" autoplay="true" loop="loop"
		muted="muted">

		<source src="../../../resources/css/spaceGalaxy.mp4" type="video/mp4">

	</video>
	<div class="wrapper">
		<div class="wrap">

			<div class="content_area">
				<!-- 게시물 o -->
				<c:if test="${listcheck != 'empty'}">
					<div class="list_search_result">
						<table class="type_list">

							<colgroup>
								<col width="110">
								<col width="*">
								<col width="120">
								<col width="120">
								<col width="120">
							</colgroup>
							<tbody id="searchList>">


								<c:forEach items="${list}" var="list">

									<tr>

										<td class="image">
											<div class="image_wrap"
												data-shipid="${list.imageList[0].shipId}"
												data-path="${list.imageList[0].uploadPath}"
												data-uuid="${list.imageList[0].uuid}"
												data-filename="${list.imageList[0].fileName}">
												<img>
											</div>
										</td>

										<td class="detail">

											<div>
												<a class="title" href="/goodsDetail/${list.shipId}">
													${list.shipName}</a>
											</div>

										</td>

										<td class="info">
											<div class="rating">평점(추후 추가)</div>
										</td>

										<td class="price">
											<div class="priceText">${list.shipPrice}$</div>
										</td>

										<td class="option"></td>
									</tr>

								</c:forEach>
							</tbody>

						</table>
					</div>
					<!-- 페이지 이동 인터페이스 -->
					<div class="pageMaker_wrap">
						<ul class="pageMaker">

							<!-- 이전 버튼 -->
							<c:if test="${pageMaker.prev }">
								<li class="pageMaker_btn prev"><a
									href="${pageMaker.pageStart -1}">이전</a></li>
							</c:if>

							<!-- 페이지 번호 -->
							<c:forEach begin="${pageMaker.pageStart }"
								end="${pageMaker.pageEnd }" var="num">
								<li
									class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
									<a href="${num}">${num}</a>
								</li>
							</c:forEach>

							<!-- 다음 버튼 -->
							<c:if test="${pageMaker.next}">
								<li class="pageMaker_btn next"><a
									href="${pageMaker.pageEnd + 1 }">다음</a></li>
							</c:if>
						</ul>
					</div>

					<form id="moveForm" action="/search" method="get">
						<input type="hidden" name="pageNum"
							value="${pageMaker.cri.pageNum}"> <input type="hidden"
							name="amount" value="${pageMaker.cri.amount}"> <input
							type="hidden" name="keyword" value="${pageMaker.cri.keyword}">


					</form>
				</c:if>
				<!-- 게시물 x -->
				<c:if test="${listcheck == 'empty'}">
					<div class="table_empty">검색결과가 없습니다.</div>
				</c:if>
			</div>
		</div>
	</div>

	<script type="text/javascript" id="rendered-js">
		$(document)
				.ready(
						function() {
							// 검색 타입 selected
							const selectedType = '<c:out value="${pageMaker.cri.type}"/>';
							if (selectedType != "") {
								$("select[name='type']").val(selectedType)
										.attr("selected", "selected");
							}
							/* 이미지 삽입 */
							$(".image_wrap")
									.each(
											function(i, obj) {
												const bobj = $(obj);
												if (bobj.data("shipid")) {
													const uploadPath = bobj
															.data("path");
													const uuid = bobj
															.data("uuid");
													const fileName = bobj
															.data("filename");
													const fileCallPath = encodeURIComponent(uploadPath
															+ "/s_"
															+ uuid
															+ "_" + fileName);
													$(this)
															.find("img")
															.attr(
																	'src',
																	'/display?fileName='
																			+ fileCallPath);
												} else {
													$(this)
															.find("img")
															.attr('src',
																	'/resources/image/goodsNoImage.png');
												}
											});
						});
		/* 페이지 이동 버튼 */
		const moveForm = $('#moveForm');
		$(".pageMaker_btn a").on("click", function(e) {
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.submit();
		});
	</script>

	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>

</body>
</html>
