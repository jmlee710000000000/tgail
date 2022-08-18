<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>

<body>
 <form action="/adminMenu/goodsEnroll" method="post" id="enrollForm">
 	<label>SPACE SHIP NAME</label>
    <input name="shipName" required="required" type="text"> <br>
    <label>SPACE SHIP PRICE</label>
    <input name="shipPrice"  required="required" type="number"><br>
    <label>SPACE SHIP STOCK (TIP:재고)</label>
    <input name="shipStock"  required="required" type="number"><br>
    <label>SPACE SHIP INTRO</label>
    <input name="shipIntro" required="required" type="text">
<br>
<button type="submit" id="enrollBtn" class="btn enroll_btn">등 록</button>
 </form>
     <button id="cancelBtn" class="btn">취 소</button>



 <script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/adminMenu"
	
});

/* 상품 등록 버튼 */
/* $("#enrollBtn").on("click",function(e){
	
	e.preventDefault();
	
	enrollForm.submit();

}); */

</script> 
</body>
</html>
