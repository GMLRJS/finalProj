<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Body -->
<div class="col-span-12 lg:col-span-9 2xl:col-span-12">
	<div class="relative">
		<div class="grid grid-cols-12 gap-3" style="min-height: 115vh;">
			<div class="col-span-12 xl:col-span-8 2xl:col-span-8 z-10">
				<div class="mt-0 mb-3 grid grid-cols-12 sm:gap-0 intro-y flex">
					<!-- BEGIN: 나들이 장소 추천, 회원이 로그인하면 보임 -->
					<sec:authorize access="hasRole('ROLE_MEMBER')">
					<sec:authentication property="principal.userVO" var="userVO"/>
					<div class="intro-y box col-span-12 mb-3">
						<div class="flex flex-col sm:flex-row items-center p-5 border-b border-slate-200/60">
							<h2 class="font-bold text-base mr-10" style="font-size: 19px;">&nbsp;&nbsp;
								${userVO.memberVO.memNm}님을 위한 이번 주말 나들이 장소 AI 추천&nbsp;&nbsp;
	    						<i class="bi bi-info-circle tooltip" title="${userVO.memberVO.memNm}님의 가족구성과 예상 날씨를 기반으로 한 AI 추천 주말 나들이 장소입니다."></i>
	    					</h2>
							<div class="date01"></div>
						</div>
						<div id="single-item-slider" class="p-5" style="height: 263px;">
							<div class="preview">
								<div class="mx-6">
									<div class="single-item">
										<div class="h-full px-2 rec01">
											<!-- 주말추천나들이장소1 <div class="h-full mr-10" style="width: 35%; float: left;">
												<img src="/resources/images/hosu.jpg" data-action="zoom"
													class="w-full rounded-md" style="height: 190px;"
													alt="세종호수공원">
											</div>
											<div style="float: left;">짱나진짜 이거한다구 오전다날림</div> -->
										</div>
										<div class="h-full px-2 rec02">
											<!-- 주말추천나들이장소2 <div class="h-full mr-10" style="width: 35%; float: left;">
												<img src="/resources/images/hosu2.jpg" data-action="zoom"
													class="w-full rounded-md" style="height: 190px;"
													alt="세종호수공원">
											</div>
											<div style="float: left;">짱나진짜 이거한다구 오전다날림</div> -->
										</div>
									</div>
								</div>
							</div>
							<div class="source-code hidden">
								<button data-target="#copy-single-item-slider"
									class="copy-code btn py-1 px-2 btn-outline-secondary">
									<i data-lucide="file" class="w-4 h-4 mr-2"></i> Copy example
									code
								</button>
								<div class="overflow-y-auto mt-3 rounded-md">
									<pre id="copy-single-item-slider" class="source-preview"> <code
											class="html"> HTMLOpenTagdiv class=&quot;mx-6&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;single-item&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag1HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag2HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag3HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag4HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag5HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag6HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag </code> </pre>
								</div>
							</div>
						</div>
					</div>
					<!-- END: 나들이 장소 추천 -->
					<!-- BEGIN : 투표 팝업 -->
					<div class="mt-0 intro-y col-span-12">
						<div class="alert alert-dismissible show box bg-primary text-white flex items-center mb-3"
							style="padding: 12px; padding-left: 3px;" role="alert">
							<span style="font-size: 16px;">
								<button class="rounded-md bg-white bg-opacity-20 hover:bg-opacity-30 px-2 py-1 -my-3 ml-2"
									style="font-size: 14px; letter-spacing: 1px;">공지사항</button>&nbsp;&nbsp;
									입주민 대표 선출 투표가 진행 중 입니다&nbsp;&nbsp;
								<a href="/mem/vote/inprogrsvote/detail" class="underline ml-1" target="blank">투표하기</a>
							</span>
							<button type="button" class="btn-close text-white"
								data-tw-dismiss="alert" aria-label="Close">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4">
									<line x1="18" y1="6" x2="6" y2="18"></line>
									<line x1="6" y1="6" x2="18" y2="18"></line></svg>
							</button>
						</div>
					</div>
					<!-- END : 투표 팝업 -->
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
					<!-- BEGIN : 비회원에게 보이는 투표 팝업 -->
					<div class="mt-0 intro-y col-span-12">
						<div class="alert alert-dismissible show box bg-primary text-white flex items-center mb-3"
							style="padding: 12px; padding-left: 3px;" role="alert">
							<span style="font-size: 16px;">
								<button class="rounded-md bg-white bg-opacity-20 hover:bg-opacity-30 px-2 py-1 -my-3 ml-2"
									style="font-size: 14px; letter-spacing: 1px;">공지사항</button>&nbsp;&nbsp;
									입주민 대표 선출 투표가 진행 중 입니다&nbsp;&nbsp;
							</span>
							<button type="button" class="btn-close text-white"
								data-tw-dismiss="alert" aria-label="Close">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4">
									<line x1="18" y1="6" x2="6" y2="18"></line>
									<line x1="6" y1="6" x2="18" y2="18"></line></svg>
							</button>
						</div>
					</div>
					</sec:authorize>
					<!-- END : 비회원에게 보이는 투표 팝업 -->
					<!-- BEGIN : 배너 사진 -->
					<div class="col-span-12 h-64 mb-3 image-fit" style="height: 400px;">
						<img alt="입주민 메인페이지 배너"
							src="/resources/icewall/dist/images/main_banner1.jpg"
							data-action="zoom" class="w-full rounded-md">
					</div>
					<!-- END : 배너 사진 -->
					<!-- BEGIN : 공지사항 -->
					<div class="col-span-12 box mt-0 2xl:z-30">
						<div
							class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
							<h2 class="font-bold text-base mr-auto" style="font-size: 19px;">&nbsp;&nbsp;공지사항</h2>
							<a href="#" class="ml-auto text-primary flex items-center font-bold">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
									stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="plus" data-lucide="plus" class="lucide lucide-plus w-4 h-4 mr-1">
									<line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>자세히 보기
							</a>
						</div>
						<div class="p-1 pt-2" id="striped-rows-table"
							style="font-size: 16px; height: 233px;">
							<table id="ntc_tbl" class="table table-striped font-semibold">
								<tr>
									<td class="text-center">119</td>
									<td>8월 관리사무소 주요업무 및 민원처리 보고</td>
								</tr>
								<tr>
									<td class="text-center">118</td>
									<td>2023년 8월 1일부 열요금 조정 안내</td>
								</tr>
								<tr>
									<td class="text-center">117</td>
									<td>103동 동대표 해임 투표 결과 보고</td>
								</tr>
								<tr>
									<td class="text-center">116</td>
									<td>8월 저수조 청소 안내</td>
								</tr>
								<tr>
									<td class="text-center">115</td>
									<td>8월 소독 실시 안내</td>
								</tr>
							</table>
						</div>
					</div>
					<!-- BEGIN: 아파트전경 -->
					<sec:authorize access="isAnonymous() or hasAnyRole('ROLE_PA', 'ROLE_FS', 'ROLE_AA', 'ROLE_PA_PM', 'ROLE_FS_SM', 'ROLE_AA_AM')">
						<div class="intro-y box mt-3 col-span-8"
							style="width: 150%; height: 110%;">
							<div
								class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60 dark:border-darkmode-400">
								<h2 class="font-bold text-base mr-auto" style="font-size: 19px;">&nbsp;&nbsp;아파트
									전경</h2>
									<a href="#" class="ml-auto text-primary flex items-center font-bold">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
											stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
											icon-name="plus" data-lucide="plus" class="lucide lucide-plus w-4 h-4 mr-1">
											<line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>자세히 보기
									</a>
							</div>
							<div id="responsive-slider" class="p-0">
								<div class="mx-7 mt-7 mb-5">
									<div class="responsive-mode">
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md image-fit">
												<img src="/resources/images/hosu.jpg" data-action="zoom"
													class="w-full rounded-md" alt="세종호수공원" />
											</div>
											<div class="h-full p-1 font-bold"
												style="font-size: 19px; text-align: center;">세종호수공원</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md image-fit">
												<img src="/resources/images/san.jpg" data-action="zoom"
													class="w-full rounded-md" alt="식장산" />
											</div>
											<div class="h-full p-1 font-bold"
												style="font-size: 19px; text-align: center;">식장산</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md image-fit">
												<img src="/resources/images/dam.jpg" data-action="zoom"
													class="w-full rounded-md" alt="대청댐" />
											</div>
											<div class="h-full p-1 font-bold"
												style="font-size: 19px; text-align: center;">대청댐</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md image-fit">
												<img src="/resources/images/ssg.png" data-action="zoom"
													class="w-full rounded-md" alt="신세계" />
											</div>
											<div class="h-full p-1 font-bold"
												style="font-size: 19px; text-align: center;">신세계</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md">
												<h3
													class="h-full font-medium flex items-center justify-center text-2xl">5</h3>
											</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md">
												<h3
													class="h-full font-medium flex items-center justify-center text-2xl">6</h3>
											</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md">
												<h3
													class="h-full font-medium flex items-center justify-center text-2xl">7</h3>
											</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md">
												<h3
													class="h-full font-medium flex items-center justify-center text-2xl">8</h3>
											</div>
										</div>
										<div class="h-40 px-1">
											<div
												class="h-full bg-slate-100 dark:bg-darkmode-400 rounded-md">
												<h3
													class="h-full font-medium flex items-center justify-center text-2xl">9</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</sec:authorize>
					<!-- END: 아파트전경 -->
				</div>
			</div>
		</div>
		<div class="2xl:pl-6 grid grid-cols-12 gap-x-6 2xl:gap-x-0 gap-y-6">
			<div
				class="report-box-4 w-full h-full grid grid-cols-12 gap-3 xl:absolute -mt-8 xl:mt-0 pb-6 xl:pb-0 top-0 right-0 z-30 xl:z-auto">
				<div class="col-span-12 xl:col-span-4 xl:col-start-9 xl:pb-16 z-30">
					<div class="h-full flex flex-col">
						<div class="report-box-4__content xl:min-h-0 intro-x">
							<!-- BEGIN : 로그인 폼 -->
							<sec:authorize access="isAnonymous()">
								<form id="frm" name="frm" action="/login" method="post">
									<div
										class="max-h-full box mt-0 items-center justify-center scrollbar-hidden"
										style="padding: 5%">
										<div
											class="my-auto mx-auto xl:ml-0 bg-white dark:bg-darkmode-600 xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">
											<div class="intro-x mt-0">
												<input id="username" type="text" name="username"
													value="PM001"
													class="intro-x login__input form-control py-2 px-3 block text-lg"
													style="width: 100%;" placeholder="아이디" required> <input
													id="password" type="password" name="password" value="java"
													class="intro-x login__input form-control py-2 px-3 block mt-3 text-lg"
													style="width: 100%;" placeholder="비밀번호" required>
											</div>
											<div
												class="intro-x flex text-slate-600 dark:text-slate-500 text-xs sm:text-sm mt-4 font-bold">
												<div class="flex items-center mr-auto">
													<input id="remember-me" type="checkbox" name="remember-me"
														class="form-check-input border mr-2">자동 로그인</label>
												</div>
												<a href="/mem/findIdPw">아이디 / 비밀번호 찾기</a>
											</div>
											<div
												class="intro-x mt-5 xl:mt-8 text-center xl:text-left flex">
												<button type="submit">
													<span
														class="btn btn-primary py-3 px-4 xl:w-32 xl:mr-3 align-top"
														style="width: 118px;"> 로그인</span>
												</button>
												<button type="button" onclick="location.href='/mem/facelogin'">
													<span
														class="btn btn-outline-primary py-3 px-0 xl:w-32 mt-1 xl:mr-3  xl:mt-0 align-top font-bold"
														style="width: 118px;"> 얼굴인식 로그인</span>
												</button>
												<button type="button" onclick="location.href='/mem/signUp'">
													<span
														class="btn btn-outline-primary py-3 px-4 xl:w-32 mt-1 xl:mt-0 align-top font-bold"
														style="width: 118px"> 회원가입</span>
												</button>
											</div>
										</div>
									</div>
									<sec:csrfInput />
								</form>
							</sec:authorize>
							<!-- END : 로그인 폼 -->
							<!-- BEGIN : 로그인 후 폼 -->
							<!-- BEGIN : 회원 로그인 -->
								<sec:authorize access="hasRole('ROLE_MEMBER')">
								<div
									class="max-h-full box mt-0 items-center justify-center scrollbar-hidden"
									style="padding: 5%; height: 260px;">
									<div
										class="my-auto mx-auto xl:ml-0 bg-white xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">
										<div class="intro-x mt-0">
											<div class="w-28 h-28 image-fit ml-2 mr-10 mt-3" style="float: left;">
												<img class="rounded-full" data-action="zoom" src="/resources/images/member/${userVO.memberVO.memImg}" style="height: 120px;">
											</div>
											<div style="float: left;"><span style="font-size: 25px;">
												<script>
													var hshldInfoNo = "${userVO.memberVO.hshldInfoNo}";
													var dong = hshldInfoNo.substring(0, 3);
													var ho = hshldInfoNo.substring(3);
													document.write("<br><span style='color:green;'>"+ dong + "</span>동 <span style='color:green;'>" + ho + "</span>호<br><br>");
												</script></span>
												<div style="font-size: 20px;"><span style="font-weight: bold;">${userVO.memberVO.memNm}</span>(${userVO.memberVO.memId})님<br></div>
												<div class="mt-2" style="font-size: 20px;">알림 <span style="color:green;">2</span>개 |
																						   쪽지 <span style="color:green;">1</span>개</div>
											</div>
										</div>
										<div class="intro-x text-center">
											<form id="logoutForm" action="/logout" method="post">
												<button type="submit" class="w-full">
													<span
														class="btn btn-primary mt-10 py-3 px-4 align-top w-full"
														>로그아웃</span>
												</button>
												<sec:csrfInput />
											</form>
										</div>
									</div>
								</div>
								</sec:authorize>
								<!-- END : 회원 로그인 -->
								<!-- BEGIN : 직원 로그인 -->
								<sec:authorize access="hasAnyRole('ROLE_PA', 'ROLE_FS', 'ROLE_AA', 'ROLE_PA_PM', 'ROLE_FS_SM', 'ROLE_AA_AM')">
								<sec:authentication property="principal.userVO" var="userVO"/>
								<div class="max-h-full box mt-0 items-center justify-center" style="padding: 5%; height: 260px;">
									<div class="my-auto mx-auto xl:ml-0 bg-white dark:bg-darkmode-600 xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">

										<div class="pb-2 border-b border-slate-200 " >
											<div class="my-auto mx-auto bg-white pl-4 rounded-md w-full mb-5 ">
												<div class="intro-x mt-0 flex">
													<div class="w-28 h-28 image-fit mt-2 mr-8">
														<img alt="profileImage" class="rounded-full" data-action="zoom" src="/resources/images/emp/${userVO.empVO.empImg}">
													</div>
													<div class="mt-5 w-60 ">
														<div class="flex items-center">
															<div class="font-extrabold mr-1" style="font-size: 25px;">${userVO.empVO.empNm}</div><div style="font-size: 18px;"> (${userVO.empVO.empId})</div>
														</div>
														<div class="font-semibold mt-4" style="font-size: 19px;">${userVO.empVO.deptNm} ${userVO.empVO.jbgdNm}<br/></div>
														<div class="mt-5" style="font-size: 20px;">
															결재대기 <span style="color:green;">2</span>건 | 메일 <span style="color:green;">1</span>건
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="intro-x text-center scrollbar-hidden">
											<form id="logoutForm" action="/logout" method="post">
												<button type="submit" class="w-full">
													<span class="btn btn-primary mt-5 py-3 px-4 align-top w-full">로그아웃</span>
												</button>
												<sec:csrfInput />
											</form>
										</div>
									</div>
								</div>
<%-- 								</c:if> --%>
							</sec:authorize>
							<!-- END : 직원 로그인 -->
							<!-- END : 로그인 후 폼 -->
							<!-- BEGIN: 주차장 현황 -->
							<div class="intro-x box mt-3 col-span-4 2xl:col-span-4"
								style="height: 330px;">
								<div class="flex items-center px-3 py-3 border-b border-slate-200/60"
									style="height: 53px;">
									<h2 class="font-bold text-base mr-auto"
										style="font-size: 19px;">주차장 현황</h2>
									<sec:authorize access="hasRole('ROLE_MEMBER')">
									<a href="/mem/mypg/visit" class="btn btn-primary block w-35 px-2 py-1.5">방문차량 예약</a></sec:authorize>
								</div>
								<div class="p-3">
									<div class="tab-content font-semibold"
										style="font-size: 16px; letter-spacing: 0px;">
										<div id="work-in-progress-new" class="tab-pane active"
											role="tabpanel" aria-labelledby="work-in-progress-new-tab"
											style="width: 100%;">
											<div class="mt-3">
												<div class="flex">
													<div class="mr-auto">지상 주차장</div>
													<div>97 / 172 대</div>
												</div>
												<div class="progress mt-2">
													<div class="progress-bar w-1/2 bg-primary"
														role="progressbar" aria-valuenow="0" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
											<div class="mt-5">
												<div class="flex">
													<div class="mr-auto">B1F 주차장</div>
													<div>216 / 336 대</div>
												</div>
												<div class="progress mt-2">
													<div class="progress-bar w-1/4 bg-primary"
														role="progressbar" aria-valuenow="0" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
											<div class="mt-5">
												<div class="flex">
													<div class="mr-auto">B2F 주차장</div>
													<div>382 / 573 대</div>
												</div>
												<div class="progress mt-2">
													<div class="progress-bar w-3/4 bg-primary"
														role="progressbar" aria-valuenow="0" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
											<div class="mt-5">
												<div class="flex">
													<div class="mr-auto">B3F 주차장</div>
													<div>217 / 573 대</div>
												</div>
												<div class="progress mt-2">
													<div class="progress-bar w-4/5 bg-primary"
														role="progressbar" aria-valuenow="0" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- END: 주차장 현황 -->
							<!-- BEGIN : 행사 일정 -->
							<div class="mt-3">
								<div class="box">
									<div class="flex items-center p-4 border-b border-slate-200/60">
										<h2 class="truncate mr-5 font-bold" style="font-size: 19px;">행사 일정</h2>
										<a href="#" class="ml-auto text-primary flex items-center font-bold">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
												stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
												icon-name="plus" data-lucide="plus" class="lucide lucide-plus w-4 h-4 mr-1">
												<line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>자세히 보기
										</a>
									</div>
									<div class="p-2">
										<div class="flex">
											<svg xmlns="http://www.w3.org/2000/svg" width="24"
												height="24" viewBox="0 0 24 24" fill="none"
												stroke="currentColor" stroke-width="2"
												stroke-linecap="round" stroke-linejoin="round"
												icon-name="chevron-left" data-lucide="chevron-left"
												class="lucide lucide-chevron-left w-5 h-5 text-slate-500">
												<polyline points="15 18 9 12 15 6"></polyline></svg>
											<div class="font-extrabold text-lg mx-auto">8 월</div>
											<svg xmlns="http://www.w3.org/2000/svg" width="24"
												height="24" viewBox="0 0 24 24" fill="none"
												stroke="currentColor" stroke-width="2"
												stroke-linecap="round" stroke-linejoin="round"
												icon-name="chevron-right" data-lucide="chevron-right"
												class="lucide lucide-chevron-right w-5 h-5 text-slate-500">
												<polyline points="9 18 15 12 9 6"></polyline></svg>
										</div>
										<div class="grid grid-cols-7 gap-4 mt-5 text-center">
											<div class="font-bold">Su</div>
											<div class="font-bold">Mo</div>
											<div class="font-bold">Tu</div>
											<div class="font-bold">We</div>
											<div class="font-bold">Th</div>
											<div class="font-bold">Fr</div>
											<div class="font-bold">Sa</div>
											<div class="py-0.5 rounded relative text-slate-500">30</div>
											<div class="py-0.5 rounded relative text-slate-500">31</div>
											<div class="py-0.5 rounded relative text-slate-500">1</div>
											<div class="py-0.5 rounded relative">2</div>
											<div class="py-0.5 bg-primary text-white rounded relative">3</div>
											<div class="py-0.5 rounded relative">4</div>
											<div class="py-0.5 rounded relative">5</div>
											<div class="py-0.5 rounded relative">6</div>
											<div class="py-0.5 bg-success/20 rounded relative">7</div>
											<div class="py-0.5 rounded relative">8</div>
											<div class="py-0.5 rounded relative">9</div>
											<div class="py-0.5 rounded relative">10</div>
											<div class="py-0.5 rounded relative">11</div>
											<div class="py-0.5 rounded relative">12</div>
											<div class="py-0.5 rounded relative">13</div>
											<div class="py-0.5 rounded relative">14</div>
											<div class="py-0.5 rounded relative">15</div>
											<div class="py-0.5 rounded relative">16</div>
											<div class="py-0.5 rounded relative">17</div>
											<div class="py-0.5 rounded relative">18</div>
											<div class="py-0.5 rounded relative">19</div>
											<div class="py-0.5 rounded relative">20</div>
											<div class="py-0.5 rounded relative">21</div>
											<div class="py-0.5 rounded relative">22</div>
											<div class="py-0.5 rounded relative">23</div>
											<div class="py-0.5 bg-pending/20 rounded relative">24</div>
											<div class="py-0.5 rounded relative">25</div>
											<div class="py-0.5 rounded relative">26</div>
											<div class="py-0.5 rounded relative">27</div>
											<div class="py-0.5 bg-primary/10 rounded relative">28</div>
											<div class="py-0.5 rounded relative">28</div>
											<div class="py-0.5 rounded relative">29</div>
											<div class="py-0.5 rounded relative">30</div>
											<div class="py-0.5 rounded relative text-slate-500">31</div>
											<div class="py-0.5 rounded relative text-slate-500">1</div>
											<div class="py-0.5 rounded relative text-slate-500">2</div>
											<div class="py-0.5 rounded relative text-slate-500">3</div>
											<div class="py-0.5 rounded relative text-slate-500">4</div>
											<div class="py-0.5 rounded relative text-slate-500">5</div>
											<div class="py-0.5 rounded relative text-slate-500">6</div>
											<div class="py-0.5 rounded relative text-slate-500">7</div>
											<div class="py-0.5 rounded relative text-slate-500">8</div>
										</div>
									</div>
									<div class="border-t border-slate-200/60 px-5 py-4">
										<div class="flex items-center">
											<div class="w-2 h-2 bg-primary rounded-full mr-3"></div>
											<span class="font-bold text-lg">입주민 대표 선출 투표</span>
											<span class="font-bold ml-auto">09:00 ~ 17:00</span>
										</div>
										<div class="flex items-center mt-4">
											<div class="w-2 h-2 bg-success rounded-full mr-3"></div>
											<span class="font-bold text-lg">입주민 커뮤니티 안전점검</span>
											<span class="font-bold ml-auto">10:00</span>
										</div>
									</div>
								</div>
							</div>
							<!-- END: 행사 일정 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: Body -->
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#ntc_tbl td").css("padding", "11px");
		$("#tns1-ow").css("height", "190px");
		$("#tns1-mw").css("height", "190px");
		$(".progress").css("height", "9px");

		let memId = "${userVO.memberVO.memId}";
		let data = {
			"memId" : memId
		};

		//이번 주말 추천 나들이 장소
		jQuery.ajax({
			url : "/mem/picnicRecom",
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(data),
			type : "post",
			dataType : "json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			},
			success : function(result) {
				console.log("result : " + JSON.stringify(result));

				let rec01Str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
				rec01Str += "<img src='/resources/images/place/"+result[0].PICNIC_IMG+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+result[0].PICNIC_NM+"'>";
				rec01Str += "</div><div class='h-full' style='float: left';>";
				rec01Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>"+ result[0].WEEKEND_DATE+ "&nbsp;"
						+ result[0].WEEK + "</h2><br>";
				rec01Str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
						+ result[0].PICNIC_NM + "</h2><br>";
				rec01Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>영업시간 "
						+ result[0].BSN_HOUR + "<br>";
				rec01Str += result[0].PICNIC_TEL + "<br>";
				rec01Str += result[0].PICNIC_ADRES + "<br>";
				rec01Str += "<a href='"+result[0].PICNIC_URL+"' target='_blank'><h2 class='text-base mr-auto' style='font-size: 17px; color: green;'>홈페이지</h2></a>";
				rec01Str += "</div><div style='float:right;'>";
				rec01Str += "<span style='font-size: 17px; color: blue;'>"
						+ result[0].WETHR_LOW
						+ "</span>/<span style='font-size: 17px; color: red;'> "
						+ result[0].WETHR_HIGH + "</span><br>";
				rec01Str += "<div style='float:right;'><img src='/resources/images/weather/"+result[0].WETHR_IMG+"' style='height: 40px;' alt='"+result[0].WETHR_INFO+"'></div><br><br>";
				rec01Str += "</div>";
				$(".rec01").html(rec01Str);

				let rec02Str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
				rec02Str += "<img src='/resources/images/place/"+result[1].PICNIC_IMG+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+result[1].PICNIC_NM+"'>";
				rec02Str += "</div><div class='h-full' style='float: left';>";
				rec02Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>"
						+ result[1].WEEKEND_DATE
						+ "&nbsp;"
						+ result[1].WEEK + "</h2><br>";
				rec02Str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
						+ result[1].PICNIC_NM + "</h2><br>";
				rec02Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>영업시간 "
						+ result[1].BSN_HOUR + "<br>";
				rec02Str += result[1].PICNIC_TEL + "<br>";
				rec02Str += result[1].PICNIC_ADRES + "<br>";
				rec02Str += "<a href='"+result[1].PICNIC_URL+"' target='_blank'><h2 class='text-base' style='font-size: 17px; color: green;'>홈페이지</h2></a>";
				rec02Str += "</div><div style='float:right;'>";
				rec02Str += "<span style='font-size: 17px; color: blue;'>"
						+ result[1].WETHR_LOW
						+ "</span>/<span style='font-size: 17px; color: red;'> "
						+ result[1].WETHR_HIGH + "</span><br>";
				rec02Str += "<div style='float:right;'><img src='/resources/images/weather/"+result[1].WETHR_IMG+"' style='height: 40px;' alt='"+result[1].WETHR_INFO+"'></div><br><br>";
				rec02Str += "</div>";
				$(".rec02").html(rec02Str);
			}
		});
	});
</script>