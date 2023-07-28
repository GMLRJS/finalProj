<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<style>
.form-label {
   display: inline-block;
   white-space: nowrap;
   width: 100px;
   font-size: 15px;
}
</style>
<!-- BEGIN: Body -->
<div class="bdy col-span-11 bg-white mt-10 mb-10 rounded-md shadow-md">
   <div class="my-auto px-5 py-8 rounded-md w-full">
      <div class="my-auto xl:bg-transparent px-5 py-8 rounded-md " >
         <h2 class="intro-x font-bold text-3xl text-center mb-10">얼굴인식 로그인</h2>
         <div class="intro-x mt-10 ml-auto mr-auto item-center" style="width: 640px; text-align: center;">
             <video id="video" width="640" height="480" autoplay></video>
         </div>
         <div class="intro-x mt-10 ml-auto mr-auto item-center capdiv" id="capdiv" style="text-align: center;">
            <form id="frm" name="frm" action="/login" method="post">
            <div id="loginset"><label for="validation-form-1" class="form-label flex flex-col">아이디</label>
            <input id="username" type="text" name="username"
                  class="form-control mr-5" placeholder="6-12자 사이로 입력해주세요"
                  minlength="5" maxlength="12" style="width: 215px;" required>
            <button type="button" id="login" style="width: 100px;">
               <span class="btn btn-primary w-full">로그인</span>
            </button>
            <input id="password" type="hidden" name="password">
            <input id="rememberMe" type="checkbox" name="rememberMe"
                  class="form-check-input border ml-8 mr-2">아이디 저장</label>
            </div>
            <sec:csrfInput />
            </form>
         </div>
      </div>
   </div>
</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function() {
   $("#main_menu").html("마이페이지");
   $("#sub_menu").html("개인정보 수정");

   var title = $("#sub_menu").text();
   var arr_menu = $(".side-menu__title");
   var cur_menu = null;
   for (var i = 0; i < arr_menu.length; i++) {
      if (arr_menu[i].innerText == title) {
         cur_menu = arr_menu[i];
      }
   }
   $(cur_menu).parent().addClass("side-menu--active");

   $(".side-nav > ul > li > .side-menu").on("click", function() {
      // 좌측 메뉴 선택 시 효과 적용
      $(".side-menu").removeClass("side-menu--active");
      $(this).addClass("side-menu--active");

      // 메뉴 경로 표시 (좌측 메뉴)
      var sub = $(this).find(".side-menu__title").text();
      console.log(sub.trim());
      $("#sub_menu").html(sub.trim());
   });
});

// 얼굴인식 로그인
$(function() {
   var video = document.getElementById('video');
    var loginBtn = document.getElementById('login');
    var canvas = document.createElement('canvas');
    var context = canvas.getContext('2d');
    var formData = new FormData();

    navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
    video.srcObject = stream;
    video.play();
    })
    .catch(function(error) {
       console.error(error);
    });

   loginBtn.addEventListener('click', function() {
       captureAndSend();
       $("#loginset").css("display", "none");
      $("#capdiv").append("<span id='capspan' style='color: green; font-size: 17px;'>얼굴인식 중.</span>");
      setInterval(function() {
         var text = $("#capspan").text();
         if (text.endsWith('...')) {
            $("#capspan").text("얼굴인식 중");
         } else {
            $("#capspan").text(text + ".");
         }
      }, 500);
   });


   function captureAndSend() {
       return new Promise(function(resolve, reject) {
          function captureFrame() {
             canvas.width = video.videoWidth;
             canvas.height = video.videoHeight;
             context.drawImage(video, 0, 0, canvas.width, canvas.height);
             canvas.toBlob(function(blob) {
               formData.append('file', blob, 'login.jpg');
               formData.append('mem_id', document.getElementById('username').value);
               jQuery.ajax({
                    url: "http://localhost:5001/login.ajax",
                  processData: false,
                  contentType: false,
                  data: formData,
                  type: "POST",
                  success: function(response) {
                       console.log("파이썬 ", response);
                        if (response == 'fail') {
                           $("#capspan").text("인식 완료");
                          setTimeout(function() {
                              alert("로그인 실패");
                              location.href = 'signin';}, 1);
                       } else {
                          console.log(response)
                           $("#password").val(response);
                          console.log("아이디값 " + $("#username").val());
                          console.log("패스워드값 " + $("#password").val());
                          document.getElementById('frm').submit();
                          $("#capspan").text("인식 완료");
                          setTimeout(function() {
                              alert("로그인 성공");
                              location.href = '/mem/main';}, 1);
                       }
                   },
                   error: function(xhr, status, error) {
                        console.error(xhr, status, error);
                     }
                  });//ajax끝
                  resolve();
             }, 'image/jpeg', 0.9);
          }
            captureFrame();
      });
     }

});

//쿠키값 set
function setCookie(cookieName, value, exdays){
    let exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    let cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

//쿠키값 delete
function deleteCookie(cookieName){
    let expireDate = new Date();
    expireDate.setDate(expireDate.getDate() -1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

//쿠키값 get
function getCookie(cookieName){
    cookieName = cookieName + "=";
    let cookieData = document.cookie;
    let start = cookieData.indexOf(cookieName);
    let cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        let end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue); //unescape로 디코딩 후 값 리턴
}
$(function(){
    /* id 저장 체크박스 기능 추가 */
    var userInputId = getCookie("userInputId");//저장된 쿠기값 가져오기
    $("#username").val(userInputId);

    if($("#username").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩
        $("#rememberMe").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }

    $("#rememberMe").on("change", function(){ // 체크박스에 변화가 발생시
        if($("#rememberMe").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("#username").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#username").on("keyup", function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#rememberMe").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("#username").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});

</script>

