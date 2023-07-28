<%@page import="kr.or.ddit.vo.RstrntRecomVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript"
	src="/resources/tinker/src/js/datepicker.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f39a9d3172470ac2d0a3e650dbb6986"></script>
<style>
.map-intro-y.box.p-5.mt-12.sm\:mt-0 {
	width: 100%;
	/* 너비를 100%로 늘립니다 (브라우저 창 전체) */
	height: 1000px;
	/* 높이를 500px 설정합니다 */
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

#map {
	margin-top: 13px;
	box-sizing: border-box;
	border-radius: 3px;
}

#category li {
	width: 35px;
	higth: 2px;
	font-size: 1px;
	/* 원하는 크기로 조정 */
}

.overlaybox {
	position:;
	width: 360px;
	height: 350px;
	background: url('/resources/images/restaurant/overlaybackground.png')
		no-repeat;
	padding: 15px 10px;
}

.overlaybox div, ul {
	overflow: hidden;
	margin: 0;
	padding: 0;
}
img{
	border-radius: 5px;
}

.overlaybox li {
	list-style: none;
}

.overlaybox .boxtitle {
	color: white;
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 8px;
}

.overlaybox .first {
	position: relative;
	width: 247px;
	height: 136px;
	margin-bottom: 8px;
}

.first .text {
	color: #fff;
	font-weight: bold;
}

.first .triangle {
	position: absolute;
	width: 48px;
	height: 48px;
	top: 0;
	left: 0;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png')
		no-repeat;
	padding: 6px;
	font-size: 18px;
}

.first .movietitle {
	position: absolute;
	width: 100%;
	bottom: 0;
	background: rgba(0, 0, 0, 0.4);
	padding: 7px 15px;
	font-family: 'Pretendard';
	font-size: 15px;
}

.overlaybox ul {
	width: 247px;
/* 	border: 1px solid green; */
 	border-radius: 3px;
}

.overlaybox li {
	position: relative;
	margin-bottom: 0px;
	/* 	background: #2b2d36; */
	padding: 5px 10px;
	color: #000000;
	line-height: 1;
}

.overlaybox li span {
	display: inline-block;
	font-family: 'Pretendard';
}

.overlaybox li .number {
	font-size: 16px;
	font-weight: bold;
}

.overlaybox li .title {
	font-size: 15px;
}

.overlaybox ul .arrow {
	position: absolute;
	margin-top: 8px;
	right: 25px;
	width: 5px;
	height: 3px;
	background: no-repeat;
}

.up {
	background: #f0f8ff;
	background-position: 0 -40px;
}

.down {
	background: #fff;
	background-position: 0 -60px;
}

.overlaybox li .up {
	background: #f0f8ff;
	background-position: 0 -40px;
}

.overlaybox li .down {
	background: #fff;
	background-position: 0 -60px;
}

.overlaybox li .count {
	position: absolute;
	margin-top: 5px;
	right: 15px;
	font-size: 10px;
}

.overlaybox li:hover {
	color: #fff;
	background: #2e8b57;
}

.overlaybox li:hover .up {
	background-position: 0 0px;
}

.overlaybox li:hover .down {
	background-position: 0 -20px;
}

.close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.sidebar {
	position: fixed;
	margin-top: 10px;
	top: 50%;
	right: 40px;
	transform: translateY(-50%);
	width: 200px;
	background-color: #f1f1f1;
	padding: 10px;
	border-radius: 15px;
	justify-content: center;
	align-items: center;
}
</style>
<script type="text/javascript">


	function reviewSubmit(frm){


		if(frm.reviewCn.value == ""){
			frm.reviewCn.focus();
			return false;
		}
		if(frm.visitYmd.value == ""){
			frm.visitYmd.focus();
			return false;
		}
		if(frm.visitYmd.value == "" ){
			frm.visitYmd.focus();
			return false;
		}
		return true;
	};
</script>
<!-- BEGIN: Menu -->
<div class="col-span-15 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg"
		style="height: 100%;">
		<nav class="side-nav">
			<ul>
				<li><a href="/mem/cmnt/neighborbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
												<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path>
											</svg>
						</div>
						<div class="side-menu__title">우리동네</div>
				</a></li>

				<li><a href="/mem/cmnt/secondhandbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
												<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z">
												</path>
												<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
												<line x1="12" y1="22.08" x2="12" y2="12"></line>
											</svg>
						</div>
						<div class="side-menu__title">중고장터</div>
				</a></li>
				<li><a href="/mem/cmnt/clubbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
												<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z">
												</path>
												<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
												<line x1="12" y1="22.08" x2="12" y2="12"></line>
											</svg>
						</div>
						<div class="side-menu__title">소모임</div>
				</a></li>
				<li><a href="/mem/cmnt/freebbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
												<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z">
												</path>
												<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
												<line x1="12" y1="22.08" x2="12" y2="12"></line>
											</svg>
						</div>
						<div class="side-menu__title">자유게시판</div>
				</a></li>
				<li><a href="/mem/cmnt/cvplbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
												<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z">
												</path>
												<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
												<line x1="12" y1="22.08" x2="12" y2="12"></line>
											</svg>
						</div>
						<div class="side-menu__title">민원게시판</div>
				</a></li>
			</ul>
		</nav>
	</div>
</div>
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
<h5 class="text-lg font-medium leading-none mt-0 mr-auto">커뮤니티
         &gt; 우리동네</h5>
	<div class="col-span-12 xl:col-span-8 mt-3">
		<div class="map-intro-y block sm:flex items-center">
			<div class="sidebar" id="floatMenu">
				<div class="map-intro-y block sm:flex h-10"
					style="justify-content: center;">
					<i class="bi bi-info-circle tooltip" title="나이와 성별, 날씨를 기반으로 한 맛집 추천입니다."></i>
					<h5 class="text-lg font-medium leading-none mt-0 ml-1">AI추천 맛집</h5>

				</div>

				<div
					class="intro-y box col-span-6 py-0 border-primary w-full rounded-md"
					id="recom1Div" style="width: 180px; margin-bottom: 1px;">
					<div class="image-fit rounded-md" style="height: 160px;">
						<input type="hidden" id="recom1RstrntId" /> <img id="recom1Img"
							style="" src="" class="w-full rounded-md p-1" alt="" />
					</div>
					<div style="height: 110px;">
						<div class="font-medium text-center text-base mt-0"
							id="recom1Title"></div>
						<div class="text-slate-500 mt-0 mb-0 w-3/4 text-center mx-auto"
							id="recom1Cn"></div>
					</div>
				</div>
				<div
					class="intro-y box col-span-6 py-0 border-primary w-full rounded-md"
					id="recom2Div" style="width: 180px; margin-bottom: 1px;">
					<div class="image-fit rounded-md" style="height: 160px;">
						<input type="hidden" id="recom2RstrntId" /> <img id="recom2Img"
							style="" src="" class="w-full rounded-md p-1" alt="" />
					</div>
					<div style="height: 110px;">
						<div class="font-medium text-center text-base mt-0"
							id="recom2Title"></div>
						<div class="text-slate-500 mt-0 mb-0 w-3/4 text-center mx-auto"
							id="recom2Cn"></div>
					</div>
				</div>
				<div
					class="intro-y box col-span-3 py-0 border-primary w-full rounded-md"
					id="recom3Div" style="width: 180px; margin-bottom: 1px;">
					<div class="image-fit rounded-md" style="height: 160px;">
						<input type="hidden" id="recom3RstrntId" /> <img id="recom3Img"
							style="" src="" class="w-full rounded-md p-1" alt="" />
					</div>
					<div style="height: 110px;">
						<div class="font-medium text-center text-base mt-0"
							id="recom3Title"></div>
						<div class="text-slate-500 mt-0 mb-0 w-3/4 text-center mx-auto"
							id="recom3Cn"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="map-intro-y box p-5 mt-15 sm:mt-0">
			<p style="margin-top: -12px">
				<em class="link"> <a href="/web/documentation/#CategoryCode"
					target="_blank"></a>
				</em>
			</p>
			<div class="map_wrap" style="height: 550px; margin-bottom: 20px">
				<div id="map"
					style="width: 100%; height: 550px; position: relative; overflow: hidden;">
				</div>
			</div>
			<div id="reviewButtonDiv" style="display: none;">
				<button id="reviewButton"
					class="btn btn-primary shadow-md mr-2 mb-1 text-right">리뷰
					작성</button>
			</div>
			<div class="p-4" id="head-options-table"></div>
			<form
				action="/mem/cmnt/neighborbbs/registReview?${_csrf.parameterName}=${_csrf.token}"
				method="post" onsubmit="return reviewSubmit(this)"
				id="registReviewForm" style="display: none;">
				<sec:csrfInput />
				<div style="display: flex; justify-content: center;">
					<input type="hidden" id="gb" name="gb" /> <img
						style="width: 5%; margin-right: 50px;" id="GoodBtn"
						src="/resources/images/restaurant/free-icon-thumb-up-5323428.png"
						alt="" /> <img style="width: 5%;" id="BadBtn"
						src="/resources/images/restaurant/free-icon-thumb-down-5323428.png"
						alt="" />
				</div>
				<div style="display: flex; justify-content: center;">
					<label style="margin-right: 50px;">좋아요</label> <label>싫어요</label>
				</div>
				<label for="visitYmd" class="form-label sm:w-20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;방문
					날짜 </label>
				<div class="form-inline mt-5 ml-5" style="display: inline-block;">
					<div class="relative w-56 mx-auto">
						<input type="date" id="visitYmd" name="visitYmd" />
					</div>
				</div>
				<div class="form-inline mt-5">
					<input type="hidden" id="rstrntId" name="placeId" /> <label
						for="rstrntNm" class="form-label sm:w-20">방문 장소</label> <input
						id="rstrntNm" type="text" class="form-control" value="" readonly>
				</div>
				<div class="form-inline mt-5">
					<label for="reviewCn" class="form-label sm:w-20">한줄 후기</label> <input
						id="reviewCn" name="reviewCn" type="text" class="form-control"
						placeholder="후기 내용">
				</div>
				<div class="sm:ml-20 sm:pl-6 mt-5"
					style="display: flex; justify-content: flex-end;">
					<a class="btn btn-primary" id="registReview"
						style="margin-right: 10px;">등록</a>
					<button class="btn btn-secondary" id="closeForm">취소</button>
				</div>
			</form>

		</div>
	</div>
</div>
<sec:authentication property="principal.userVO.memberVO" var="memVO" />
<c:set var="memId" value="${memVO.memId}" />
<input type="hidden" value="${memId}" id="loginUserId" />


<script type="text/javascript">
function showReivews(data){
	let reviewsTable = document.querySelector('#head-options-table');
	jQuery("#registReviewForm").css("display","none");
	let mapWrap = document.querySelector('.map_wrap');
	let reviews = data;
	let rstrntNm = "";
	if(reviews.length == 0){
		rstrntNm = "";
	}else{
		rstrntNm = reviews[0].rstrntNm;
	}
	// 페이징 변수 및 초기화

	let itemsPerPage = 5;  // 페이지당 보여줄 리뷰 개수
	let currentPage = 1;    // 현재 페이지
	let totalPages = Math.ceil(reviews.length / itemsPerPage);  // 전체 페이지 수


	// 페이지 번호를 계산하는 함수
	function getPagination(page) { //8
		console.log("getPagination");
		let start = (page - 1) * itemsPerPage;
		console.log(start);
		let end = start + itemsPerPage;
		console.log(end);
		return reviews.slice(start, end);
	}// 페이지 번호를 계산하는 함수 종료

	// 페이지 번호 클릭 이벤트 처리
	function handlePageClick(page){

		console.log("handlePageClick")
		currentPage = page;
		updateReviews();
	};// 페이지 번호 클릭 이벤트 처리 함수 종료

	let divContent = "";
	function updateReviews() {
		console.log("updateReviews");
		let paginatedReviews = getPagination(currentPage);

		divContent = `<div class="preview">`;
		divContent += `<div class="overflow-x-auto">`;
		divContent += `<table class="table">`;
		divContent += `<thead class="table-light">`;
		divContent += `<tr>`;
		divContent += `<th class="whitespace-nowrap text-center">번호</th>`;
		divContent += "<th class='whitespace-nowrap'>" + rstrntNm + "</th>";
		divContent += `<th class="whitespace-nowrap">작성자</th>`;
		divContent += `<th class="whitespace-nowrap text-center">방문일</th>`;
		divContent += `<th class="whitespace-nowrap text-center">삭제</th>`;
		divContent += `</tr>`;
		divContent += `</thead>`;
		divContent += `<tbody>`;
		let reviewRows = '';
		if (reviews.length == 0) {
			let row = "<tr>";
			row += "<td></td>";
			row += "<td>해당 장소의 리뷰가 없습니다.</td>";
			row += "</tr>";
			reviewRows += row;
		} else {
			for (let idx = 0; idx < paginatedReviews.length; idx++) {
				let review = paginatedReviews[idx];
				let visitYmd = review['visitYmd'];
				let visitYear = visitYmd.substr(0, 4) + "년";
				let visitMonth = visitYmd.substring(4, 6) + "월";
				let visitDay = visitYmd.substr(6, 8) + "일";
				visitYmd = visitYear + " " + " " + visitMonth + " " + visitDay;

				let row = "<tr>";
				row += "<td  class='text-center'>" + ((currentPage - 1) * itemsPerPage + idx + 1) + "</td>";
				row += "<td>" + review['reviewCn'] + "</td>";
				row += "<td>" + review['memNm'] + "</td>";
				if( review['frstWrterId'] == $("#loginUserId").val()){
				row += "<td class='text-center'>" + visitYmd + "</td>";
				row += "<td><div class='flex lg:justify-center items-center'>";
				row += "<a class='del' href='javascript:;' title=${txt}><svg class='text-danger' xmlns='http://www.w3.org/2000/svg' width='19' height='19' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='trash-2' data-lucide='trash-2' class='lucide lucide-trash-2 block mx-auto'><polyline points='3 6 5 6 21 6'></polyline><path d='M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2'></path><line x1='10' y1='11' x2='10' y2='17'></line><line x1='14' y1='11' x2='14' y2='17'></line></svg></a>";
				row += "</div></td>";
				}else{
					row += "<td>" + visitYmd + "</td>";

				}
				row += "<td></td>";
				row += "</tr>";
				reviewRows += row;
			} //리뷰내용을 담는 for문 종료
		}

		divContent += reviewRows;
		divContent += `</tbody>`;
		divContent += `</table>`;
		console.log(divContent);
		reviewsTable.innerHTML = divContent;

		// 페이징 버튼을 생성하여 요소로 추가
		let paginationDiv = document.createElement('div');
		paginationDiv.classList.add('tabulator-footer');
		paginationDiv.style.display = 'flex';
		paginationDiv.style.justifyContent = 'center';

		let paginatorSpan = document.createElement('span');
		paginatorSpan.classList.add('tabulator-paginator');

		let pagesSpan = document.createElement('span');
		pagesSpan.classList.add('tabulator-pages');

		for (let idx = 1; idx <= totalPages; idx++) {
		  	let button = document.createElement('button');
		 	button.id = 'paging' + idx;
		  	button.textContent = idx;
		  	button.type = 'button';
		  	button.classList.add('btn', 'btn-secondary', 'w-full', 'sm:w-10', 'mt-5', 'sm:mt-2', 'sm:ml-1');
		  	button.addEventListener('click', function(event) {
		  		console.log("click");
		  		handlePageClick(event.target.textContent); // 클릭한 버튼의 텍스트를 페이지 번호로 전달하여 handlePageClick 함수 호출
		  	});

		  pagesSpan.appendChild(button);
		}

		paginatorSpan.appendChild(pagesSpan);
		paginationDiv.appendChild(paginatorSpan);

		divContent += paginationDiv.outerHTML;

		reviewsTable.innerHTML = divContent;


		for (let idx = 1; idx <= totalPages; idx++) {
			jQuery("#paging"+idx).click(function(){
				handlePageClick(idx)
			});
		}
	} //리뷰 업데이트 함수 종료

	updateReviews();  // 초기 리뷰 업데이트

}



	let markers = [];
	let overlays = [];
	let reviewsTable = document.querySelector('#head-options-table');
	let mapContainer = document.getElementById('map'), // 지도를 표시할 div
						mapOption = {
						center: new kakao.maps.LatLng(36.325039040959226, 127.40890399307372), // 지도의 중심좌표
						level: 3
						// 지도의 확대 레벨
						};

	let map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	let imageSrc = '/resources/tinker/src/images/map-marker.svg', // 마커이미지의 주소입니다
		imageSize = new kakao.maps.Size(32, 32), // 마커이미지의 크기입니다
					imageOption = {
					offset: new kakao.maps.Point(16, 46)
					}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다

	let recom = ["${rstrntRecomVO.first}", "${rstrntRecomVO.second}", "${rstrntRecomVO.third}"];
	let recomIndex = [];
	let jsonlist = <%=request.getAttribute("jsonlist")%>;
	let positions = [];
	for (let i = 0; i < jsonlist.length; i++) {
		let obj = {
			latlng: new kakao.maps.LatLng(jsonlist[i]['la'], jsonlist[i]['lo'])
		}
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
		let position = obj;
		positions.push(position);
		let restde;
		let rstrntImg = jsonlist[i]['rstrntImg'];
		let rstrntNm = jsonlist[i]['rstrntNm'];
		let rstrntTel = jsonlist[i]['rstrntTel'];
		let bsnHour = jsonlist[i]['bsnHour'];
		let rstrntId = jsonlist[i]['rstrntId'];
		if (jsonlist[i]['restde'] == null) {
			restde="연중무휴";
		} else {
			restde = jsonlist[i]['restde'];
		}

		if(recom[0] == rstrntId){
			jQuery("#recom1Img").attr("src", rstrntImg);
			jQuery("#recom1RstrntId").val(rstrntId);
			jQuery("#recom1Title").html(rstrntNm);
			jQuery("#recom1Cn").html("영업시간<br/>" + bsnHour + "<br/>" + "번호<br/>" + rstrntTel);
			jQuery("#recom1Div").on("click",function(){
				let reviewButtonDiv = document.getElementById('reviewButtonDiv');
				let form = document.querySelector("#registReviewForm");
				reviewButtonDiv.style.display = 'flex';
		    	reviewButtonDiv.style.justifyContent = 'flex-end';
		    	jQuery("#reviewButton").on("click",function(){
		    		let reviewsTable = document.querySelector('#head-options-table');
		    		reviewsTable.innerHTML = '';
		    		form.style.display = "";

		    		jQuery("#rstrntNm").val(rstrntNm);
		    		jQuery("#rstrntId").val(rstrntId);


		    	});
				jQuery.ajax({
					url: "/mem/cmnt/neighborbbs/reviews?rstrntId=" + rstrntId,
					type: "get",
					contentType: 'application/json; charset=utf-8',
					dataType: "json",
					success: function(reviewList){
						showReivews(reviewList)
					},
					error: function (e) {
						console.log(e + "에러남");
					} //ajax 호출 에러 종료
				}); //ajax 호출 종료
			});


		}
		if(recom[1] == rstrntId){
			jQuery("#recom2RstrntId").val(rstrntId);
			jQuery("#recom2Img").attr("src", rstrntImg);
			jQuery("#recom2Title").html(rstrntNm);
			jQuery("#recom2Cn").html("영업시간<br/>" + bsnHour + "<br/>" + "번호<br/>" + rstrntTel);
			jQuery("#recom2Div").on("click",function(){
				let form = document.querySelector("#registReviewForm");
				let reviewButtonDiv = document.getElementById('reviewButtonDiv');
				reviewButtonDiv.style.display = 'flex';
		    	reviewButtonDiv.style.justifyContent = 'flex-end';
		    	jQuery("#reviewButton").on("click",function(){
		    		let reviewsTable = document.querySelector('#head-options-table');
		    		reviewsTable.innerHTML = '';
		    		form.style.display = "";

		    		jQuery("#rstrntNm").val(rstrntNm);
		    		jQuery("#rstrntId").val(rstrntId);


		    	});
				jQuery.ajax({
					url: "/mem/cmnt/neighborbbs/reviews?rstrntId=" + rstrntId,
					type: "get",
					contentType: 'application/json; charset=utf-8',
					dataType: "json",
					success: function(reviewList){
						showReivews(reviewList)
					},
					error: function (e) {
						console.log(e + "에러남");
					} //ajax 호출 에러 종료
				}); //ajax 호출 종료
			});
		}
		if(recom[2] == rstrntId){
			jQuery("#recom3RstrntId").val(rstrntId);
			jQuery("#recom3Img").attr("src", rstrntImg);
			jQuery("#recom3Title").html(rstrntNm);
			jQuery("#recom3Cn").html("영업시간<br/>" + bsnHour + "<br/>" + "번호<br/>" + rstrntTel);
			jQuery("#recom3Div").on("click",function(){
				let form = document.querySelector("#registReviewForm");
				let reviewButtonDiv = document.getElementById('reviewButtonDiv');
				reviewButtonDiv.style.display = 'flex';
		    	reviewButtonDiv.style.justifyContent = 'flex-end';
		    	jQuery("#reviewButton").on("click",function(){
		    		let reviewsTable = document.querySelector('#head-options-table');
		    		reviewsTable.innerHTML = '';
		    		form.style.display = "";

		    		jQuery("#rstrntNm").val(rstrntNm);
		    		jQuery("#rstrntId").val(rstrntId);


		    	});
				jQuery.ajax({
					url: "/mem/cmnt/neighborbbs/reviews?rstrntId=" + rstrntId,
					type: "get",
					contentType: 'application/json; charset=utf-8',
					dataType: "json",
					success: function(reviewList){
						showReivews(reviewList)
					},
					error: function (e) {
						console.log(e + "에러남");
					} //ajax 호출 에러 종료
				}); //ajax 호출 종료
			});
		}


		let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

		let marker = new kakao.maps.Marker({ //2
			map: map, // 마커를 표시할 지도
			position: position.latlng, // 마커의 위치
			image: markerImage // 마커 이미지
		}); // 마커 생성문 종료
		markers.push(marker);
		let content = document.createElement('div');

		let overlaybox = document.createElement('div');
		overlaybox.className = 'overlaybox';
		content.appendChild(overlaybox);

		let first = document.createElement('div');
		first.className = 'first';
		overlaybox.appendChild(first);

		let close = document.createElement('div');
		close.className = 'close';
		close.setAttribute('title', '닫기');
		first.appendChild(close);

		let image = document.createElement('img');
		image.setAttribute('src', rstrntImg);
		first.appendChild(image);

		let movietitle = document.createElement('div');
		movietitle.className = 'movietitle text';
		movietitle.appendChild(document.createTextNode(rstrntNm));
		first.appendChild(movietitle);

		let ul = document.createElement('ul');
		overlaybox.appendChild(ul);

		let li1 = document.createElement('li');
		li1.className = 'up';
		ul.appendChild(li1);

		let title1 = document.createElement('span');
		title1.className = 'title';
		title1.appendChild(document.createTextNode('번호: ' + rstrntTel));
		li1.appendChild(title1);

		let li2 = document.createElement('li');
		li2.className = 'down';
		ul.appendChild(li2);

		let title2 = document.createElement('span');
		title2.className = 'title';
		title2.setAttribute('style', 'color:black;');
		title2.appendChild(document.createTextNode('영업시간: ' + bsnHour));
		li2.appendChild(title2);

		let li3 = document.createElement('li');
		li3.className = 'up';
		ul.appendChild(li3);

		let title3 = document.createElement('span');
		title3.className = 'title';
		title3.appendChild(document.createTextNode('휴무일: ' + restde));
		li3.appendChild(title3);

		close.onclick = function () { //3
			overlay.setMap(null);
		}; // 오버레이 닫기 함수 종료


		movietitle.onclick = function () {
			let form = document.querySelector("#registReviewForm");
			form.style.display = "none";
			let reviewButtonDiv = document.getElementById('reviewButtonDiv');
				reviewButtonDiv.style.display = 'flex';
		    	reviewButtonDiv.style.justifyContent = 'flex-end';
		    	jQuery("#reviewButton").on("click",function(){
		    		let reviewsTable = document.querySelector('#head-options-table');
		    		reviewsTable.innerHTML = '';
		    		form.style.display = "";

		    		jQuery("#rstrntNm").val(rstrntNm);
		    		jQuery("#rstrntId").val(rstrntId);


		    	});
			jQuery.ajax({
				url: "/mem/cmnt/neighborbbs/reviews?rstrntId=" + rstrntId,
				type: "get",
				contentType: 'application/json; charset=utf-8',
				dataType: "json",
				success: function(reviewList){
					showReivews(reviewList)
				},
				error: function (e) {
					console.log(e + "에러남");
				} //ajax 호출 에러 종료
			}); //ajax 호출 종료
		};//제목 클릭 이벤트 함수 종료

		let overlay = new kakao.maps.CustomOverlay({
			position: position.latlng,
			content: content
		});
		overlays.push(overlay);


		//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(marker, 'click', function (){
			overlay.setMap(map);

		});

		kakao.maps.event.addListener(marker, 'mouseover', function () {
			overlay.setMap(map);
		});
		kakao.maps.event.addListener(marker, 'mouseout', function () {
			overlay.setMap(null);
		});

	}

	jQuery(function () {

		jQuery("#main_menu").html("커뮤니티");
		jQuery("#sub_menu").html("우리동네");

		let title = $("#sub_menu").text();
		let arr_menu = $(".side-menu__title");
		let cur_menu = null;
		for (let i = 0; i < arr_menu.length; i++) {
			if (arr_menu[i].innerText == title) {
				cur_menu = arr_menu[i];
			}
		}
		jQuery(cur_menu).parent().addClass("side-menu--active");

		jQuery(".side-nav > ul > li > .side-menu").on("click", function () {
			// 좌측 메뉴 선택 시 효과 적용
			jQuery(".side-menu").removeClass("side-menu--active");
			jQuery(this).addClass("side-menu--active");

			// 메뉴 경로 표시 (좌측 메뉴)
			let sub = jQuery(this).find(".side-menu__title").text();
			console.log(sub.trim());
			jQuery("#sub_menu").html(sub.trim());
		});
		jQuery("#BadBtn").click(function(){
			console.log("BadBtn");
			let goodImgSrc = jQuery("#GoodBtn").attr("src");
			let badImgSrc = jQuery("#BadBtn").attr("src");

			if(goodImgSrc != "/resources/images/restaurant/free-icon-thumb-up-select-5323428.png"){

				if(badImgSrc == "/resources/images/restaurant/free-icon-thumb-down-select-5323428.png"){
					jQuery("#BadBtn").attr("src","/resources/images/restaurant/free-icon-thumb-down-5323428.png");
					jQuery("#gb").val("");

				}else{
	    			jQuery("#BadBtn").attr("src","/resources/images/restaurant/free-icon-thumb-down-select-5323428.png");
	    			jQuery("#gb").val("G");
				}
			}

		});
		jQuery("#GoodBtn").click(function(){

			let goodImgSrc = jQuery("#GoodBtn").attr("src")
			let badImgSrc = jQuery("#BadBtn").attr("src")

			if(badImgSrc != "/resources/images/restaurant/free-icon-thumb-down-select-5323428.png"){

				if(goodImgSrc == "/resources/images/restaurant/free-icon-thumb-up-select-5323428.png"){
					jQuery("#GoodBtn").attr("src","/resources/images/restaurant/free-icon-thumb-up-5323428.png");
					jQuery("#gb").val("");

				}else{
	    			jQuery("#GoodBtn").attr("src","/resources/images/restaurant/free-icon-thumb-up-select-5323428.png");
	    			jQuery("#gb").val("G");
				}
			}

		});
		var now_utc = Date.now() // 지금 날짜를 밀리초로
		// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
		var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
		// new Date(today-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
		var today = new Date(now_utc-timeOff).toISOString().substring(0, 10);
		console.log(today);
		document.getElementById("visitYmd").setAttribute("max", today);
});
</script>
<script type="text/javascript">
$(function(){
	$("#registReview").on("click",function(){

		let placeId = jQuery("#rstrntId").val();
		let rstrntNm = jQuery("rstrntNm").val();
		let gb = jQuery("#gb").val();
		let reviewCn = jQuery("#reviewCn").val();
		let visitYmd = jQuery("#visitYmd").val();

		let data = {"placeId":placeId,"gb":gb,"reviewCn":reviewCn,"visitYmd":visitYmd};
		//data : {"placeId":"RST000003","gb":"G","reviewCn":"ㅁㅁㅁㅁㄴ","visitYmd":"2023-07-04"}
		console.log("data : " + JSON.stringify(data));

		jQuery.ajax({
			url:"/mem/cmnt/neighborbbs/registReview",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			dataType:"json",
			beforeSend:function(xhr){
	            xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
	         },
			success: function(reviewList){
				showReivews(reviewList)
			},
			error: function (e) {
				location.href="/mem/cmnt/neighborbbs";
			} //ajax 호출 에러 종료
		});
	});
	$("#closeForm").on("click",function(){
		let form = document.querySelector("#registReviewForm");
		form.style.display = "none";
		$("#gb").val("");
		jQuery("#BadBtn").attr("src","/resources/images/restaurant/free-icon-thumb-down-5323428.png");
		jQuery("#GoodBtn").attr("src","/resources/images/restaurant/free-icon-thumb-up-5323428.png");
		$("#visitYmd").val("");
		$("#reviewCn").val("");

	});

});
</script>
<!-- END: Body -->