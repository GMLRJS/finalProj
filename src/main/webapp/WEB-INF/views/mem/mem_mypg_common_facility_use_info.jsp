<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript"
	src="/resources/fullcalendar-6.1.8/dist/index.global.js"></script>
<script type="text/javascript"
	src="/resources/fullcalendar-6.1.8/packages/core/locales-all.global.js"></script>
<!-- BEGIN: Menu -->

<style>
.fc-day-sun a {
	color: red;
	text-decoration: none;
}
</style>
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
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
<h5 class="text-lg font-medium leading-none mt-0 mr-auto">마이페이지
			&gt; 공용시설 이용 내역</h5>
	<div class="box p-5 mt-3">
		<div id="myCalendar" style="height: 450px;"></div>
		<div class="post intro-y overflow-hidden box mt-5">
			<ul
				class="post__tabs nav nav-tabs flex-col sm:flex-row bg-slate-200 dark:bg-darkmode-800"
				role="tablist">
				<li class="nav-item">
					<button data-tw-toggle="tab" data-tw-target="#content" id="gymBtn"
						class="nav-link tooltip w-full sm:w-40 py-4 active"
						id="content-tab" role="tab" aria-controls="content"
						aria-selected="true">
						<img class="mr-2" alt="" style="width: 24px; height: 24px;"
							src="/resources/images/free-icon-exercise-4205505.png" /> 헬스장
					</button>
				</li>
				<li class="nav-item">
					<button data-tw-toggle="tab" data-tw-target="#meta-title"
						id="swimmingPoolBtn" class="nav-link tooltip w-full sm:w-40 py-4"
						id="meta-title-tab" role="tab" aria-selected="false">
						<img class="mr-2" alt="" style="width: 24px; height: 24px;"
							src="/resources/images/free-icon-swimming-5222601.png" /> 수영장
					</button>
				</li>
				<li class="nav-item">
					<button data-tw-toggle="tab" data-tw-target="#meta-title"
						id="screenGolfBtn" class="nav-link tooltip w-full sm:w-40 py-4"
						id="meta-title-tab" role="tab" aria-selected="false">
						<img class="mr-2" alt="" style="width: 24px; height: 24px;"
							src="/resources/images/free-icon-swing-7555832.png" /> 스크린 골프장
					</button>
				</li>
				<li class="nav-item">
					<button data-tw-toggle="tab" data-tw-target="#meta-title"
						id="libraryBtn" class="nav-link tooltip w-full sm:w-40 py-4"
						id="meta-title-tab" role="tab" aria-selected="false">
						<img class="mr-2" alt="" style="width: 24px; height: 24px;"
							src="/resources/images/free-icon-library-225993.png" /> 도서관
					</button>
				</li>
				<li class="nav-item">
					<button data-tw-toggle="tab" data-tw-target="#keywords"
						id="readRmBtn" class="nav-link tooltip w-full sm:w-40 py-4"
						id="keywords-tab" role="tab" aria-selected="false">
						<img class="mr-2" alt="" style="width: 24px; height: 24px;"
							src="/resources/images/free-icon-reading-3993362.png" /> 독서실
					</button>
				</li>
			</ul>
			<div class="post__content tab-content">
				<div id="content" class="tab-pane active" role="tabpanel"
					aria-labelledby="content-tab">
					<div class="overflow-x-auto ">
						<table class="table table-hover">
							<thead id="mythead">

							</thead>
							<tbody id="mytbody">

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>

</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
var calendarEl = document.getElementById('myCalendar');
	$(function() {

		let loanData = new Array();
		let golfData = new Array();
		let readrmData = new Array();
		let gymData = new Array();
		let swmpData = new Array();
		$("#main_menu").html("마이페이지");
		$("#sub_menu").html("공용시설 이용내역");

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


		let loanBookList = JSON.parse('${loanBookList}');
		let golfUseList = JSON.parse('${golfUseList}');
		let readrmUseList = JSON.parse('${readrmUseList}');
		let gymUseList = JSON.parse('${gymUseList}');
		let swmplUseList = JSON.parse('${swmplUseList}');

		console.log(golfUseList);

		for (let i = 0; i<loanBookList.length; i++){
			let data = new Object();
			data.title = loanBookList[i]['bookSj'];
			data.start = loanBookList[i]['beginYmd'];
			data.end = loanBookList[i]['endYmd'];
			data.color = '#6B8E23';

			loanData.push(data);
		}

		for (let i = 0; i < golfUseList.length; i++){
			let data = new Object();
			data.title = golfUseList[i]['startTm']+"-"+golfUseList[i]['endTm'];
			data.start = golfUseList[i]['useYmd'];
			data.color = '#6B8E23';
			golfData.push(data);

		}


		for (let i = 0; i < readrmUseList.length; i++){
			let data = new Object();
			data.title = readrmUseList[i]['beginTm']+"-"+readrmUseList[i]['endTm'];
			data.start = readrmUseList[i]['useYmd'];
			data.color = '#6B8E23';
			readrmData.push(data);
		}


		for (let i = 0; i < gymUseList.length; i++){
			let data = new Object();
			data.title = gymUseList[i]['beginTm']+"-"+gymUseList[i]['endTm'];
			data.start = gymUseList[i]['useYmd'];
			data.color = '#6B8E23';
			gymData.push(data);
		}


		for (let i = 0; i < swmplUseList.length; i++){
			let data = new Object();
			data.title = swmplUseList[i]['beginTm']+"-"+swmplUseList[i]['endTm'];
			data.start = swmplUseList[i]['useYmd'];
			data.color = '#6B8E23';
			swmpData.push(data);
		}


		function calendarRender(schedulData){
			let calendar = new FullCalendar.Calendar(calendarEl, {
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
				},
				defaultDate : new Date(),
				locale : "ko",
				navLinks : true, // can click day/week names to navigate views
				businessHours : true, // display business hours
				editable : true,
				selectable : true,
				dayMaxEvents : true,
				events : schedulData
			});
			calendar.render();
		};


		$("#gymBtn").on("click",function(){
			calendarRender(gymData);
			gymUseTableSettion();
		});
		$("#swimmingPoolBtn").on("click",function(){
			calendarRender(swmpData);
			swimUseTableSetting()
		});
		$("#screenGolfBtn").on("click",function(){
			calendarRender(golfData);
			golfUseTableSetting();
		});
		$("#readRmBtn").on("click",function(){
			calendarRender(readrmData);
			readrmTableSetting();
		});
		$("#libraryBtn").on("click",function(){
			calendarRender(loanData);
			loadBookTableSetting();
		});

		function getToday(){
		    let date = new Date();
		    let year = date.getFullYear();
		    let month = ("0" + (1 + date.getMonth())).slice(-2);
		    let day = ("0" + date.getDate()).slice(-2);

		    return year + month + day;
		}


		function readrmTableSetting(){
			let theadStr = "";
			let tbodyStr = "";
			theadStr += "<tr>";
			theadStr += "<th class='whitespace-nowrap'>#</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;이용날짜</th>";
			theadStr += "<th class='whitespace-nowrap' colspan=2>&nbsp;&nbsp;&nbsp;이용시간</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상세</th>";
			theadStr += "</tr>";

			for (let i = 0; i<5; i++){
				let useYear = readrmUseList[i]['useYmd'].substr(0, 4);
				let useMonth = readrmUseList[i]['useYmd'].substr(4, 2);
				let useDay = readrmUseList[i]['useYmd'].substr(6, 2);
				let useYmd = useYear + "-" + useMonth+ "-" + useDay;

				tbodyStr += "<tr>";

				tbodyStr += "<td>"+(i+1)+"</td>";
				tbodyStr += "<td>"+ useYmd +"</td>";
				tbodyStr += "<td colspan=2>"+readrmUseList[i]['beginTm']+" ~ "+readrmUseList[i]['endTm']+"</td>";
				tbodyStr += "<td>";
				if(swmplUseList[i]['useYmd'] > getToday()){
					tbodyStr += "<button class='btn btn-rounded w-24 mr-1 '>예약</button>";
				}else{
					tbodyStr += "<button class='btn btn-rounded btn-success-soft w-24 mr-1 '>사용완료</button>";
				}
				tbodyStr += "</td>";
				tbodyStr += "</tr>";


				}

				$("#mythead").html(theadStr);
				$("#mytbody").html(tbodyStr);
			}
		function swimUseTableSetting(){
			let theadStr = "";
			let tbodyStr = "";
			theadStr += "<tr>";
			theadStr += "<th class='whitespace-nowrap'>#</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;이용날짜</th>";
			theadStr += "<th class='whitespace-nowrap' colspan=2>&nbsp;&nbsp;&nbsp;이용시간</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상세</th>";
			theadStr += "</tr>";

			for (let i = 0; i<5; i++){
				let useYear = swmplUseList[i]['useYmd'].substr(0, 4);
				let useMonth = swmplUseList[i]['useYmd'].substr(4, 2);
				let useDay = swmplUseList[i]['useYmd'].substr(6, 2);
				let useYmd = useYear + "-" + useMonth+ "-" + useDay;

				tbodyStr += "<tr>";

				tbodyStr += "<td>"+(i+1)+"</td>";
				tbodyStr += "<td>"+ useYmd +"</td>";
				tbodyStr += "<td colspan=2>"+swmplUseList[i]['beginTm']+" ~ "+swmplUseList[i]['endTm']+"</td>";
				tbodyStr += "<td>";
				if(swmplUseList[i]['useYmd'] > getToday()){
					tbodyStr += "<button class='btn btn-rounded btn-warning-soft w-24'>예약</button>";
				}else{
					tbodyStr += "<button class='btn btn-rounded btn-success-soft w-24'>사용완료</button>";
				}
				tbodyStr += "</td>";
				tbodyStr += "</tr>";


				}

				$("#mythead").html(theadStr);
				$("#mytbody").html(tbodyStr);
			}
		function golfUseTableSetting(){
			let theadStr = "";
			let tbodyStr = "";
			theadStr += "<tr>";
			theadStr += "<th class='whitespace-nowrap'>#</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;이용날짜</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;이용시간</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상세</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;스윙폼 분석</th>";
			theadStr += "</tr>";

			for (let i = 0; i<golfUseList.length; i++){
				console.log(golfUseList[i]);
				console.log(golfUseList[i]['useYmd']);
				console.log(golfUseList[i]['useYmd'].substr(0, 4));
				let useYear = golfUseList[i]['useYmd'].substr(0, 4);
				let useMonth = golfUseList[i]['useYmd'].substr(4, 2);
				let useDay = golfUseList[i]['useYmd'].substr(6, 2);
				let useYmdas = useYear + "-" + useMonth+ "-" + useDay;

				tbodyStr += "<tr>";
				tbodyStr += "<td>"+(i+1)+"</td>";
				tbodyStr += "<td>"+ useYmdas +"</td>";
				tbodyStr += "<td>"+golfUseList[i]['startTm']+" ~ "+golfUseList[i]['endTm']+"</td>";
				if(golfUseList[i]['useYmd'] > getToday()){
					tbodyStr += "<td>";
					tbodyStr += "<button class='btn btn-rounded w-24'>예약</button>";
					tbodyStr += "</td>";
					tbodyStr += '<td>';
					tbodyStr += "<a href='#' onclick = swingAnalyze("+golfUseList[i]['rcordNo']+")><svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='play' data-lucide='play' class='lucide lucide-play block mx-auto'><polygon points='5 3 19 12 5 21 5 3'></polygon></svg></a>";
					tbodyStr += "</td>";
				}else{
					tbodyStr += "<td>";
					tbodyStr += "<button class='btn btn-rounded btn-success-soft w-24'>사용완료</button>";
					tbodyStr += "</td>";
					tbodyStr += "<td>";
					tbodyStr += "<a href='#' onclick = swingAnalyze("+golfUseList[i]['rcordNo']+")><svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='film' data-lucide='film' class='lucide lucide-film block mx-auto'><rect x='2' y='2' width='20' height='20' rx='2.18' ry='2.18'></rect><line x1='7' y1='2' x2='7' y2='22'></line><line x1='17' y1='2' x2='17' y2='22'></line><line x1='2' y1='12' x2='22' y2='12'></line><line x1='2' y1='7' x2='7' y2='7'></line><line x1='2' y1='17' x2='7' y2='17'></line><line x1='17' y1='17' x2='22' y2='17'></line><line x1='17' y1='7' x2='22' y2='7'></line></svg></a>";
					tbodyStr += "</td>";
				}
				tbodyStr += "</tr>";


				}

				$("#mythead").html(theadStr);
				$("#mytbody").html(tbodyStr);
			}






		function gymUseTableSettion(){

			let theadStr = "";
			let tbodyStr = "";
			theadStr += "<tr>";
			theadStr += "<th class='whitespace-nowrap'>#</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;이용날짜</th>";
			theadStr += "<th class='whitespace-nowrap' colspan=2>&nbsp;&nbsp;&nbsp;이용시간</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상세</th>";
			theadStr += "</tr>";

			for (let i = 0; i<5; i++){
				let useYear = gymUseList[i]['useYmd'].substr(0, 4);
				let useMonth = gymUseList[i]['useYmd'].substr(4, 2);
				let useDay = gymUseList[i]['useYmd'].substr(6, 2);
				let useYmd = useYear + "-" + useMonth+ "-" + useDay;

				tbodyStr += "<tr>";

				tbodyStr += "<td>"+(i+1)+"</td>";
				tbodyStr += "<td>"+ useYmd +"</td>";
				tbodyStr += "<td colspan=2>"+gymUseList[i]['beginTm']+" ~ "+gymUseList[i]['endTm']+"</td>";
				tbodyStr += "<td>";
				tbodyStr += "<button class='btn btn-rounded btn-success-soft w-24'>사용완료</button>";
				tbodyStr += "</td>";
				tbodyStr += "</tr>";

			}
			$("#mythead").html(theadStr);
			$("#mytbody").html(tbodyStr);



		}


		function loadBookTableSetting(){
			let theadStr = "";
			let tbodyStr = "";
			theadStr += "<tr>";
			theadStr += "<th class='whitespace-nowrap'>#</th>";
			theadStr += "<th class='whitespace-nowrap' colspan =2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용날짜</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;대출정보</th>";
			theadStr += "<th class='whitespace-nowrap'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상세</th>";
			theadStr += "</tr>";

			for (let i = 0; i<5; i++){

				let beginYear = loanBookList[i]['beginYmd'].substr(0, 4);
				let beginMonth = loanBookList[i]['beginYmd'].substr(4, 2);
				let beginDay = loanBookList[i]['beginYmd'].substr(6, 2);
				let beginYmd = beginYear +"-"+beginMonth+"-"+beginDay;
				let endYear = loanBookList[i]['endYmd'].substr(0, 4);
				let endMonth = loanBookList[i]['endYmd'].substr(4, 2);
				let endDay = loanBookList[i]['endYmd'].substr(6, 2);
				let endYmd = endYear +"-"+endMonth+"-"+endDay;



				tbodyStr += "<tr>";

				tbodyStr += "<td>"+(i+1)+"</td>";
				tbodyStr += "<td colspan=2>"+ beginYmd +"~"+ endYmd +"</td>";
				tbodyStr += "<td>"+loanBookList[i]['bookSj']+"</td>";
				tbodyStr += "<td>";
				if(loanBookList[i]['loanSttsCd'] == "LOAN02"){
					tbodyStr += "<button class='btn btn-rounded btn-success-soft w-24'>반납완료</button>";
				}else if(loanBookList[i]['loanSttsCd'] == "LOAN01"){
					tbodyStr += "<button class='btn btn-rounded w-24'>대출중</button>";

				}else if(loanBookList[i]['loanSttsCd'] == "LOAN03"){
					tbodyStr += "<button class='btn btn-rounded btn-pending-soft w-24'>연체</button>";
				}
				tbodyStr += "</td>";
				tbodyStr += "</tr>";

			}
			$("#mythead").html(theadStr);
			$("#mytbody").html(tbodyStr);

		}






	});
	function swingAnalyze(rcordNo){
		console.log("swingAnalyze");
		console.log(rcordNo);
		window.open("http://127.0.0.1:5000/?rcordNo="+rcordNo, "_blank", "width=500,height=800");
	}


	document.addEventListener('DOMContentLoaded', function() {

	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      headerToolbar: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
	      },
	      initialDate:new Date(),
	      navLinks: true, // can click day/week names to navigate views
	      businessHours: true, // display business hours
	      editable: true,
	      selectable: true,
	      locale : "ko",
	      dayMaxEvents : true,
	      events: []
	    });

	    calendar.render();
	  });

</script>


