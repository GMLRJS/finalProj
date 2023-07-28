<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- BEGIN: Top Bar -->

<div
	class="top-bar-boxed border-b border-white/[0.08] mt-12 md:mt-0 -mx-3 sm:-mx-8 md:mx-0 px-3 sm:px-8 md:px-6 mb-10 md:mb-8">
	<div class="h-full flex items-center">
		<!-- BEGIN: Logo -->
		<a href="/mem/main" class="-intro-x hidden md:flex"
			style="align-items: center;"> <img alt="logo" class="w-12"
			src="/resources/tinker/dist/images/doran.png"> <span
			class="text-white text-xl ml-3"> 동일스위트 리버스카이 </span>
		</a>
		<!-- END: Logo -->
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<!-- BEGIN: 입주민/관리자 전환 버튼 -->
		<a href="/emp/main" class="-intro-x hidden md:flex"> <svg
				xmlns="http://www.w3.org/2000/svg" width="24" height="24"
				viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2"
				stroke-linecap="round" stroke-linejoin="round" icon-name="repeat"
				data-lucide="repeat" class="lucide lucide-repeat block mx-auto">
				<path d="M17 2l4 4-4 4"></path>
				<path d="M3 11v-1a4 4 0 014-4h14"></path>
				<path d="M7 22l-4-4 4-4"></path>
				<path d="M21 13v1a4 4 0 01-4 4H3"></path></svg>
		</a>
		<!-- END: 입주민/관리자 전환 버튼 -->
		<!-- BEGIN: Breadcrumb -->
		<nav id="menuPath" aria-label="breadcrumb" class="-intro-x h-full mr-auto">
			<ol class="breadcrumb breadcrumb-light">
				<li class="breadcrumb-item"><a id="main_menu" href="#"></a></li>
				<li id="sub_menu" class="breadcrumb-item active" aria-current="page"></li>
			</ol>
		</nav>
		<!-- END: Breadcrumb -->
		<!-- BEGIN: Notification Content -->

		<!-- END: Notification Toggle -->
		<!-- 음성인식을 활용한 검색 기능 시작 -->
		<div class="search hidden sm:block" style="margin-right: 20px;">
		    <input type="text" id="web_output" class="search__input form-control border-transparent" style="background-color: #FFFFFF" placeholder="검색어를 입력하세요">
		    <div style="position: absolute; top: 50%; right: 10px; transform: translateY(-50%);">
		    	<a href="javascript:;" data-tw-toggle="modal" data-tw-target="#button-modal-preview">
		        <img id="web_modal" src="/resources/images/mic2.png" width="19" height="19"></a>
		    </div>
		    <div id="button-modal-preview" class="modal" tabindex="-1" aria-hidden="true">
				<div class="modal-dialog modal-sm">
				    <div class="modal-content"> <a data-tw-dismiss="modal" href="javascript:;"><i data-lucide="x" class="w-8 h-8 text-slate-400"></i></a>
				        <div class="modal-body p-0">
				            <div class="p-5 text-center">
	            				<div class="text-slate-500 mt-2">음성인식 진행 중입니다.</div>
	            				<div class="text-slate-500 mt-2">검색할 단어를 말씀하세요.</div>
				                <div class="text-3xl mt-5"><img id="web_btn" src="/resources/images/mic_ing.gif"></div>
				                <input type="text" id="web_output" class="search__input form-control border-transparent" style="background-color: #FFFFFF" placeholder="검색...">
				            </div>
				        </div>
				    </div>
				</div>
			</div>
		</div>
		<!-- 음성인식을 활용한 검색 기능 끝-->
		<!-- 로그인시 보이는 쪽지, 알림, 내프로필 -->
		<sec:authorize access="hasRole('ROLE_MEMBER')">
			<div class="intro-x dropdown mr-4 sm:mr-6">
				<div
					class="dropdown-toggle notification notification--light notification--bullet cursor-pointer"
					role="button" aria-expanded="false" data-tw-toggle="dropdown">
					<i data-lucide="bell" class="notification__icon dark:text-slate-500"></i>
				</div>
				<div class="notification-content pt-2 dropdown-menu">
					<div class="notification-content__box dropdown-content">
						<div style="display: flex; justify-content: space-between;">
							<div class="notification-content__title">
								<h1 class="font-bold text-primary mr-auto mt-2">알림</h1>
							</div>
							<div class="w-56 relative text-slate-500" style="text-align: right;">
								<button class="btn btn-rounded btn-dark-soft w-15 mr-1 mb-2" id="echoCleanBtn">전체 읽음</button>
							</div>
						</div>

						<div class="" id="echoContentDiv">
							<div class="echodivClss">
							<div class="alert alert-secondary show flex items-center mb-2" role="alert" style="height:50px">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="alert-octagon" data-lucide="repeat" class="lucide lucide-repeat w-6 h-6 mr-2">
									<polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
									<line x1="12" y1="8" x2="12" y2="12"></line>
									<line x1="12" y1="16" x2="12.01" y2="16"></line>
								</svg>&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
							</div>
							</div>
							<div class="echodivClss">
							<div class="alert alert-secondary show flex items-center mb-2" role="alert" style="height:50px">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="alert-octagon" data-lucide="repeat" class="lucide lucide-repeat w-6 h-6 mr-2">
									<polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
									<line x1="12" y1="8" x2="12" y2="12"></line>
									<line x1="12" y1="16" x2="12.01" y2="16"></line>
								</svg>&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
							</div>
							</div>
							<div class="echodivClss">
							<div class="alert alert-secondary show flex items-center mb-2" role="alert" style="height:50px">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="alert-octagon" data-lucide="repeat" class="lucide lucide-repeat w-6 h-6 mr-2">
									<polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
									<line x1="12" y1="8" x2="12" y2="12"></line>
									<line x1="12" y1="16" x2="12.01" y2="16"></line>
								</svg>&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
							</div>
							</div>
							<div class="alert alert-secondary show flex items-center mb-2" role="alert" style="height:50px">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="alert-octagon" data-lucide="repeat" class="lucide lucide-repeat w-6 h-6 mr-2">
									<polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
									<line x1="12" y1="8" x2="12" y2="12"></line>
									<line x1="12" y1="16" x2="12.01" y2="16"></line>
								</svg>&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
							</div>
							<div class="echodivClss">
							<div class="alert alert-secondary show flex items-center mb-2" role="alert" style="height:50px">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="alert-octagon" data-lucide="repeat" class="lucide lucide-repeat w-6 h-6 mr-2">
									<polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
									<line x1="12" y1="8" x2="12" y2="12"></line>
									<line x1="12" y1="16" x2="12.01" y2="16"></line>
								</svg>&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END: Notifications -->
			<!-- BEGIN: Notifications 2-->
			<div class="intro-x dropdown mr-4 sm:mr-6">
				<a id="smsIcon">
					<div
						class="dropdown-toggle notification notification--light notification--bullet cursor-pointer"
						role="button" aria-expanded="false" data-tw-toggle="dropdown">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="send" data-lucide="send" class="lucide lucide-send block mx-auto">
							<line x1="22" y1="2" x2="11" y2="13"></line>
							<polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
						</svg>
					</div>
				</a>
				<div class="notification-content pt-2 dropdown-menu">
					<div class="notification-content__box dropdown-content"
						id="chatContent">
						<div style="display: flex; justify-content: space-between;">
							<div class="notification-content__title">
								<h1 class="font-bold text-primary mr-auto mt-2">쪽지</h1>
							</div>
							<div class="w-56 relative text-slate-500">
								<input type="text" class="form-control w-56 box pr-10" />
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="search"
									class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0"
									data-lucide="search">
									<circle cx="11" cy="11" r="8"></circle>
									<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
							</div>
						</div>
						<div id="onlineUserDiv"></div>
						<div id="chattingList">
							<div class='cursor-pointer relative flex items-center mt-5'>
								<div class='w-12 h-12 flex-none image-fit mr-1'>
									<img alt='Midone - HTML Admin Template' class='rounded-full'
										src='/resources/tinker/dist/images/profile-10.jpg'>
									<div
										class='w-3 h-3 bg-success absolute right-0 bottom-0 rounded-full border-2 border-white'></div>
								</div>
								<div class='ml-2 overflow-hidden'>
									<div class='flex items-center'>
										<a href='javascript:;' class='font-medium truncate mr-5'>Russell
											Crowe</a>
										<div class='text-xs text-slate-400 ml-auto whitespace-nowrap'>01:10
											PM</div>
									</div>
									<div class='w-full truncate text-slate-500 mt-0.5'>There
										are many variations of passages of Lorem Ipsum available, but
										the majority have suffered alteration in some form, by injected
										humour, or randomi</div>
								</div>
							</div>
							<div class='cursor-pointer relative flex items-center mt-5'>
								<div class='w-12 h-12 flex-none image-fit mr-1'>
									<img alt='Midone - HTML Admin Template' class='rounded-full'
										src='/resources/tinker/dist/images/profile-10.jpg'>
									<div
										class='w-3 h-3 bg-success absolute right-0 bottom-0 rounded-full border-2 border-white'></div>
								</div>
								<div class='ml-2 overflow-hidden'>
									<div class='flex items-center'>
										<a href='javascript:;' class='font-medium truncate mr-5'>Russell
											Crowe</a>
										<div class='text-xs text-slate-400 ml-auto whitespace-nowrap'>01:10
											PM</div>
									</div>
									<div class='w-full truncate text-slate-500 mt-0.5'>There
										are many variations of passages of Lorem Ipsum available, but
										the majority have suffered alteration in some form, by injected
										humour, or randomi</div>
								</div>
							</div>
							<div class='cursor-pointer relative flex items-center mt-5'>
								<div class='w-12 h-12 flex-none image-fit mr-1'>
									<img alt='Midone - HTML Admin Template' class='rounded-full'
										src='/resources/tinker/dist/images/profile-10.jpg'>
									<div
										class='w-3 h-3 bg-success absolute right-0 bottom-0 rounded-full border-2 border-white'></div>
								</div>
								<div class='ml-2 overflow-hidden'>
									<div class='flex items-center'>
										<a href='javascript:;' class='font-medium truncate mr-5'>Russell
											Crowe</a>
										<div class='text-xs text-slate-400 ml-auto whitespace-nowrap'>01:10
											PM</div>
									</div>
									<div class='w-full truncate text-slate-500 mt-0.5'>There
										are many variations of passages of Lorem Ipsum available, but
										the majority have suffered alteration in some form, by injected
										humour, or randomi</div>
								</div>
							</div>
							<div class='cursor-pointer relative flex items-center mt-5'>
								<div class='w-12 h-12 flex-none image-fit mr-1'>
									<img alt='Midone - HTML Admin Template' class='rounded-full'
										src='/resources/tinker/dist/images/profile-10.jpg'>
									<div
										class='w-3 h-3 bg-success absolute right-0 bottom-0 rounded-full border-2 border-white'></div>
								</div>
								<div class='ml-2 overflow-hidden'>
									<div class='flex items-center'>
										<a href='javascript:;' class='font-medium truncate mr-5'>Russell
											Crowe</a>
										<div class='text-xs text-slate-400 ml-auto whitespace-nowrap'>01:10
											PM</div>
									</div>
									<div class='w-full truncate text-slate-500 mt-0.5'>There
										are many variations of passages of Lorem Ipsum available, but
										the majority have suffered alteration in some form, by injected
										humour, or randomi</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END: Notifications 2-->
			<!-- BEGIN: Account Menu -->
			<sec:authentication property="principal.userVO" var="userVO" />
			<div class="intro-x dropdown w-8 h-8">
				<div
					class="dropdown-toggle w-8 h-8 rounded-full overflow-hidden shadow-lg image-fit zoom-in scale-110"
					role="button" aria-expanded="false" data-tw-toggle="dropdown">
					<img alt="Midone - HTML Admin Template"
						src="/resources/images/member/${userVO.memberVO.memImg}">
				</div>
				<div class="dropdown-menu w-56">
					<ul
						class="dropdown-content bg-primary/70 before:block before:absolute before:bg-black before:inset-0 before:rounded-md before:z-[-1] text-white">
						<li class="p-2">
							<div class="font-medium">${userVO.memberVO.memNm}</div>
							<div class="text-xs text-white/60 mt-0.5 dark:text-slate-500">
								<script>
									var hshldInfoNo = "${userVO.memberVO.hshldInfoNo}";
									var dong = hshldInfoNo.substring(0, 3);
									var ho = hshldInfoNo.substring(3);
									document.write(dong + "동 " + ho + "호");
								</script>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider border-white/[0.08]">
						</li>
						<li><a href="/mem/mypg/managectbbs"
							class="dropdown-item hover:bg-white/5"> <i data-lucide="user"
								class="w-4 h-4 mr-2"></i> 마이페이지
						</a></li>
						<li>
							<form id="logoutForm" action="/logout" method="post">
								<button class="dropdown-item hover:bg-white/5">
									<i data-lucide="toggle-right" class="w-4 h-4 mr-2"></i>로그아웃
								</button>
								<sec:csrfInput />
							</form>
						</li>
					</ul>
				</div>
			</div>
		</sec:authorize>
		<!-- END: MEMBER Account Menu -->
		<!-- BEGIN: EMP Account Menu -->
		<sec:authorize
			access="hasAnyRole('ROLE_PA', 'ROLE_FS', 'ROLE_AA', 'ROLE_PA_PM', 'ROLE_FS_SM', 'ROLE_AA_AM')">
			<sec:authentication property="principal.userVO" var="userVO" />
			<div class="intro-x dropdown w-8 h-8">
				<div
					class="dropdown-toggle w-8 h-8 rounded-full overflow-hidden shadow-lg image-fit zoom-in scale-110"
					role="button" aria-expanded="false" data-tw-toggle="dropdown">
					<img alt="Midone - HTML Admin Template"
						src="/resources/images/emp/${userVO.empVO.empImg}">
				</div>
				<div class="dropdown-menu w-56">
					<ul
						class="dropdown-content bg-primary/70 before:block before:absolute before:bg-black before:inset-0 before:rounded-md before:z-[-1] text-white">
						<li class="p-2">
							<div class="font-medium">${userVO.empVO.empNm}</div>
							<div class="text-xs text-white/60 mt-0.5 dark:text-slate-500">
								${userVO.empVO.deptNm} ${userVO.empVO.jbgdNm}</div>
						</li>
						<li>
							<hr class="dropdown-divider border-white/[0.08]">
						</li>
						<li><a href="/mem/mypg/myhome"
							class="dropdown-item hover:bg-white/5"> <i data-lucide="user"
								class="w-4 h-4 mr-2"></i> 마이페이지
						</a></li>
						<li>
							<form id="logoutForm" action="/logout" method="post">
								<button class="dropdown-item hover:bg-white/5">
									<i data-lucide="toggle-right" class="w-4 h-4 mr-2"></i>로그아웃
								</button>
								<sec:csrfInput />
							</form>
						</li>
					</ul>
				</div>
			</div>
		</sec:authorize>
		<!-- END: Account Menu -->
	</div>
</div>
<!-- END: Top Bar -->
<!-- BEGIN: Top Menu -->
<nav class="top-nav text-xl">
	<ul>
		<li class="top_menu">
		<sec:authorize access="isAuthenticated()"><!-- 로그인 시 -->
            <a id="ai" href="/mem/ai/doran" class="top-menu">
        </sec:authorize>
        <sec:authorize access="isAnonymous()"><!-- 비로그인 시 -->
        	<a id="ai" href="javascript:alert('로그인이 필요합니다');" class="top-menu">
        </sec:authorize>
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-robot" viewBox="0 0 16 16">
						<path d="M6 12.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5ZM3 8.062C3 6.76 4.235 5.765 5.53 5.886a26.58 26.58 0 0 0 4.94 0C11.765 5.765 13 6.76 13 8.062v1.157a.933.933 0 0 1-.765.935c-.845.147-2.34.346-4.235.346-1.895 0-3.39-.2-4.235-.346A.933.933 0 0 1 3 9.219V8.062Zm4.542-.827a.25.25 0 0 0-.217.068l-.92.9a24.767 24.767 0 0 1-1.871-.183.25.25 0 0 0-.068.495c.55.076 1.232.149 2.02.193a.25.25 0 0 0 .189-.071l.754-.736.847 1.71a.25.25 0 0 0 .404.062l.932-.97a25.286 25.286 0 0 0 1.922-.188.25.25 0 0 0-.068-.495c-.538.074-1.207.145-1.98.189a.25.25 0 0 0-.166.076l-.754.785-.842-1.7a.25.25 0 0 0-.182-.135Z"/>
						<path d="M8.5 1.866a1 1 0 1 0-1 0V3h-2A4.5 4.5 0 0 0 1 7.5V8a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1v1a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-1a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1v-.5A4.5 4.5 0 0 0 10.5 3h-2V1.866ZM14 7.5V13a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V7.5A3.5 3.5 0 0 1 5.5 4h5A3.5 3.5 0 0 1 14 7.5Z"/></svg>
				</div>
				<div class="top-menu__title">AI 도란</div>
		</a></li>
		<li class="top_menu"><a id="intro" href="/mem/intro/aptinfo"
			class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
						<path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Z" />
						<path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V1Zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3V1Z" /></svg>
				</div>
				<div class="top-menu__title">아파트 소개</div>
		</a></li>
		<li class="top_menu">
		<sec:authorize access="isAuthenticated()"><!-- 로그인 시 -->
            <a id="notice" href="/mem/ntcbbs" class="top-menu">
        </sec:authorize>
        <sec:authorize access="isAnonymous()"><!-- 비로그인 시 -->
        	<a id="notice" href="javascript:alert('로그인이 필요합니다');" class="top-menu">
        </sec:authorize>
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-megaphone" viewBox="0 0 16 16">
						<path d="M13 2.5a1.5 1.5 0 0 1 3 0v11a1.5 1.5 0 0 1-3 0v-.214c-2.162-1.241-4.49-1.843-6.912-2.083l.405 2.712A1 1 0 0 1 5.51 15.1h-.548a1 1 0 0 1-.916-.599l-1.85-3.49a68.14 68.14 0 0 0-.202-.003A2.014 2.014 0 0 1 0 9V7a2.02 2.02 0 0 1 1.992-2.013 74.663 74.663 0 0 0 2.483-.075c3.043-.154 6.148-.849 8.525-2.199V2.5zm1 0v11a.5.5 0 0 0 1 0v-11a.5.5 0 0 0-1 0zm-1 1.35c-2.344 1.205-5.209 1.842-8 2.033v4.233c.18.01.359.022.537.036 2.568.189 5.093.744 7.463 1.993V3.85zm-9 6.215v-4.13a95.09 95.09 0 0 1-1.992.052A1.02 1.02 0 0 0 1 7v2c0 .55.448 1.002 1.006 1.009A60.49 60.49 0 0 1 4 10.065zm-.657.975 1.609 3.037.01.024h.548l-.002-.014-.443-2.966a68.019 68.019 0 0 0-1.722-.082z" /></svg>
				</div>
				<div class="top-menu__title">공지사항</div>
		</a></li>
		<li class="top_menu">
		<sec:authorize access="isAuthenticated()"><!-- 로그인 시 -->
            <a id="life" href="/mem/life/library" class="top-menu">
        </sec:authorize>
        <sec:authorize access="isAnonymous()"><!-- 비로그인 시 -->
        	<a id="life" href="javascript:alert('로그인이 필요합니다');" class="top-menu">
        </sec:authorize>
			<div class="top-menu__icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					icon-name="activity" data-lucide="activity"
					class="lucide lucide-activity block mx-auto">
					<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
			</div>
			<div class="top-menu__title">생활편의서비스</div>
		</a></li>
		<li class="top_menu">
		<sec:authorize access="isAuthenticated()"><!-- 로그인 시 -->
            <a id="cmnt" href="/mem/cmnt/neighborbbs" class="top-menu">
        </sec:authorize>
        <sec:authorize access="isAnonymous()"><!-- 비로그인 시 -->
        	<a id="cmnt" href="javascript:alert('로그인이 필요합니다');" class="top-menu">
        </sec:authorize>
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="layout" data-lucide="layout"
						class="lucide lucide-layout block mx-auto">
						<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
						<line x1="3" y1="9" x2="21" y2="9"></line>
						<line x1="9" y1="21" x2="9" y2="9"></line></svg>
				</div>
				<div class="top-menu__title">커뮤니티</div>
		</a></li>
		<li class="top_menu">
		<sec:authorize access="isAuthenticated()"><!-- 로그인 시 -->
            <a id="vote" href="/mem/vote/inprogrsvote" class="top-menu">
        </sec:authorize>
        <sec:authorize access="isAnonymous()"><!-- 비로그인 시 -->
        	<a id="vote" href="javascript:alert('로그인이 필요합니다');" class="top-menu">
        </sec:authorize>
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="box" data-lucide="box"
						class="lucide lucide-box block mx-auto">
						<path
							d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
						<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
						<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
				</div>
				<div class="top-menu__title">전자투표</div>
		</a></li>
		<li class="top_menu"><a id="bid" href="/mem/bid/bidntcbbs"
			class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="inbox" data-lucide="inbox"
						class="lucide lucide-inbox block mx-auto">
						<polyline points="22 12 16 12 14 15 10 15 8 12 2 12"></polyline>
						<path
							d="M5.45 5.11L2 12v6a2 2 0 002 2h16a2 2 0 002-2v-6l-3.45-6.89A2 2 0 0016.76 4H7.24a2 2 0 00-1.79 1.11z"></path></svg>
				</div>
				<div class="top-menu__title">입찰공고</div>
		</a></li>
</nav>
<!-- BEGIN: Notification Content -->
<div id="basic-non-sticky-notification-content"
	class="toastify-content hidden flex">
	<div class="font-medium" id="toggleContent">Yay! Updates Published!</div>
	<a class="font-medium text-primary dark:text-slate-400 mt-1 sm:mt-0 sm:ml-40"
		href="" id="toggleA">보기</a>
</div>
<!-- END: Notification Content -->
<!-- BEGIN: Notification Toggle -->
<button id="basic-non-sticky-notification-toggle" class="btn btn-primary mr-1" style="display:none;">Show Non Sticky Notification</button>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
////////////////////////음성 인식 시작////////////////////////////////////
// 웹 브라우저 음성인식 (WEB Speech API)
$(document).ready(function() {
	// 웹 브라우저 음성인식 (WEB Speech API)
	$("#web_modal").on("click", function() {
		console.log("svgmic 클릭")
		// 음성인식 API 객체 생성
		var recognition = new webkitSpeechRecognition();

		// 음성인식 결과를 출력할 요소 선택
		var output = $("#web_output");

		if ($("#web_modal").attr("src") == "/resources/images/mic2.png" ) {
			$("#web_btn").attr("src", "/resources/images/mic_ing.gif").css("width", "100px").css("height", "100px").css("margin-left", "80px");
			recognition.lang = "ko-KR";
			recognition.start();
		} else {
			$("#web_btn").attr("src", "/resources/images/mic2.png");
			recognition.stop();
			return;
		}

		// 음성인식 중간 결과 이벤트 처리
		recognition.onresult = function(event) {

			var interim_transcript = "";

			for (var i = event.resultIndex; i < event.results.length; ++i) {

				if (event.results[i].isFinal) {
			    	// 최종 결과 처리
			    	var result = event.results[i][0].transcript;
			    	output.val(result);

			    	setTimeout(function() {

			    		var search_tf = confirm(`[ \${result} ]를 검색하시겠습니까?`);
				    	$("#web_btn").attr("src", "/resources/images/mic_on.png");

				    	if (search_tf == true) {
				    		if (result == "중고장터") {
				    			window.location=href = "/mem/cmnt/secondhandbbs";
				    		}
				    		if (result == "중고장터 게시판") {
				    			window.location=href = "/mem/cmnt/secondhandbbs";
				    		}
				    		if (result == "중고거래") {
				    			window.location=href = "/mem/cmnt/secondhandbbs";
				    		}
				    		if (result == "중고거래 게시판") {
				    			window.location=href = "/mem/cmnt/secondhandbbs";
				    		}
				    		if (result == "중고") {
				    			window.location=href = "/mem/cmnt/secondhandbbs";
				    		}
				    		if (result == "우리 동네") {
				    			window.location=href = "/mem/cmnt/neighborbbs";
				    		}
				    		if (result == "우리 동네 맛집") {
				    			window.location=href = "/mem/cmnt/neighborbbs";
				    		}
					    	return;
				    	} else {
							 $("#web_btn").on("click", function() {
								console.log("이미지를 클릭했습니다!");
							});
				    	}
			    	}, 1000);
			    } else {
			    	// 중간 결과 처리
			    	interim_transcript += event.results[i][0].transcript;
			    }
			}
		};

		// 음성인식 종료 이벤트 처리
		recognition.onend = function() {
			// 인식 종료 시 처리 내용
			$(this).val("mic_on");
			$("#web_btn").attr("src", "/resources/images/mic_on.png");
		};

		// 음성인식 에러 이벤트 처리
		recognition.onerror = function(event) {
			// 에러 발생 시 처리 내용
		};
	});
});
////////////////////////음성 인식 끝////////////////////////////////////



	$(function() {
		var cur_url = window.location.pathname;
		var cur_menu = cur_url.split("/")[2];
		$("#" + cur_menu).addClass("top-menu--active");

		$(".top_menu").on("click", function() {
			// 상단 메뉴 선택 시 효과 적용
			var target = $(this).children();
			$(".top-menu").removeClass("top-menu--active");
			$(target).addClass("top-menu--active");

			// 메뉴 경로 표시 (상단 메인메뉴)
			var main = $(this).find(".top-menu__title").html();
			$("#main_menu").html(main);
			$("#sub_menu").html("");
		});

		//채팅방
		// 엔터키 줄바꿈 금지~
		$("#chatTextArea").on("keydown", function(event) {
			if (event.key === 'Enter' && !event.shiftKey) {
				event.preventDefault();
			}
		});
		setTimeout(function() {
			    console.log("2 seconds passed!");
			    let $j = jQuery.noConflict();
				let chatContent = "";
				let me = "${userVO.memberVO.memId}";
				let data = onlineUsers.toString();
				console.log("onlineUsersonlineUsers",onlineUsers);
				jQuery.ajax({
					url : "/mem/onlineUserDetail",
					method : "post",
					data : JSON.stringify(data),
					contentType : "application/json;charset=utf-8",
					beforeSend : function(xhr) {
						xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
					},
					success : function(result) {
						console.log(result);
						let onlineUsersVOList = result;
						// 온라인 유저 사진 나열 시작
						let str = "<div class='mx-6'>";
						str += "<div class='mx-6'><div class='multiple-items>";
						for (let i = 0; i < onlineUsersVOList.length; i++) {
							if (me == onlineUsersVOList[i].memId) {
										//자기 자신 제외
							} else {
								let memVO = JSON.stringify(onlineUsersVOList[i])
								str += "<a href='#' onclick='newChattingRoom("+ memVO+ ")' id='openChat"+onlineUsersVOList[i]['memId']+"' data-tw-toggle='modal' data-tw-target='#basic-slide-over-preview'>";
								str += "<div class='cursor-pointer relative flex items-center'>";
								str += "<div class='w-12 h-12 flex-none image-fit mr-1'>";
								str += "<img alt='Midone - HTML Admin Template' class='rounded-full' src=/resources/images/member/"+onlineUsersVOList[i].memImg+" />";
								str += "<div class='w-3 h-3 bg-success absolute right-0 bottom-0 rounded-full border-2 border-white'></div>";
								str += "</div>";
								console.log("gd");

							}
						}
						str += "</div>";
						str += "</a>";
						str += "</div>";
						str += "</div>";

						// 온라인 유저 사진 나열 종료

						chatContent += str;
						$("#onlineUserDiv").html(chatContent);
						}
					});


			  }, 2000);

	});

	function receiveEcho(echoMess) {
		let $j = jQuery.noConflict();
		console.log(echoMess);
		let temp = echoMess.split(":");
		let senderId = temp[0];
		let receiverId = temp[1];
		let sendTm = temp[2];
		let pstId = temp[3];

		if(senderId == receiverId){
			return;
		}
		$j("#toggleContent").html(senderId+"님이 " + receiverId+"님의 게시물에 댓글을 남겼습니다.");
		$j("#toggleA").attr("href","/mem/cmnt/freebbs/freedetail?pstId="+pstId);
		$j("#basic-non-sticky-notification-toggle").click();
	}




	function goToChat(id){
		console.log("goToChat");
		console.log("#openChat"+id);
		jQuery("#openChat"+id).click();
	}
	function newChattingRoom(data) {
		console.log(JSON.stringify(data));
		console.log(data["memId"]);
		$("#receiverImg").attr("src","/resources/images/member/" + data["memImg"])
		$("#receiverInfo").val(data["memId"]);
		$("#userInfo").html(data["memNm"] + "(" + data["memId"] + ")");
		console.log("${userVO.memberVO.memId}");
		setChatBody("${userVO.memberVO.memId}", data["memId"]);
	}

	function chatSubmit(evt) {
		let cmd = "chat";

		let textMessage = $("#chatTextArea").val();
		$("#chatTextArea").val("");
		console.log("textMessage" + textMessage);

		let sender = "${userVO.memberVO.memId}";
		let receiver = $("#receiverInfo").val();

		let today = new Date();
		let year = today.getFullYear();
		let month = ('0' + (today.getMonth() + 1)).slice(-2);
		let day = ('0' + today.getDate()).slice(-2);

		let dateString = year + '년 ' + month + '월 ' + day + '일 ';
		let hours = ('0' + today.getHours()).slice(-2);
		let minutes = ('0' + today.getMinutes()).slice(-2);
		let seconds = ('0' + today.getSeconds()).slice(-2);
		let timeString = hours + '시 ' + minutes + '분 ' + seconds + '초';

		let sendTime = dateString + timeString
		let msg = cmd + ":" + sender + ":" + receiver + ":" + dateString
				+ timeString + ":" + textMessage;
		if (socket.readyState !== 1)
			return;
		socket.send(msg);
		setChatBody(sender, receiver);

	};

	function receiveMess(mess) {
		let $j = jQuery.noConflict();
		let receiveMessa = mess;

		let receiverImg = $("#receiverImg").attr("src");
		console.log("receiverImg", receiverImg);
		console.log("receiveM", receiveMessa);
		let temp = receiveMessa.split(":");
		let senderId = temp[0];
		let receiverId = temp[1];
		let sendTm = temp[2];
		let txtMess = temp[3];
		let receiverInfo= $("#receiverInfo").val();
		console.log("receiverInfo",receiverInfo);
		let chatRoomFlag = $("#basic-slide-over-preview").attr("aria-hidden");
		console.log("chatRoomFlag1",chatRoomFlag);
		console.log("as;ldaslkdjaskldjaskldjaskl");
		//채팅방이 꺼져있을 때
		if (chatRoomFlag=="true") {
			console.log("chatRoomFlag2",chatRoomFlag);
			$j("#toggleContent").html(senderId+"님이 " + receiverId+"님에게 메세지를 보냈습니다.");
 			$j("#toggleA").attr("href","javascript:goToChat('" + senderId + "')");
			$j("#basic-non-sticky-notification-toggle").click();
			setChatBody(receiverId, senderId);

		}else if(chatRoomFlag == "false"){
			console.log("chatRoomFlag3",chatRoomFlag);
			setChatBody(receiverId, senderId);
		}
	}


	function formatDate(dateString) {
		let year = dateString.substring(0, 4);
		let month = dateString.substring(4, 6);
		let day = dateString.substring(6, 8);
		let hour = dateString.substring(8, 10);
		let minute = dateString.substring(10, 12);
		let second = dateString.substring(12, 14);

		let formattedDate = `\${year}년 \${month}월 \${day}일 \${hour}시간 \${minute}분 \${second}초`;
		return formattedDate;
	}

	function setChatBody(me, you) {
		let data = {
			me : me,
			you : you
		};
		console.log(data);
		jQuery.ajax({
			url : "/mem/selectMyChat",
			method : "post",
			data : JSON.stringify(data),
			contentType : "application/json;charset=utf-8",
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			},
			success : function(result) {
				let bodyStr = "";
				for (let i = 0; i < result.length; i++) {

					let trsmTm = formatDate(result[i]['trsmTm']);
					let sender = result[i]['sndpyId'];
					let receiver = result[i]['rcvrId'];
					if (sender == me) {
						bodyStr += "<div class='chat__box__text-box flex items-end float-right mb-4'>";
						bodyStr += "<div class='hidden sm:block dropdown mr-3 my-auto'>";
						bodyStr += "<a href='javascript:;' class='dropdown-toggle w-4 h-4 text-slate-500' aria-expanded='false' data-tw-toggle='dropdown'>";
						bodyStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' bodyStroke='currentColor' bodyStroke-width='2' bodyStroke-linecap='round' bodyStroke-linejoin='round' icon-name='more-vertical' data-lucide='more-vertical' class='lucide lucide-more-vertical w-4 h-4'>";
						bodyStr += "<circle cx='12' cy='12' r='1'></circle>";
						bodyStr += "<circle cx='12' cy='5' r='1'></circle>";
						bodyStr += "<circle cx='12' cy='19' r='1'></circle></svg>";
						bodyStr += "</a>";
						bodyStr += "<div class='dropdown-menu w-40'>";
						bodyStr += "<ul class='dropdown-content'>";
						bodyStr += "<li>";
						bodyStr += "<a href='' class='dropdown-item'>";
						bodyStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' bodyStroke='currentColor' bodyStroke-width='2' bodyStroke-linecap='round' bodyStroke-linejoin='round' icon-name='corner-up-left' data-lucide='corner-up-left' class='lucide lucide-corner-up-left w-4 h-4 mr-2'>";
						bodyStr += "<polyline points='9 14 4 9 9 4'></polyline>";
						bodyStr += "<path d='M20 20v-7a4 4 0 00-4-4H4'></path>";
						bodyStr += "</svg>";
						bodyStr += "신고";
						bodyStr += "</a></li>";
						bodyStr += "<li><a href='' class='dropdown-item'>";
						bodyStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' bodyStroke='currentColor' bodyStroke-width='2' bodyStroke-linecap='round' bodyStroke-linejoin='round' icon-name='trash' data-lucide='trash' class='lucide lucide-trash w-4 h-4 mr-2'>";
						bodyStr += "<polyline points='3 6 5 6 21 6'></polyline>";
						bodyStr += "<path d='M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2'></path>";
						bodyStr += "</svg>";
						bodyStr += "삭제";
						bodyStr += "</a></li>";
						bodyStr += "</ul>";
						bodyStr += "</div>";
						bodyStr += "</div>";
						bodyStr += "<div class='bg-primary px-4 py-3 text-white rounded-l-md rounded-t-md'>";
						bodyStr += result[i]['smsCn'];
						bodyStr += "<div class='mt-1 text-xs text-white text-opacity-80'>";
						bodyStr += trsmTm;
						bodyStr += "</div>";
						bodyStr += "</div>";
						bodyStr += "<div class='w-10 h-10 hidden sm:block flex-none image-fit relative ml-5'>";
						bodyStr += "<img alt='Midone - HTML Admin Template' class='rounded-full' src='/resources/images/member/"+"${userVO.memberVO.memImg}"+"'>";
						bodyStr += "</div></div>";
					} else {
						bodyStr += "<div class='chat__box__text-box flex items-end float-left mb-4'>";
						bodyStr += "<div class='w-10 h-10 hidden sm:block flex-none image-fit relative mr-5'>";
						bodyStr += "<img alt='Midone - HTML Admin Template' class='rounded-full' src='/resources/images/member/"+you+".jpg'>";
						bodyStr += "</div>";
						bodyStr += "<div class='bg-slate-100 dark:bg-darkmode-400 px-4 py-3 text-slate-500 rounded-r-md rounded-t-md'>";
						bodyStr += result[i]['smsCn'];
						bodyStr += "<div class='mt-1 text-xs text-slate-500'>";
						bodyStr += trsmTm;
						bodyStr += "</div></div>";
						bodyStr += "<div class='hidden sm:block dropdown ml-3 my-auto'>";
						bodyStr += "<a href='javascript:;' class='dropdown-toggle w-4 h-4 text-slate-500' aria-expanded='false' data-tw-toggle='dropdown'>";
						bodyStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' bodyStroke='currentColor' bodyStroke-width='2' bodyStroke-linecap='round' bodyStroke-linejoin='round' icon-name='more-vertical' data-lucide='more-vertical' class='lucide lucide-more-vertical w-4 h-4'>";
						bodyStr += "<circle cx='12' cy='12' r='1'></circle>";
						bodyStr += "<circle cx='12' cy='5' r='1'></circle>";
						bodyStr += "<circle cx='12' cy='19' r='1'></circle>";
						bodyStr += "</svg>";
						bodyStr += "</a>";
						bodyStr += "<div class='dropdown-menu w-40'>";
						bodyStr += "<ul class='dropdown-content'>";
						bodyStr += "<li>";
						bodyStr += "<a href='' class='dropdown-item'>";
						bodyStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' bodyStroke='currentColor' bodyStroke-width='2' bodyStroke-linecap='round' bodyStroke-linejoin='round' icon-name='corner-up-left' data-lucide='corner-up-left' class='lucide lucide-corner-up-left w-4 h-4 mr-2'>";
						bodyStr += "<polyline points='9 14 4 9 9 4'></polyline>";
						bodyStr += "<path d='M20 20v-7a4 4 0 00-4-4H4'></path>";
						bodyStr += "</svg>";
						bodyStr += "삭제";
						bodyStr += "</a>";
						bodyStr += "</li>";
						bodyStr += "</ul>";
						bodyStr += "</div>";
						bodyStr += "</div>";
						bodyStr += "</div>";
					}
				}
				$("#chatBody").html(bodyStr);
				jQuery("#chatBody").scrollTop(
						jQuery("#chatBody")[0].scrollHeight);
			}
		});

	}
</script>













<div id="basic-slide-over-preview" class="modal modal-slide-over"
	tabindex="-1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header p-5">
				<h2 class="font-medium text-base mr-auto"></h2>
			</div>
			<div class="modal-body">
				<!-- 숨어있는 채팅방 시작 -->
				<div class="chat__box box" style="height: 850px;">
					<div class="h-full flex flex-col">
						<div id="chatHeader">
							<!-- 					 대화 상대 프로필 부분 시작 -->
							<div
								class='flex flex-col sm:flex-row border-b border-slate-200/60 dark:border-darkmode-400 px-5 py-4'>
								<div class='flex items-center'>
									<div
										class='w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit relative'>
										<img alt='채팅하는 상대사진' class='rounded-full' src=''
											id=receiverImg /> <input type='hidden' id='receiverInfo'
											value='' />
									</div>
									<div class='ml-3 mr-auto'>
										<div class='font-medium text-base' id="userInfo"></div>
										<div class='text-slate-500 text-xs sm:text-sm'>
											접속중<span class='mx-1'>•</span>
										</div>
									</div>
								</div>
								<div
									class='flex items-center sm:ml-auto mt-5 sm:mt-0 border-t sm:border-0 border-slate-200/60 pt-3 sm:pt-0 -mx-5 sm:mx-0 px-5 sm:px-0'>
									<a href='javascript:;' class='w-5 h-5 text-slate-500'> <svg
											xmlns='http://www.w3.org/2000/svg' width='24' height='24'
											viewBox='0 0 24 24' fill='none' stroke='currentColor'
											stroke-width='2' stroke-linecap='round'
											stroke-linejoin='round' icon-name='search'
											data-lucide='search' class='lucide lucide-search w-5 h-5'>
										<circle cx='11' cy='11' r='8'></circle>
										<line x1='21' y1='21' x2='16.65' y2='16.65'></line>
										</svg>
									</a> <a href='javascript:;' class='w-5 h-5 text-slate-500 ml-5'>
										<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24'
											viewBox='0 0 24 24' fill='none' stroke='currentColor'
											stroke-width='2' stroke-linecap='round'
											stroke-linejoin='round' icon-name='user-plus'
											data-lucide='user-plus'
											class='lucide lucide-user-plus w-5 h-5'>
										<path d='M16 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2'></path>
										<circle cx='8.5' cy='7' r='4'></circle>
										<line x1='20' y1='8' x2='20' y2='14'></line>
										<line x1='23' y1='11' x2='17' y2='11'></line>
										</svg>
									</a>
									<div class='dropdown ml-auto sm:ml-3'>
										<a href='javascript:;'
											class='dropdown-toggle w-5 h-5 text-slate-500'
											aria-expanded='false' data-tw-toggle='dropdown'> <svg
												xmlns='http://www.w3.org/2000/svg' width='24' height='24'
												viewBox='0 0 24 24' fill='none' stroke='currentColor'
												stroke-width='2' stroke-linecap='round'
												stroke-linejoin='round' icon-name='more-vertical'
												data-lucide='more-vertical'
												class='lucide lucide-more-vertical w-5 h-5'>
											<circle cx='12' cy='12' r='1'></circle>
											<circle cx='12' cy='5' r='1'></circle>
											<circle cx='12' cy='19' r='1'></circle>
											</svg>
										</a>
										<div class='dropdown-menu w-40'>
											<ul class='dropdown-content'>
												<li><a href='' class='dropdown-item'> <svg
															xmlns='http://www.w3.org/2000/svg' width='24' height='24'
															viewBox='0 0 24 24' fill='none' stroke='currentColor'
															stroke-width='2' stroke-linecap='round'
															stroke-linejoin='round' icon-name='share-2'
															data-lucide='share-2'
															class='lucide lucide-share-2 w-4 h-4 mr-2'>
													<circle cx='18' cy='5' r='3'></circle>
													<circle cx='6' cy='12' r='3'></circle>
													<circle cx='18' cy='19' r='3'></circle>
													<line x1='8.59' y1='13.51' x2='15.42' y2='17.49'></line>
													<line x1='15.41' y1='6.51' x2='8.59' y2='10.49'></line>
													</svg> 공유
												</a></li>
												<li><a href='' class='dropdown-item'> <svg
															xmlns='http://www.w3.org/2000/svg' width='24' height='24'
															viewBox='0 0 24 24' fill='none' stroke='currentColor'
															stroke-width='2' stroke-linecap='round'
															stroke-linejoin='round' icon-name='settings'
															data-lucide='settings'
															class='lucide lucide-settings w-4 h-4 mr-2'>
														<path d='M12.22 2h-.44a2 2 0 00-2 2v.18a2 2 0 01-1 1.73l-.43.25a2 2 0 01-2 0l-.15-.08a2 2 0 00-2.73.73l-.22.38a2 2 0 00.73 2.73l.15.1a2 2 0 011 1.72v.51a2 2 0 01-1 1.74l-.15.09a2 2 0 00-.73 2.73l.22.38a2 2 0 002.73.73l.15-.08a2 2 0 012 0l.43.25a2 2 0 011 1.73V20a2 2 0 002 2h.44a2 2 0 002-2v-.18a2 2 0 011-1.73l.43-.25a2 2 0 012 0l.15.08a2 2 0 002.73-.73l.22-.39a2 2 0 00-.73-2.73l-.15-.08a2 2 0 01-1-1.74v-.5a2 2 0 011-1.74l.15-.09a2 2 0 00.73-2.73l-.22-.38a2 2 0 00-2.73-.73l-.15.08a2 2 0 01-2 0l-.43-.25a2 2 0 01-1-1.73V4a2 2 0 00-2-2z'></path>
													<circle cx='12' cy='12' r='3'></circle>
													</svg> 설정
												</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- 					 대화 상대 프로필 부분 끝 -->
						</div>
						<!-- 대화내용 시작 부분  -->
						<div class="overflow-y-scroll scrollbar-hidden px-5 pt-5 flex-1"
							id="chatBody">

						</div>
						<!-- 대화내용 끝 부분 -->
						<div
							class="pt-4 pb-10 sm:py-4 flex items-center border-t border-slate-200/60 dark:border-darkmode-400">
							<textarea
								class="chat__box__input form-control dark:bg-darkmode-600 h-16 resize-none border-transparent px-5 py-3 shadow-none focus:border-transparent focus:ring-0"
								rows="1" placeholder="Type your message..." id="chatTextArea"
								onkeydown="if(event.keyCode==13) javascript:chatSubmit();"></textarea>
							<div
								class="flex absolute sm:static left-0 bottom-0 ml-5 sm:ml-0 mb-5 sm:mb-0">
								<%@ include file="/WEB-INF/views/include/chatEmogi.jsp"%>
								<div
									class="w-4 h-4 sm:w-5 sm:h-5 relative text-slate-500 mr-3 sm:mr-5">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="paperclip"
										data-lucide="paperclip"
										class="lucide lucide-paperclip w-full h-full">
														<path
											d="M21.44 11.05l-9.19 9.19a6 6 0 01-8.49-8.49l9.19-9.19a4 4 0 015.66 5.66l-9.2 9.19a2 2 0 01-2.83-2.83l8.49-8.48"></path></svg>
									<input type="file"
										class="w-full h-full top-0 left-0 absolute opacity-0">
								</div>
							</div>
							<a href="javascript:chatSubmit();"
								class="w-8 h-8 sm:w-10 sm:h-10 block bg-primary text-white rounded-full flex-none flex items-center justify-center mr-5">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="send" data-lucide="send"
									class="lucide lucide-send w-4 h-4">
													<line x1="22" y1="2" x2="11" y2="13"></line>
													<polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg>
							</a>
						</div>
					</div>
				</div>
				<!-- 숨어있는 채팅방 끝 -->
			</div>
		</div>
	</div>
</div>