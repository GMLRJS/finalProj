<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="javascript:;" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 회사정보 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngorgcht" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 조직도 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngemptelno" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 비상연락망 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 아파트정보 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngaptinfo" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 단지정보 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mnghpprinfo" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 평형정보 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngcttpc" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 연락처 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngestateinfo" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 부동산정보 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 공용시설 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mnggym" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 헬스장 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngpool" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 수영장 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngglfpr" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 스크린골프장 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngreadingroom" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 독서실 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mnglibrary" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 도서관 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 검침기록 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngelctymtinsp?rlvtYm=202307&hshldInfoNo=101101" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 전기 검침 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngwtrmtinsp?rlvtYm=202307&hshldInfoNo=101101" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 수도 검침 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mnggasmtinsp?rlvtYm=202307&hshldInfoNo=101101" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 가스 검침 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 차량통제 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngvhcleinfo" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 입주민차량 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngvisitvhcle" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 방문차량 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngboombarrier" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 주차차단기 관리 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">


<h5 class="text-lg font-medium leading-none mt-3">시설/보안 > 공용시설 관리 > 수영장</h5>
<!-- BEGIN: 시설 소개카드 -->
<div class="intro-y box mt-3" style="width: 980px;  float: center;">
	<div class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
	    <h3 class="font-large text-base ml-3 flex font-bold text-lg">시설 소개&nbsp;&nbsp;</h3>
	</div>
	<div id="center-mode-slider" class="p-3">
	    <div class="mx-8">
	        <div class="center-mode">
	            <div id="img_1" class="recom h-60 px-2">
	                <div class="h-full bg-primary rounded-md">
	                    <div class="w-40 h-full image-fit rounded-md" style="width: 100%; height: 100%;">
	                        <img id="img1" alt="img1" data-action="zoom" class="w-full h-full rounded-md" src="/resources/images/life/kidPool.jpg">
	                    </div>
	                </div>
	            </div>
	            <div id="img_2" class="recom h-60 px-2">
	                <div class="h-full bg-primary rounded-md">
	                    <div class="w-40 h-full image-fit rounded-md" style="width: 100%; height: 100%;">
	                        <img id="img2" alt="img2" data-action="zoom" class="w-full h-full rounded-md" src="/resources/images/life/pool.png">
	                    </div>
	                </div>
	            </div>
	            <div id="img_3" class="recom h-60 px-2">
	                <div class="h-full bg-primary rounded-md">
	                    <div class="w-40 h-full image-fit rounded-md" style="width: 100%; height: 100%;">
	                        <img id="img3" alt="img3" data-action="zoom" class="w-full h-full rounded-md" src="/resources/images/life/pool3.jpg">
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</div>
<!-- END: 시설소개 카드 끝 -->
<div class="alert alert-dismissible show box bg-primary text-white flex items-center mt-5" role="alert">
    <span style="font-size: 17px; margin-left: 350px;" >
    	&nbsp;실시간 이용인원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<span style="font-weight: bold;">24</span>명
    </span>
</div>
<!-- 시설 유의사항 -->
<div class="intro-y box" style="width: 980px; height: 350px; margin-top: 20px;">
    <div class="" style="float: left; width:850px;">
        <input class="font-large text-base ml-3 mt-3 pt-3 pl-3 flex font-bold text-lg" style="font-size: 20px;" value="안내사항" readonly />
        <textarea class="borderless" style="border: none; font-size: 20px; line-height: 1.5; width: 800px; height: 300px;" readonly>
           ◆ 운영시간
              - 평일 : 오전 09시 ~ 오후 21시
              - 토요일 : 오전 9시 ~ 오후 19시
              - 공휴일 및 일요일 휴무

           ◆ 유의사항
              - 일일권 및 회원 등록은 문의바랍니다.
              - 미취학 아동은 보호자 동반 및 구명조끼 착용이 필수입니다.
              - 타이용자에게 피해를 주는 행동은 시설이용에 제한이 될 수 있습니다.
        </textarea>
    </div>
    <!-- 시설 유의사항 끝 -->

</div>
<!-- END: Body -->
</div>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("시설/보안");
	$("#sub_menu").html("공용시설 관리");

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
</script>

