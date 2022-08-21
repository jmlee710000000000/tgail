
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/img/favicon.ico" type="image/x-icon" />


<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

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
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입페이지</title>
<script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
   crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/regist.css">

<style>
/* html, body, div, video {
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
   
} */
</style>
</head>
<body>
   <video id="videobcg" preload="auto" autoplay="true" loop="loop"
   muted="muted">

   <source src="../../../resources/css/spaceGalaxy.mp4" type="video/mp4">



</video>


   <div class="page">

      <form role="form" method="post" action="/memberInsert" id="signform">
         <input type="hidden" name="${_csrf.headerName}"
            value="${_csrf.token}">
         <h1 class="mainText">회원가입</h1>
         <p class="mainText2">회원가입에 사용될 정보를 입력하십시다.</p>



         <div class="inputTag">
            <div class="errorMsg" id="errorMsg"></div>
            <div class="highlight"></div>

            <div class="form-box">

               <input type="text" name="user_id" id="id" class="input-ty"
                  placeholder="아이디" />
               <!-- <button type="button" class="duplcheck" id="duplcheck">중복체크</button> -->

               <!-- <button type="button" name="signup" id="duplcheck" class="mainBtn2">
                  <div class="back2">
                     <a class="btn3 btn--3">중복체크</a>
                  </div>
               </button> -->
               <div class="id regex" id="div1"></div>
               <input type="password" name="user_pw" id="pw" class="input-ty1"
                  placeholder="비밀번호" />
               <div class="pw regex"></div>
               <input type="password" name="user_re_pw" id="repw"
                  class="input-ty1" placeholder="비밀번호 확인" />
               <div class="repw regex"></div>
               <input type="text" name="user_nick" id="name" class="input-ty1"
                  placeholder="닉네임" />
               <div class="name regex"></div>
               <input type="text" name="user_address" id="address" class="input-ty1"
                  placeholder="주소" />
               <div class="address regex"></div>
               <input type="number" name="user_phone" id="phone" class="input-ty1"
                  placeholder="폰 번호" />
               <div class="phone regex"></div>





               <div class="mail_wrap">
                  <input type="email" name="user_email" id="email" class="input-ty1"
                     placeholder="이메일" />
                  <div class="email regex"></div>

                  <div class="mail_check_wrap">
                     <div class="mail_check_input_box" id="mail_check_input_box_false">
                        <input class="mail_check_input" id="mail_check_input"
                           disabled="disabled" placeholder="인증번호를 입력해주세요. (ex:123456)">
                     </div>
                     <div class="mail_check_button">
                        <span>인증번호 전송</span>
                     </div>
                     <div class="clearfix"></div>
                     <span id="mail_check_input_box_warn" class="emailCheck regex"></span>
                  </div>
               </div>




               <div class="checkDiv">
                  <span class="checkBoxText">이메일 수신에 동의하십니까? </span> <input
                     type="checkbox" class="checkBox" name="user_adult"
                     id="user_adult"><br> <span class="checkBoxText">당신은
                     성인입니까?</span> <input type="checkbox" class="checkBox" name="email_check"
                     id="email_check">

               </div>
            </div>


            <!-- <div class="neon_effect">
               <button type="button" name="signup" id="signupbtn" class="mainBtn">
                  <div class="back">
                     <a class="btn btn--1"><p class="pGold">가입하기</p></a>
                  </div>
               </button>
            </div> -->
            <button type="button" name="signup" id="signupbtn" class="sujungBtn">
               <a class="frame-btn2"> <span
                  class="frame-btn2__outline frame-btn2__outline--tall"> <span
                     class="frame-btn2__line frame-btn2__line--tall"></span> <span
                     class="frame-btn2__line frame-btn2__line--flat"></span>
               </span> <span class="frame-btn2__outline frame-btn2__outline--flat">
                     <span class="frame-btn2__line frame-btn2__line--tall"></span> <span
                     class="frame-btn2__line frame-btn2__line--flat"></span>
               </span> <span class="frame-btn2__solid"></span> <span
                  class="frame-btn2__text">가입하기</span>
               </a>
            </button>




            <div class="goRegister">
               <span class="registText">로그인 하러 가시겠습니까?</span> <a href="/moveLogin"
                  class="registText2">로그인</a>
            </div>

         </div>
      </form>




      <%--
               <form role="form" method="post" action="/memberInsert"
                  id="signform" class="Form Form--spacingTight">
                  <input type="hidden" name="${_csrf.headerName}"
                     value="${_csrf.token}">
                  <header class="Form__Header">
                     <h1 class="Form__Title Heading u-h1">회원가입</h1>
                     <p class="Form__Legend">회원가입에 사용될 정보를 입력하세요</p>
                  </header>
                  <div class="Form__Alert Alert Alert--error" id="errorMsg"></div>
                  <div class="Form__Item">
                     <input type="text" class="Form__Input" name="user_id" id="user_id"
                        aria-label="ID" placeholder="아이디" autofocus="" max="30" min="3">
                     <label class="Form__FloatingLabel">아이디</label>
                     <button type="button" class="Form__ItemHelp Link Link--primary"
                        id="duplcheck">중복체크</button>
                  </div>
                  <div class="id regex" id="div1"></div>
                  <div class="Form__Item">
                     <input type="password" class="Form__Input" name="user_pw" id="pw"
                        aria-label="Last name" placeholder="비밀번호"> <label
                        class="Form__FloatingLabel">비밀번호</label>
                  </div>
                  <div class="pw regex"></div>
                  <div class="Form__Item">
                     <input type="password" class="Form__Input" name="user_re_pw"
                        id="repw" aria-label="Confirm password"
                        placeholder="비밀번호 확인"> <label
                        class="Form__FloatingLabel">비밀번호 확인</label>
                  </div>
                  <div class="repw regex"></div>
                  <div class="Form__Item">
                     <input type="text" class="Form__Input" name="user_nick" id="name"
                        aria-label="NickName" placeholder="닉네임"> <label
                        class="Form__FloatingLabel">닉네임</label>
                  </div>
                  <div class="name regex"></div>
                  <div class="Form__Item">
                     <input type="text" class="Form__Input" name="user_phone"
                        id="phone" aria-label="phone" placeholder="휴대전화 번호"> <label
                        class="Form__FloatingLabel">휴대전화 번호</label>
                  </div>
                  <div class="phone regex"></div>
                  <div class="Form__Item">
                     <input type="email" class="Form__Input" name="user_email"
                        id="email" aria-label="Email" placeholder="이메일"> <label
                        class="Form__FloatingLabel">"이메일"</label>
                     <div class="email regex"></div>
                  </div>
                  <div class="Form__Hint Form__Hint--center">
                     <span class="Text--subdued">이메일 수신에 동의하십니까?
                        </span> <input type="checkbox" class="" name="user_adult"
                        id="user_adult"><br> <span class="Text--subdued">당신은 성인입니까?</span> <input type="checkbox" class="" name="email_check"
                        id="email_check"> <br>
                  </div>
                  <button type="button" name="signup"
                     class="Form__Submit Button Button--primary Button--full"
                     id="signupbtn">회원가입</button>
                  
                  <div class="Form__Hint Form__Hint--center">
                     <span class="Text--subdued">다시 로그인하러 가시겠습니까?</span> <a href="/moveLogin" class="Link Link--secondary">로그인 하러가기</a>
                  </div>
               </form> --%>







      <script>
         /* 신기한 테두리이동 */
         /*    var focus = false;
            $("input").on("click", function(e) {
               console.log(e.currentTarget.id);
               var cur = e.currentTarget.id;
               var cur = $("#" + cur);
               var curWidth = cur.css("width");
               var curHeight = cur.css("height");
               var top = cur.offset().top;
               var left = cur.offset().left;
               if (focus) {
                  $(".highlight").animate({
                     top : top,
                     left : left,
                     width : curWidth,
                     height : curHeight
                  }, 500);
               } else {
                  focus = true;
                  $(".highlight").css({
                     opacity : 10,
                     top : top,
                     left : left,
                     width : curWidth,
                     height : curHeight
                  });
               }
            }); */
         $("#errorMsg").hide();
         var emailNumCheck = false;
         $("#id").on(
               "input",
               function() {
                  var idCheck = false;
                  var regex = /^[a-z][a-z\d]{3,18}$/;
                  var result = regex.exec($("#id").val());
                  var user_id = $("#id").val();
                  if (user_id == null) {
                     $(".id.regex").html("아이디를 입력하십쇼");
                     $(".id.regex").css("color", "red");
                     return;
                  }
                  $.ajax({
                     url : "/idCheck",
                     type : 'post',
                     data : {
                        user_id : user_id
                     },
                     success : function(data) {
                        var result = regex.exec(user_id);
                        if (data == "bad") {
                           $(".id.regex").html("아이디가 중복됩니다.");
                           $(".id.regex").css("color", "red");
                           return;
                        }
                        if (result == null) {
                           $(".id.regex").html(
                                 "한글 안되고 영어 소문자 및 숫자, 4~18자리 입력");
                           $(".id.regex").css("color", "red");
                           return;
                        }
                        if (data != "bad") {
                           $(".id.regex").html("사용가능");
                           $(".id.regex").css("color", "#50ff00");
                           idCheck = true;
                           return;
                        }
                     }
                  }
                  )
               })
         // 중복확인 & id 유효성검사  버튼          
         /* $("#duplcheck")
               .on(
                     "click",
                     function() {
                        var user_id = $("#id").val();
                        if (user_id == "") {
                           $(".id.regex").html(
                                 "아이디를 입력하시는게 밤길 안전에 도움이 될겁니다.");
                           $(".id.regex").css("color", "red");
                           return;
                        }
                        idCheck = true;
                         alert(user_id); 
                        $
                              .ajax({
                                 url : "/idCheck",
                                 type : 'post',
                                 data : {
                                    user_id : user_id
                                 },
                                 success : function(data) {
                                    var regex = /^[a-z][a-z\d]{3,18}$/;
                                    var result = regex
                                          .exec(user_id);
                                    if (data == "bad") {
                                       $(".id.regex").html(
                                             "아이디가 중복됩니다.");
                                       $(".id.regex").css(
                                             "color", "red");
                                       return;
                                    }
                                    if (result == null) {
                                       $(".id.regex")
                                             .html(
                                                   "한글 안되고 영어 소문자 및 숫자, 4~18자리 입력");
                                       $(".id.regex").css(
                                             "color", "red");
                                       return;
                                    }
                                    if (data != "bad"
                                          || result != null) {
                                       $(".id.regex").html(
                                             "사용가능");
                                       $(".id.regex").css(
                                             "color",
                                             "green");
                                       return;
                                    }
                                 }
                              }
                              )
                     })
         }) */
         $("#pw")
               .on(
                     "input",
                     function() {
                        var regex = /(?=.*\d)(?=.*[a-zA-ZS]).{8,}/;
                        var result = regex.exec($("#pw").val())
                        if (result != null) {
                           $(".pw.regex").html("");
                        } else {
                           $(".pw.regex")
                                 .html(
                                       "좋은 말 할때 1개 이상의 문자와 숫자를 포함하여 8자리 이상 입력하시오");
                           $(".pw.regex").css("color", "red");
                        }
                     });
         //비밀번호 확인    
         $("#repw").on("keyup", function() {
            if ($("#pw").val() == $("#repw").val()) {
               $(".repw.regex").html("");
            } else {
               $(".repw.regex").html("비밀번호와 비밀번호확인의 뭐시기가 서로 안맞아버려");
               $(".repw.regex").css("color", "red");
            }
         })
         //이름 유효성검사
         $("#name").on("input", function() {
            var nickCheck = false;
            var regex = /[가-힣]{2,}/;
            var result = regex.exec($("#name").val());
            var user_nick = $("#name").val();
            if (user_nick == null) {
               $(".name.regex").html("이름을 입력하십쇼");
               $(".name.regex").css("color", "red");
               return;
            }
            $.ajax({
               url : "/nickCheck",
               type : 'post',
               data : {
                  user_nick : user_nick
               },
               success : function(data) {
                  var result = regex.exec(user_nick);
                  if (data == "bad") {
                     $(".name.regex").html("이름이 중복됩니다.");
                     $(".name.regex").css("color", "red");
                     return;
                  }
                  if (result == null) {
                     $(".name.regex").html("아니 한글이 아니면 취급안합니다");
                     $(".name.regex").css("color", "red");
                     return;
                  }
                  if (data != "bad") {
                     $(".name.regex").html("사용가능");
                     $(".name.regex").css("color", "#50ff00");
                     nickCheck = true;
                     return;
                  }
               }
            }
            )
         })
         //전화번호 유효성검사
         $("#phone").on("input", function() {
            var regex = /^01\d\d{3,4}\d{4}$/;
            var result = regex.exec($("#phone").val());
            if (result != null) {
               $(".phone.regex").html("");
            } else {
               $(".phone.regex").html("하아...올바른 번호가 아닙니다...");
               $(".phone.regex").css("color", "red");
            }
         })
         //email유효성 검사
         $("#email")
               .on(
                     "input",
                     function() {
                        var emailCheck = false;
                        var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
                        var result = regex.exec($("#email").val());
                        var user_email = $("#email").val();
                        if (user_email == null) {
                           $(".email.regex").html("이름을 입력하십쇼");
                           $(".email.regex").css("color", "red");
                           return;
                        }
                        $
                              .ajax({
                                 url : "/emailCheck",
                                 type : 'post',
                                 data : {
                                    user_email : user_email
                                 },
                                 success : function(data) {
                                    var result = regex
                                          .exec(user_email);
                                    if (data == "bad") {
                                       $(".email.regex").html(
                                             "이메일이 중복됩니다.");
                                       $(".email.regex").css(
                                             "color", "red");
                                       return;
                                    }
                                    if (result == null) {
                                       $(".email.regex")
                                             .html(
                                                   "올바른 이메일이 아닙니다(Ex:Moonjaein@northkorea.com)");
                                       $(".email.regex").css(
                                             "color", "red");
                                       return;
                                    }
                                    if (data != "bad") {
                                       $(".email.regex").html(
                                             "사용가능");
                                       $(".email.regex").css(
                                             "color", "#50ff00");
                                       emailCheck = true;
                                       return;
                                    }
                                 }
                              }
                              )
                     })
         /* 인증번호 이메일 전송 */
         $(".mail_check_button").click(function() {
            var email = $("#email").val();
            var cehckBox = $(".mail_check_input"); // 인증번호 입력란
            var boxWrap = $(".mail_check_input_box");
            $.ajax({
               type : "GET",
               url : "mailCheck?user_email=" + email,
               success : function(data) {
                  //console.log("data : " + data);
                  cehckBox.attr("disabled", false);
                  boxWrap.attr("id", "mail_check_input_box_true");
                  code = data;
               }
            });
            alert('인증번호가 발송되었습니다');
         });
         /*$(".mail_check_button").click(function(event){
          event.preventDefault();
          $('.mail_check_input').prop("disabled", false); // Element(s) are now enabled.
          });
          */
         $(".mail_check_input").on("input", function() {
            var inputCode = $(".mail_check_input").val(); // 입력코드    
            var checkResult = $("#mail_check_input_box_warn"); // 비교 결과   
            if (inputCode == code) { // 일치할 경우
               checkResult.html("인증번호가 일치합니다.");
               $(".emailCheck.regex").css("color", "#50ff00");
               emailNumCheck = true;
            } else { // 일치하지 않을 경우
               checkResult.html("인증번호를 다시 눈닦고 확인해주세요.");
               $(".emailCheck.regex").css("color", "red");
            }
         });
         $("#signupbtn")
               .on(
                     "click",
                     function() {
                        var user_id = $("#id").val();
                        var pw = $("#pw").val();
                        var repw = $("#repw").val();
                        var name = $("#name").val();
                        var address = $("#address").val();
                        var phone = $("#phone").val();
                        var email = $("#email").val();
                        var div = $(".id.regex").text();
                        var div1 = $(".name.regex").text();
                        var div2 = $(".email.regex").text();
                        var divEmailCheck = $(".emailCheck.regex")
                              .text();
                        var idregex = /^[a-z][a-z\d]{3,18}$/;
                        var pwregex = /(?=.*\d)(?=.*[a-zA-ZS]).{8,}/;
                        var nameregex = /[가-힣]{2,}/;
                        var phoneregex = /^01\d\d{3,4}\d{4}$/;
                        var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
                        var idregex = idregex.exec(user_id);
                        if (user_id == "") {
                           $("#errorMsg").show();
                           $("#errorMsg").html("아이디가 비어있읍니다");
                           return;
                        }
                        if (idregex == null) {
                           $("#errorMsg").show();
                           $("#errorMsg").html("아이디의 양식을 다시확인하십쇼");
                           return;
                        }
                        if (div != "사용가능") {
                           $("#errorMsg").show();
                           $("#errorMsg").html("아이디를 다시 확인 해주십쇼");
                           return;
                        } else if (div == "사용가능") {
                           var pwregex = pwregex.exec(pw);
                           if (pw == "") {
                              $("#errorMsg").show();
                              $("#errorMsg").html("비밀번호가 비어있읍니다");
                              return;
                           }
                           if (pwregex == null) {
                              $("#errorMsg").show();
                              $("#errorMsg").html("비밀번호가 정상이 아입니다");
                              return;
                           }
                           if (repw == "") {
                              $("#errorMsg").show();
                              $("#errorMsg").html("비밀번호 확인란이 비어있읍니다");
                              return;
                           }
                           if (pw != repw) {
                              $("#errorMsg").show();
                              $("#errorMsg").html("비밀번호가 일치하지 않읍니다");
                              return;
                           }
                           var nameregex = nameregex.exec(name);
                           if (nameregex == null || div1 != "사용가능") {
                              $("#errorMsg").show();
                              $("#errorMsg")
                                    .html(
                                          "이름양식을 다시 확인해주시겠읍니까? (2글자이상 Ex:박근혜가 문재인걸 안철수)");
                              return;
                           } else if (div1 == "사용가능") {
                              
                              if (address == "") {
                                 $("#errorMsg").show();
                                 $("#errorMsg").html("주소가 비어있읍니다");
                                 return;
                              }else if (address != "") {
                                 
                              
                              
                              
                              
                              var phoneregex = phoneregex.exec(phone) ;
                              if (phoneregex == null) {
                                 $("#errorMsg").show();
                                 $("#errorMsg")
                                       .html(
                                             "핸드폰번호양식을 다시 확인해주시겠읍니까? (Ex:01011112222)");
                                 return;
                              }else if(phoneregex!= null){
                              var emailregex = emailregex.exec(email);
                              if (emailregex == null
                                    || div2 != "사용가능") {
                                 $("#errorMsg").show();
                                 $("#errorMsg")
                                       .html(
                                             "이메일양식을 다시 확인하입시다 ex:Ex:Moonjaein@northkorea.com");
                                 return;
                              } else if (div2 == "사용가능") {
                                 
                               if (divEmailCheck == "") {
                                    $("#errorMsg").show();
                                    $("#errorMsg").html(
                                          "이메일 인증을 완료해주십쇼.");
                                    return;
                                 } else if (divEmailCheck != "") {
                                    if (divEmailCheck == "인증번호를 다시 눈닦고 확인해주세요.") {
                                       $("#errorMsg").show();
                                       $("#errorMsg")
                                             .html(
                                                   "인증번호를 다시 확인해주세요.ex:181818");
                                    } else if (divEmailCheck == "인증번호가 일치합니다.") {
                                       $("#signform").submit();
                                    }
                                 }
                                 //빈칸 없을 때 제출.
                              }
                              }}
                           }}
                     })
      </script>

   </div>
   <script type="text/javascript" src="/resources/js/js"></script>




</body>
</html>