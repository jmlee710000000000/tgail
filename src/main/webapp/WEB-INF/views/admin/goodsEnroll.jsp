<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">



<title>상품등록</title>




<link rel="stylesheet" href="${path}/resources/css/goodsEnroll.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>


<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

<style type="text/css">
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
border-radius:30px;
	max-width: 100%;
	height: auto;
	display: block;
	padding: 5px;
	margin-top: 10px;
	margin-left:40px;
}
#result_card {
	position: relative;
}
.imgDeleteBtn {
	position: absolute;
	top: 0;
	margin-left:29px;
	background-color: #ef7d7d;
	color: wheat;
	font-weight: 900;
	width: 30px;
	height: 30px;
	border-radius: 50%;
	line-height: 26px;
	text-align: center;
	border: none;
	display: block;
	cursor: pointer;
}
</style>


</head>

<!-- <style>
/* 깔끔하게 스크롤바싹없애는 */
html, body, div, video {
	margin: 0;
	padding: 0;
}
body {
	padding: 0px, 0px, 0px, 0px;
	margin: 0px, 0px, 0px, 0px;
	overflow: hidden;
	background-color: #000;
}
.container {
	
}
</style> -->

<!-- <body translate="no">
	<div class="container">
		<div class="slide-bar" id="slidebar">
			<div class="bar" id="bar"></div>
		</div>
		<div class="neon_effect">
			<div class="text-block" id="textone">
				<h1 class="mainText">registration</h1>
			</div>
			<div class="text-block" id="texttwo">
				<h1 class="mainText2">상품 등록</h1>
			</div>
		</div>
	</div>
</body> -->
<!-- <form action="/adminMenu/goodsEnroll" method="post" id="enrollForm">
		<label>SPACE SHIP NAME</label> <input name="shipName"
			required="required" type="text" class="inputTag"> <br> <label>SPACE
			SHIP PRICE</label> <input name="shipPrice" required="required" type="number"
			class="inputTag"><br> <label>SPACE SHIP STOCK
			(TIP:재고)</label> <input name="shipStock" required="required" type="number"
			class="inputTag"><br> <label>SPACE SHIP INTRO</label> <input
			name="shipIntro" required="required" type="text" class="inputTag">
		<br>
		<button type="submit" id="enrollBtn" class="btn enroll_btn">등
			록</button>
	</form>
	<button id="cancelBtn" class="btn">취 소</button> -->
<body>



	 <video id="videobcg" preload="auto" autoplay="true" loop="loop"
		muted="muted">

		<source src="../../../resources/css/earthShip.mp4" type="video/mp4">

	</video> 
	<div class="neon_effect">
		<h1 class="mainText2">상품 등록</h1>
	</div>
	<form action="/adminMenu/goodsEnroll" method="post" id="enrollForm">

		<div class="all">
			<div class="mainBox">
				<div class="neon_effect">
					<div class="userText">
						<h2 class="userText1H2">
							PRODUCT NAME <br> PRODUCT PRICE <br> PRODUCT STOCK <br>
							DESCRIPTION
						</h2>
					</div>
				</div>
				<div class="neon_effect">
					<div class="userText2">
						<h2 class="userText2H2">
							<input name="shipName" required="required" type="text"
								class="input-ty1" placeholder="Ex:오사마 빈 라덴 자서전(상품명)"> <br>
							<input name="shipPrice" required="required" type="number"
								class="input-ty1" placeholder="Ex:1000(가격)"><br> <input
								name="shipStock" required="required" type="number"
								class="input-ty1" placeholder="Ex:9689(재고량)"><br> <input
								name="shipIntro" required="required" type="text"
								class="input-ty1" placeholder="Ex:알라는 위대하시다(간단상품설명)"><br>

						</h2>
						<div class="form_section">
							
							<div class="form_section_content">
								<input type="file" multiple id="fileItem" name='uploadFile'
									class="imgBtn">
								<div id="uploadResult"></div>
							</div>
						</div>


					</div>
				</div>
			</div>

			<div class="neon_effect">
				<button type="submit" id="enrollBtn" class="mainBtn">
					<div class="back">
						<a class="btn btn--1"><p class="pGold">등록</p></a>

					</div>
				</button>
			</div>

			<div class="neon_effect">
				<div class="exitBtnBox">
					<a href="/adminMenu" class="homeGoBtn"><p class="exitBtn">홈으로
							가기</p></a>
				</div>
			</div>
		</div>
	</form>


	<!-- 지우면 안되는 쓸모없는 쓰레기 버튼 -->
	<button id="changeBtn" class="changeBtn">&nbsp;</button>

<body>
	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CustomEase3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/DrawSVGPlugin3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/ScrambleTextPlugin3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/SplitText3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/MorphSVGPlugin3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CustomBounce3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CustomWiggle3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/InertiaPlugin.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/Draggable3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/EasePack3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/Flip.min.js'></script>
	<script id="rendered-js">
	
	/* 취소 버튼 */
	
	
const root = document.documentElement;
const changeBtn = document.getElementById('changeBtn');
let mode = false;
let whiteColor = getComputedStyle(root).getPropertyValue("--white");
let blackColor = getComputedStyle(root).getPropertyValue("--black");
changeBtn.addEventListener('click', e => changeColor());
function changeColor() {
  mode = !mode;
  if (mode) {
    root.style.setProperty('--white', blackColor);
    root.style.setProperty('--black', whiteColor);
  } else {
    root.style.setProperty('--white', whiteColor);
    root.style.setProperty('--black', blackColor);
  }
}
const slideTL = gsap.timeline();
const maskTL = gsap.timeline();
const mainTL = gsap.timeline({
  repeat: -1,
  onRepeat: () => {
    gsap.set('#texttwo', { opacity: 0 });
    gsap.set('#bar', { scaleY: 0.1 });
    gsap.set('#textone h1', { opacity: 1 });
  } });
gsap.set('#texttwo', { opacity: 0 });
gsap.set('#bar', { scaleY: 0.1 });
slideTL.
to('#bar', 1, {
  y: 225,
  scaleY: 1,
  ease: "back.out" }).
to('#slidebar', 1.5, {
  x: 600,
  delay: 0.5,
  ease: "back.inOut(0.8)" }).
to('#slidebar', 1.5, {
  x: 0,
  delay: 0.5,
  ease: "back.inOut(0.8)" }).
to('#slidebar', 1.5, {
  x: 600,
  delay: 0.5,
  ease: "back.inOut(0.8)" }).
to('#bar', 1, {
  y: 500,
  scaleY: 0.1,
  ease: "back.in" });
maskTL.
to('#textone', 1.5, {
  ease: "back.inOut(0.8)",
  "clip-path": "polygon(0 0, 91% 0, 81% 100%, 0% 100%)",
  onComplete: () => {
    gsap.set('#texttwo', { opacity: 1 });
  } }).
to('#textone', 1.5, {
  delay: 0.5,
  ease: "back.inOut(0.8)",
  "clip-path": "polygon(0 0, 18% 0, 8% 100%, 0% 100%)",
  onComplete: () => {
    gsap.set('#textone h1', { opacity: 0 });
  } }).
to('#textone', 1.5, {
  delay: 0.5,
  ease: "back.inOut(0.8)",
  "clip-path": "polygon(0 0, 91% 0, 81% 100%, 0% 100%)" });
mainTL.
add(slideTL).
add(maskTL, 1.5);
//# sourceURL=pen.js
    </script>

	<script type="text/javascript">
/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	/* 이미지 존재시 삭제 */
	if($(".imgDeleteBtn").length > 0){
		deleteFile();
	}
	let formData = new FormData();
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	} 
	for(let i = 0; i < fileList.length; i++){
		formData.append("uploadFile", fileList[i]);
	}
	
	$.ajax({
		url: '/uploadAjaxAction',
    	processData : false,
    	contentType : false,
    	data : formData,
    	type : 'POST',
    	dataType : 'json',
    	success : function(result){
	    	console.log(result);
	    	showUploadImage(result);
	    },
    	error : function(result){
    		alert("이미지 파일이 아닙니다.");
    	}
	
	});
	
});
/* var, method related with attachFile */
let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 1048576; //1MB	
function fileCheck(fileName, fileSize){
	
		  
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.(ex : test.jpg)");
		return false;
	}
	
	return true;		
	
}
/* 이미지 출력 */
function showUploadImage(uploadResultArr){
	/* 전달받은 데이터 검증 */
	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	 let uploadResult = $("#uploadResult");
	 let obj = uploadResultArr[0];
	 let str = "";
	 let fileCallPath = obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName;
	 	str += "<div id='result_card'>";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
		str += "</div>";
		uploadResult.append(str); 
}
/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});
/* 파일 삭제 메서드 */
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.")
		}
	});
}
</script>

	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>
</body>

</html>
