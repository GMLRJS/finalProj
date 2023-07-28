<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height:100%;">
    	<nav class="side-nav">
		    <ul>
		       <li>
		            <a href="javascript:;" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 관리비 조회
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/mem/mypg/managectbbs" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 나의 관리비</div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/mem/mypg/managectbbs/comp" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 관리비 비교 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="/mem/mypg/personalInfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 개인정보 수정 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/myclub" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 나의 소모임 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/useInfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 공용시설 이용내역 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/visit" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 방문차량 예약내역 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/mypostmngbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 게시글 관리 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/favoritebbs"" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 관심글 관리 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<sec:authorize access="hasRole('ROLE_MEMBER')">
<div class="bdy col-span-10 bg-white rounded-md shadow-md">
	<div class="my-auto xl:bg-transparent px-5 py-8 rounded-md " >
		<h2 class="intro-x font-bold text-3xl text-center mt-10 mb-10">얼굴인식 로그인 등록</h2>
		<sec:authentication property="principal.userVO" var="userVO"/>
		<form id="frm" name="frm" action="/mem/mypg/personalInfo/authPost" method="post" enctype="multipart/form-data">
		<div class="intro-x mt-10 ml-auto mr-auto item-center" style="width: 640px; text-align: center;">
		    <video id="video" width="640" height="480" autoplay></video>
		</div>
		<div class="intro-x mt-10 ml-auto mr-auto item-center capdiv" id="capdiv" style="text-align: center;">
			<button type="button" id="capture" style="width: 200px;">
				<span class="btn btn-primary w-full">얼굴 등록</span>
			</button>
		</div>
		<input id="hiddenInputMemId" type="hidden" name="memId" value="${userVO.memberVO.memId}">
		<sec:csrfInput />
		</form>
	</div>
</div>
</sec:authorize>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("마이페이지");
	$("#sub_menu").html("개인정보 수정");

	var title = $("#sub_menu").text();
	var arr_menu = $(".side-menu__title");
	var cur_menu = null;
	for (var i = 0; i < arr_menu.length; i++) {
		if ( arr_menu[i].innerText == title ) {
			cur_menu = arr_menu[i];
		}
	}
	$(cur_menu).parent().addClass("side-menu--active");

	$(".side-nav > ul > li > .side-menu").on("click", function(){
		// 좌측 메뉴 선택 시 효과 적용
		$(".side-menu").removeClass("side-menu--active");
		$(this).addClass("side-menu--active");

		// 메뉴 경로 표시 (좌측 메뉴)
		var sub = $(this).find(".side-menu__title").text();
		console.log(sub.trim());
		$("#sub_menu").html(sub.trim());
	});
});

$(function() {
	var video = document.getElementById('video');
	var captureBtn = document.getElementById('capture');
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

	captureBtn.addEventListener('click', function() {
		captureAndSend();
		captureBtn.remove();
		$("#capdiv").append("<span id='capspan' style='color: green; font-size: 17px;'>얼굴인식 및 데이터 만드는중</span>");
		setInterval(function() {
			var text = $("#capspan").text();
			if (text.endsWith('...')) {
				$("#capspan").text("얼굴인식 및 데이터 만드는중");
			} else {
				$("#capspan").text(text + ".");
			}
		}, 500);
	});

	function captureAndSend() {
		return new Promise(function(resolve, reject) {
			var count = 0;
			function captureFrame() {
				canvas.width = video.videoWidth;
				canvas.height = video.videoHeight;
          		context.drawImage(video, 0, 0, canvas.width, canvas.height);
          		canvas.toBlob(function(blob) {
					formData.append('file[]', blob, count + '.jpg');
          	  		count++;
	          	  	if (count < 40) {
	          		  	setTimeout(captureFrame, 10);
	          	  	} else {
	            	  	formData.append('mem_id', "${userVO.memberVO.memId}");

	            	  	//python으로 보내기
	            	  	jQuery.ajax({
					  		url: "http://192.168.141.14:5000/capture.ajax",
					  		processData: false,
					  		contentType: false,
					  		data: formData,
					  		type: "POST",
					  		success: function(response) {
					  			console.log(response);
					  			var data = {
					  				    memId : "${userVO.memberVO.memId}",
					  				  	faceH5 : "${userVO.memberVO.memId}" + "_face.h5"
					  				};

					  			//db로 보내기
					  			jQuery.ajax({
					  			    url: "/mem/mypg/personalInfo/faceloginRegister",
					  			    data: JSON.stringify(data),
					  			    type: "POST",
					  			    contentType: 'application/json; charset=utf-8',
					  			    beforeSend : function(xhr) {
					  			    	xhr.setRequestHeader("${_csrf.headerName}",
					  			    			"${_csrf.token}");
									},
					  			    success: function(response) {
					  			        console.log(response);
					  			        if (response == 1) {
					  			        	$("#capspan").text("등록 완료");
						  			        alert("얼굴 등록 성공!");
						  			        window.location.href = "/mem/mypg/personalInfo/auth";
					  			        } else {
					  			        	$("#capspan").text("등록 실패");
						  			        alert("얼굴 등록 실패");
					  			        }

					  			    },
					  			    error: function(xhr, status, error) {
					  			        console.error(xhr, status, error);
					  			    }
					  			});// python ajax끝
					  		},
					  		error: function(xhr, status, error) {
					      		console.error(xhr, status, error);
							}
	                	});// java ajax 끝
	                	resolve();
            		}//if끝
        		}, 'image/jpeg', 0.9);
   			}
   			captureFrame();
		});
  	}
});
</script>


