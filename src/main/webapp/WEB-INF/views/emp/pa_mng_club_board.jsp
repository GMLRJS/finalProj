<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg" style="height: 1050px;">
    	<nav class="side-nav">
			<ul>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">
							계정 관리
							<div class="side-menu__sub-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down"></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul" style="display: none;">
						<li><a href="/emp/pa/mngempacnt"
							class="side-menu side-menu--active">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">직원계정 관리</div>
						</a></li>
						<li><a href="/emp/pa/mngmemacnt" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">입주민계정 관리</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">
							인사 관리
							<div class="side-menu__sub-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul" style="display: none;">
						<li><a href="/emp/pa/mngdclz" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">근태 관리</div>
						</a></li>
						<li><a href="/emp/pa/mngpaidlv" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">휴가 관리</div>
						</a></li>
						<li><a href="/emp/pa/mngsalary" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">급여 관리</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">
							직원게시판 관리
							<div class="side-menu__sub-icon ">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul">
						<li><a href="/emp/pa/mngempntcbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">공지사항</div>
						</a></li>
						<li><a href="/emp/pa/mngempfreebbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">자유게시판</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">
							커뮤니티 관리
							<div class="side-menu__sub-icon ">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul">
						<li><a href="/emp/pa/mngmemntcbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">공지사항</div>
						</a></li>
						<li><a href="/emp/pa/mngneighborbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">우리동네 게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngscndhandbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">중고장터 게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngclubbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">소모임 게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngmemfreebbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">자유게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngcvplbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">민원게시판</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">
							전자투표 관리
							<div class="side-menu__sub-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul">
						<li><a href="/emp/pa/mnginprogrsvote" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">진행 중 투표</div>
						</a></li>
						<li><a href="/emp/pa/mngvotelist" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">투표 안건 목록</div>
						</a></li>
					</ul></li>
			</ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">

<form name="frm" id="frm" action="/emp/pa/mngclubbbs" method="get">
	<div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mb-3">
	    <a href="javascript:fn_confmAll()" class="btn btn-primary shadow-md mr-2" style="letter-spacing: 1px;font-size: 16px;">전체승인</a>
	    <div class="hidden md:block mx-auto text-slate-500">
			<!-- Showing 시작행 to 종료행 of 전체행수 entries
				종료행  : currentPage * size
				시작행  : 종료행 - (size - 1)
				전체행수 : total
			-->
			<!-- data.currentPage : articlePage.currentPage -->
			<!-- 종료행 : currentPage * size -->
			<c:set var="endRow" value="${data.currentPage * data.size}" />
			<!-- 시작행 : 종료행 - (size - 1) -->
			<c:set var="startRow" value="${endRow - (data.size - 1)}" />
			<!-- 전체행수 : total -->
			<c:set var="total" value="${data.total}" />
			<!-- http://localhost/member/list?currentPage=2 -->
			<!-- Showing 1 to 10 of 1 entries -->
			<c:if test="${endRow > total}">
				<c:set var="endRow" value="${total}" />
			</c:if>
	    	Showing ${startRow} to ${endRow} of ${total} entries
	    </div>
	    <!-- BEGIN: 검색 -->
	    <div class="flex w-full sm:w-auto mt-0">
	    	<select name="cond" id="cond" class="w-20 form-select box mt-0 mr-2 font-semibold" style="width: 120px;font-size: 16px;">
		        <option value="">전체</option>
		        <option value="clbNm"
		        	<c:if test="${param.cond == 'clbNm'}">selected</c:if>
		        >소모임 이름</option>
		        <option value="clbIntrcn"
		        	<c:if test="${param.cond == 'clbIntrcn'}">selected</c:if>
		        >소모임 소개</option>
		        <option value="frstWrterId"
		        	<c:if test="${param.cond == 'frstWrterId'}">selected</c:if>
		        >소모임장</option>
		        <option value="clbClNm"
		        	<c:if test="${param.cond == 'clbClNm'}">selected</c:if>
		        >분류</option>
		    </select>
	        <div class="w-56 relative text-slate-500 mr-2">
	            <input type="text" name="keyword" class="form-control w-56 box pr-10" placeholder="Search...">
	            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
	        </div>
	        <button id="search" class="btn btn-primary shadow-md" style="letter-spacing: 1px;font-size: 16px;">검색</button>
	    </div>
	    <!-- END: 검색 -->
	</div>
	<!-- BEGIN: 소모임 목록 -->
	<c:forEach var="clubVO" items="${data.content}" varStatus="stat">
		<div class="clubList intro-y mt-0 mb-2 box col-span-12">
			<div class="py-4">
				<div class="flex px-5 border-t border-b border-slate-200/60">
		   			<div class="flex lg:flex-row items-center my-3" style="width: 65%;">
			        	<div class="flex flex-col sm:flex-row items-center pr-5" style="height: 80%">
			            	<div class="sm:mr-5">
								<div class="image-fit rounded-md" style="width: 220px;height: 130px;">
								    <img alt="clubImg" data-action="zoom" class="w-full rounded-md" src="/resources/upload${clubVO.clbImg}">
								</div>
		                   </div>
			               <div class="mr-auto text-center sm:text-left mt-3 sm:mt-0">
						       <a href="" class="text-xl font-bold">${clubVO.clbNm}</a>
						       <div class="text-slate-500 mt-2 font-semibold" style="font-size: 14px;">${clubVO.clbIntrcn}</div>
			               </div>
			            </div>
		            </div>
		            <div class="ml-8 items-center">
						<div class="w-full lg:w-auto mt-6 lg:mt-0 pt-4 lg:pt-0 flex-1 flex items-center justify-center px-5 border-t lg:border-t-0 border-slate-200/60">
						    <div class="text-center rounded-md w-20 pt-5 pb-3">
						        <div class="font-medium text-primary text-2xl mb-1">${clubVO.clbNowNmpr}</div>
						        <div class="text-slate-500 font-semibold">회원수</div>
						    </div>
						    <div class="text-center rounded-md w-20 pt-5 pb-3">
						        <div class="font-medium text-primary text-2xl mb-1">${clubVO.clbAge}</div>
						        <div class="text-slate-500 font-semibold">평균연령</div>
						    </div>
						    <div class="text-center rounded-md w-20 pt-4 pb-3 mt-1">
						        <div class="font-medium text-primary text-xl mb-1">${clubVO.clbClNm}</div>
						        <div class="text-slate-500 font-semibold">분류</div>
						    </div>
						</div>
					    <div class="justify-center flex mt-3 mb-1.5">
					    	<c:choose>
					    		<c:when test="${clubVO.confmYn eq 'Y'}">
						    		<!-- 승인된 소모임일 경우 -->
									<a href="javascript: fn_confm('${clubVO.clbId}', '${clubVO.clbNm}', '승인취소')" id="btnConfm" class="btn btn-outline-danger font-bold">승인취소</a>
					    		</c:when>
					    		<c:when test="${clubVO.confmYn eq 'N'}">
							    	<!-- 미승인 소모임일 경우 -->
									<a href="javascript: fn_confm('${clubVO.clbId}', '${clubVO.clbNm}', '승인')" id="btnConfm" class="btn btn-primary" style="width: 78.41px;">승인</a>
					    		</c:when>
					    	</c:choose>
					       	<a href="javascript:;" id="btnDet" class="btn btn-outline-secondary ml-4"
					       		data-tw-toggle="modal" data-tw-target="#modal_${clubVO.clbId}">자세히보기</a>
					    </div>
		          	</div>
		      	</div>
		 	</div>
		</div>
	</c:forEach>
	<!-- END: 동호회 목록 -->
	<!-- BEGIN: 페이징 처리 -->
	<div class="intro-y col-span-12 flex flex-wrap sm:flex-row sm:flex-nowrap items-center">
	    <nav class="w-full sm:w-auto sm:mr-auto">
	        <ul class="pagination">
	        	<!-- 시작 페이지 이동 -->
	            <li class="page-item">
	                <a class="page-link" href="/emp/pa/mngclubbbs?currentPage=1"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevrons-left" class="lucide lucide-chevrons-left w-4 h-4" data-lucide="chevrons-left"><polyline points="11 17 6 12 11 7"></polyline><polyline points="18 17 13 12 18 7"></polyline></svg> </a>
	            </li>
	            <!-- 이전 페이지 이동 -->
	            <li class="page-item">
	                <a class="page-link"
	                <c:if test='${data.startPage < 6}'>style="pointer-events: none;"</c:if>
	                href="/emp/pa/mngclubbbs?currentPage=${data.startPage-5}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-left" class="lucide lucide-chevron-left w-4 h-4" data-lucide="chevron-left"><polyline points="15 18 9 12 15 6"></polyline></svg> </a>
	            </li>
	            <c:forEach var="pNo" begin="${data.startPage}" end="${data.endPage}">
		            <li class="page-item
		            	<c:if test='${param.currentPage eq pNo || (pNo == 1 && param.currentPage == null)}'>active</c:if>
		            	">
		            	<a href="/emp/pa/mngclubbbs?currentPage=${pNo}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}"
		            		class="page-link">${pNo}</a>
		            </li>
	            </c:forEach>
	            <!-- 다음 페이지 이동 -->
	            <li class="page-item">
	                <a class="page-link"
	            	<c:if test='${data.endPage == data.totalPages}'>style="pointer-events: none;"</c:if>
	                href="/emp/pa/mngclubbbs?currentPage=${data.startPage+5}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}">
	                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-right" class="lucide lucide-chevron-right w-4 h-4" data-lucide="chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg> </a>
	            </li>
	            <!-- 마지막 페이지 이동 -->
	            <li class="page-item">
	                <a class="page-link"
	                <c:if test='${data.endPage == data.totalPages}'>style="pointer-events: none;"</c:if>
	                href="/emp/pa/mngclubbbs?currentPage=${data.totalPages}"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevrons-right" class="lucide lucide-chevrons-right w-4 h-4" data-lucide="chevrons-right"><polyline points="13 17 18 12 13 7"></polyline><polyline points="6 17 11 12 6 7"></polyline></svg> </a>
	            </li>
	        </ul>
	    </nav>
	    <select name="size" id="size" class="w-20 form-select box mt-3 sm:mt-0">
	        <option value="5"
	        	<c:if test="${param.size == '5'}">selected</c:if>
	        >5</option>
	        <option value="10"
	        	<c:if test="${param.size == '10'}">selected</c:if>
	        >10</option>
	    </select>
	</div>
	<!-- END: 페이징 처리 -->
</form>

</div>
<!-- END: Body -->

<!-- BEGIN: 모달 -->
<c:forEach var="clubVO" items="${data.content}" varStatus="stat">
	<div id="modal_${clubVO.clbId}" class="modal" tabindex="-1" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
			<div class="intro-y col-span-12 md:col-span-6 xl:col-span-4 box">
		        <div class="flex items-center border-b border-slate-200/60 dark:border-darkmode-400 px-5 py-4">
		            <div class="w-12 h-12 flex-none image-fit">
		                <img alt="profile" class="rounded-full" src="/resources/images/blank_profile.png">
		            </div>
		            <div class="ml-3 mr-auto">
		                <a href="" class="font-semibold text-xl">${clubVO.clbNm}</a>
		                <div class="flex font-medium truncate mt-0.5"> <a class="text-primary inline-block truncate" href="">모임장 : ${clubVO.frstWrterId}</a></div>
		            </div>
		        </div>
		        <div class="p-5">
		            <div class="h-40 h-80 image-fit">
		                <img alt="clbImg_Detail" class="rounded-md" src="/resources/upload${clubVO.clbImg}">
		            </div>
		            <a href="javascript:;" class="block font-semibold text-base mt-5 text-lg">${clubVO.clbNm}</a>
		            <div class="text-slate-500 font-semibold mt-2 text-lg">${clubVO.clbIntrcn}</div>
		        </div>
		        <div class="flex items-center px-5 py-3 border-t border-slate-200/60">
		            <a href="" class="intro-x w-8 h-8 flex items-center justify-center rounded-full border border-slate-300 text-slate-500 mr-2"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="bookmark" data-lucide="bookmark" class="lucide lucide-bookmark w-3 h-3"><path d="M19 21l-7-4-7 4V5a2 2 0 012-2h10a2 2 0 012 2v16z"></path></svg> </a>
		            <div class="intro-x flex mr-2"></div>
		            <c:choose>
			    		<c:when test="${clubVO.confmYn eq 'Y'}">
				    		<!-- 승인된 소모임일 경우 -->
							<a id="btnConfm" href="javascript: fn_confm('${clubVO.clbId}', '${clubVO.clbNm}', '승인취소')" class="intro-x w-24 h-8 flex items-center justify-center btn btn-outline-danger ml-auto">승인취소</a>
			    		</c:when>
			    		<c:when test="${clubVO.confmYn eq 'N'}">
					    	<!-- 미승인 소모임일 경우 -->
							<a id="btnConfm" href="javascript: fn_confm('${clubVO.clbId}', '${clubVO.clbNm}', '승인')" class="intro-x w-24 h-8 flex items-center justify-center btn btn-elevated-rounded-primary text-white ml-auto">승인</a>
			    		</c:when>
					</c:choose>
		        </div>
		        <div class="px-5 pt-3 pb-5 border-t border-slate-200/60">
		            <div class="w-full flex text-slate-500 text-xs sm:text-sm items-center" style="font-size: 15px;">
		                <div class="mr-2"> 회원수 : <span class="font-medium">${clubVO.clbNowNmpr} 명</span></div>
		                <span>•</span><div class="ml-2"> 평균연령 : <span class="font-medium">${clubVO.clbAge} 세</span> </div>
		                <div class="ml-auto"> 개설일 : <span class="font-medium">${clubVO.fsrtWritingTm}</span></div>
		            </div>
		        </div>
		    </div>
	    </div>
	</div>
</c:forEach>
<!-- END: 모달 -->
<style type="text/css">
#btnConfm, #btnDet {
	font-size: 15px;
	width: 90px;
	height: 37px;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-left: 8px;
	padding-right: 8px;
	letter-spacing: 1px;
}
</style>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	// 메뉴 경로 표시 (상단 메뉴)
	$("#main_menu").html("인사/행정");
	$("#sub_menu").html("커뮤니티 관리");

	// 좌측 메뉴 경로 표시, 선택 효과 적용
	$(".side-nav > ul > li > .side-menu").on("click", function(){
		// 좌측 메뉴 선택 시 효과 적용
		$(".side-menu").removeClass("side-menu--active");
		$(this).addClass("side-menu--active");

		// 메뉴 경로 표시 (좌측 메뉴)
		var sub = $(this).find(".side-menu__title").text();
		console.log(sub.trim());
		$("#sub_menu").html(sub.trim());
	});

	// 검색 버튼 클릭 이벤트
	$("#search").on("click", function(){
		var obj_frm = document.querySelector("#frm");
		obj_frm.submit();
	});

	// 페이징 사이즈 변경 이벤트
	$("#size").on("change", function(){
		var obj_frm = document.querySelector("#frm");
		obj_frm.submit();
	});
});

// 소모임 승인 및 취소
function fn_confm(clbId, clbNm, txt) {

	console.log(clbId, clbNm, txt);

	if (!confirm(`\${clbNm} 소모임을 \${txt}하시겠습니까?`)) {
		return;
	}

	jQuery.ajax({
		url : "/emp/pa/mngclubbbs/confirm",
		data : {"clbId" : clbId},
		contentType : "application/json;charset=utf-8",
		dataType : "json",
		type : "get",
// 		beforeSend:function(xhr){
// 			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
// 		},
		success : function(result){
			console.log(result);
			if (result == "1") {
				alert(txt + "되었습니다.");
				location.reload();
			}
		}
	});
}

// 소모임 전체승인
function fn_confmAll() {

	if (!confirm("미승인 소모임을 전체 승인하시겠습니까?")) {
		return;
	}

	jQuery.ajax({
		url : "/emp/pa/mngclubbbs/confirmall",
		contentType : "application/json;charset=utf-8",
		dataType : "json",
		type : "get",
// 		beforeSend:function(xhr){
// 			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
// 		},
		success : function(result){
			result = parseInt(result);

			if (result > 0) {
				alert("전체 승인되었습니다.");
				location.reload();
			}
		}
	});
}
</script>













