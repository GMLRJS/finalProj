<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- BEGIN: Top Bar -->
<div class="top-bar-boxed h-[70px] z-[51] relative border-b border-white/[0.08] mt-12 md:-mt-5 -mx-3 sm:-mx-8 px-3 sm:px-8 md:pt-0 mb-12">
	<div class="h-full flex items-center">
		<!-- BEGIN: Logo -->
		<a href="/emp/main" class="-intro-x hidden md:flex" style="align-items: center;">
			<img style="width: 180px;" alt="logo" class="w-12" src="/resources/icewall/dist/images/doran2.png">
		</a>
		<!-- END: Logo -->
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<!-- BEGIN: 입주민/관리자 전환 버튼 -->
		<a href="/mem/main" class="-intro-x hidden md:flex"> <svg
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
		<!-- 음성인식을 활용한 검색 기능 시작 -->
		<div class="search hidden sm:block" style="margin-right: 20px;">
		    <input type="text" id="web_output" class="search__input form-control border-transparent" style="background-color: #FFFFFF" placeholder="검색어를 입력해주세요">
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
		<!-- BEGIN: 주소록 아이콘 -->
		<div class="intro-x dropdown mr-4 sm:mr-6">
			<a href="/emp/addr/orgcht">
				<div class="notification notification--light cursor-pointer" role="button">
					<i data-lucide="inbox" class="notification__icon"></i>
				</div>
			</a>
		</div>
		<!-- END: 주소록 아이콘 -->
		<!-- BEGIN: 메일 아이콘 -->
		<div class="intro-x dropdown mr-4 sm:mr-6">
			<a href="/emp/mail/inbox">
				<div class="notification notification--light notification--bullet cursor-pointer" role="button">
					<i data-lucide="mail" class="notification__icon"></i>
				</div>
			</a>
		</div>
		<!-- END: 메일 아이콘 -->
		<!-- BEGIN: Notifications -->
		<div class="intro-x dropdown mr-4 sm:mr-6">
			<div class="dropdown-toggle notification notification--light notification--bullet cursor-pointer"
				role="button" aria-expanded="false" data-tw-toggle="dropdown">
				<i data-lucide="bell" class="notification__icon dark:text-slate-500"></i>
			</div>
			<div class="notification-content pt-2 dropdown-menu">
				<div class="notification-content__box dropdown-content">
					<div style="display: flex; justify-content: space-between;">
						<div class="notification-content__title">
							<h1 class="font-bold text-primary mr-auto mt-2">알림</h1>
						</div>
						<div class="w-56 relative text-slate-500"
							style="text-align: right;">
							<button class="btn btn-rounded btn-dark-soft w-15 mr-1 mb-2">전체
								읽음</button>
						</div>
					</div>
					<div class="">
						<div class="alert alert-secondary show flex items-center mb-2"
							role="alert" style="height: 50px">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="alert-octagon" data-lucide="repeat"
								class="lucide lucide-repeat w-6 h-6 mr-2">
								<polygon
									points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
								<line x1="12" y1="8" x2="12" y2="12"></line>
								<line x1="12" y1="16" x2="12.01" y2="16"></line>
							</svg>
							&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
						</div>
						<div class="alert alert-secondary show flex items-center mb-2"
							role="alert" style="height: 50px">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="alert-octagon" data-lucide="repeat"
								class="lucide lucide-repeat w-6 h-6 mr-2">
								<polygon
									points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
								<line x1="12" y1="8" x2="12" y2="12"></line>
								<line x1="12" y1="16" x2="12.01" y2="16"></line>
							</svg>
							&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
						</div>
						<div class="alert alert-secondary show flex items-center mb-2"
							role="alert" style="height: 50px">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="alert-octagon" data-lucide="repeat"
								class="lucide lucide-repeat w-6 h-6 mr-2">
								<polygon
									points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
								<line x1="12" y1="8" x2="12" y2="12"></line>
								<line x1="12" y1="16" x2="12.01" y2="16"></line>
							</svg>
							&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
						</div>
						<div class="alert alert-secondary show flex items-center mb-2"
							role="alert" style="height: 50px">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="alert-octagon" data-lucide="repeat"
								class="lucide lucide-repeat w-6 h-6 mr-2">
								<polygon
									points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
								<line x1="12" y1="8" x2="12" y2="12"></line>
								<line x1="12" y1="16" x2="12.01" y2="16"></line>
							</svg>
							&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
						</div>
						<div class="alert alert-secondary show flex items-center mb-2"
							role="alert" style="height: 50px">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="alert-octagon" data-lucide="repeat"
								class="lucide lucide-repeat w-6 h-6 mr-2">
								<polygon
									points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
								<line x1="12" y1="8" x2="12" y2="12"></line>
								<line x1="12" y1="16" x2="12.01" y2="16"></line>
							</svg>
							&nbsp;&nbsp;최수영(sooyoung) 내글에 댓글
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END: Notifications -->
		<!-- BEGIN: Notifications 2-->
		<div class="intro-x dropdown mr-4 sm:mr-6">
			<a id="smsIcon">
				<div class="dropdown-toggle notification notification--light notification--bullet cursor-pointer"
					role="button" aria-expanded="false" data-tw-toggle="dropdown">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="send" data-lucide="send"
						class="lucide lucide-send block mx-auto">
						<line x1="22" y1="2" x2="11" y2="13"></line>
						<polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
					</svg>
				</div>
			</a>
			<div class="notification-content pt-2 dropdown-menu">
				<div class="notification-content__box dropdown-content" id="chatContent">
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
					class="dropdown-content bg-primary/80 before:block before:absolute before:bg-black before:inset-0 before:rounded-md before:z-[-1] text-white">
					<li class="p-2">
							<div class="font-medium">${userVO.empVO.empNm}</div>
							<div class="text-xs text-white/60 mt-0.5 dark:text-slate-500">
								${userVO.empVO.deptNm} ${userVO.empVO.jbgdNm}</div>
					</li>
					<li>
						<hr class="dropdown-divider border-white/[0.08]">
					</li>
					<li><a href="/emp/mypg/myhome" class="dropdown-item hover:bg-white/5">
					<i data-lucide="user" class="w-4 h-4 mr-2"></i> 마이페이지
					</a></li>
					<li><form id="logoutForm" action="/logout" method="post">
					<button class="dropdown-item hover:bg-white/5"> <i
							data-lucide="toggle-right" class="w-4 h-4 mr-2"></i> 로그아웃
					</button><sec:csrfInput />
					</form></li>
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
		<li class="top_menu"><a id="ai" href="/emp/ai/doran" class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-robot" viewBox="0 0 16 16">
						<path d="M6 12.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5ZM3 8.062C3 6.76 4.235 5.765 5.53 5.886a26.58 26.58 0 0 0 4.94 0C11.765 5.765 13 6.76 13 8.062v1.157a.933.933 0 0 1-.765.935c-.845.147-2.34.346-4.235.346-1.895 0-3.39-.2-4.235-.346A.933.933 0 0 1 3 9.219V8.062Zm4.542-.827a.25.25 0 0 0-.217.068l-.92.9a24.767 24.767 0 0 1-1.871-.183.25.25 0 0 0-.068.495c.55.076 1.232.149 2.02.193a.25.25 0 0 0 .189-.071l.754-.736.847 1.71a.25.25 0 0 0 .404.062l.932-.97a25.286 25.286 0 0 0 1.922-.188.25.25 0 0 0-.068-.495c-.538.074-1.207.145-1.98.189a.25.25 0 0 0-.166.076l-.754.785-.842-1.7a.25.25 0 0 0-.182-.135Z"/>
						<path d="M8.5 1.866a1 1 0 1 0-1 0V3h-2A4.5 4.5 0 0 0 1 7.5V8a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1v1a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-1a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1v-.5A4.5 4.5 0 0 0 10.5 3h-2V1.866ZM14 7.5V13a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V7.5A3.5 3.5 0 0 1 5.5 4h5A3.5 3.5 0 0 1 14 7.5Z"/>
					</svg>
				</div>
				<div class="top-menu__title">AI 도란</div>
		</a></li>
		<li class="top_menu"><a id="onair" href="/emp/onair/annnc" class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-broadcast" viewBox="0 0 16 16">
					  <path d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 1 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707zM10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
					</svg>
				</div>
				<div class="top-menu__title">ON AIR</div>
		</a></li>
		<li class="top_menu"><a id="atrz" href="/emp/atrz/mydoc?empId=${userVO.empVO.empId}" class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="clipboard" data-lucide="clipboard"
						class="lucide lucide-clipboard block mx-auto">
						<path
							d="M16 4h2a2 2 0 012 2v14a2 2 0 01-2 2H6a2 2 0 01-2-2V6a2 2 0 012-2h2"></path>
						<rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>
				</div>
				<div class="top-menu__title">전자결재</div>
		</a></li>
		<li class="top_menu"><a id="pa" href="/emp/pa/mngempacnt" class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="users" data-lucide="users"
						class="lucide lucide-users block mx-auto">
						<path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"></path>
						<circle cx="9" cy="7" r="4"></circle>
						<path d="M23 21v-2a4 4 0 00-3-3.87"></path>
						<path d="M16 3.13a4 4 0 010 7.75"></path></svg>
				</div>
				<div class="top-menu__title">인사/행정</div>
		</a></li>
		<li class="top_menu"><a id="fs" href="/emp/fs/mngorgcht" class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="users" data-lucide="users"
						class="lucide lucide-users block mx-auto">
						<path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"></path>
						<circle cx="9" cy="7" r="4"></circle>
						<path d="M23 21v-2a4 4 0 00-3-3.87"></path>
						<path d="M16 3.13a4 4 0 010 7.75"></path></svg>
				</div>
				<div class="top-menu__title">시설/보안</div>
		</a></li>
		<li class="top_menu"><a id="aa" href="/emp/aa/mnghshldmanagect?rlvtYm=202307&hshldInfoNo=101101" class="top-menu">
				<div class="top-menu__icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="users" data-lucide="users"
						class="lucide lucide-users block mx-auto">
						<path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"></path>
						<circle cx="9" cy="7" r="4"></circle>
						<path d="M23 21v-2a4 4 0 00-3-3.87"></path>
						<path d="M16 3.13a4 4 0 010 7.75"></path></svg>
				</div>
				<div class="top-menu__title">경리/회계</div>
		</a></li>
		<li class="top_menu"><a id="cmnt" href="/emp/cmnt/empntcbbs" class="top-menu">
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
	</ul>
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
<button id="basic-non-sticky-notification-toggle"
	class="btn btn-primary mr-1" style="display: none;">Show Non
	Sticky Notification</button>
<!-- END: Notification Toggle -->
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
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
		//화면이 load되고 나서 websocket에서 받은 onlineUser를 생성
		//timeout을 걸지 않으면 소켓에서 받기전 실행되서 error
		setTimeout(function() {
		    console.log("2 seconds passed!");
		    let $j = jQuery.noConflict();
			let chatContent = "";
			let me = "${userVO.empVO.empId}";
			console.log(onlineUsers,"onlineUsersonlineUsers");
			let data = onlineUsers.toString();
			console.log("onlineUsersonlineUsers",onlineUsers);
			jQuery.ajax({
				url : "/emp/onlineUserDetail",
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
						if (me == onlineUsersVOList[i].empId) {
						//자기 자신 제외
						} else {
							let empVO = JSON.stringify(onlineUsersVOList[i])
							str += "<a href='#' onclick='newChattingRoom("+ empVO+ ")' id='openChat"+onlineUsersVOList[i]['empId']+"' data-tw-toggle='modal' data-tw-target='#basic-slide-over-preview'>";
							str += "<div class='cursor-pointer relative flex items-center'>";
							str += "<div class='w-12 h-12 flex-none image-fit mr-1'>";
							str += "<img alt='Midone - HTML Admin Template' class='rounded-full' src=/resources/images/emp/"+onlineUsersVOList[i].empImg+" />";
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
	//DB에 존재하는 시간 데이터를 형식에 맞게 바꿔주는 함수
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




	//생성된 온라인 유저 아이콘을 임의로 누를 수 있게 해주는 함수
	function goToChat(id){
		console.log("goToChat");
		console.log("#openChat"+id);
		jQuery("#openChat"+id).click();

	}
	//채팅할 상대방의 데이터를 받아와 채팅방 헤더에 정보를 세팅해주는 함수
	function newChattingRoom(data) {
		console.log(JSON.stringify(data));
		console.log(data["empId"]);
		$("#receiverImg").attr("src","/resources/images/emp/" + data["empImg"])
		$("#receiverInfo").val(data["empId"]);
		$("#userInfo").html(data["empNm"] + "(" + data["empId"] + ")");
		console.log("${userVO.empVO.empId}");
		setChatBody("${userVO.empVO.empId}", data["empId"]);
	}
	// textarea에 채팅을 치면 형식에 맞게 데이터를 서버에 보내주는 함수
	function chatSubmit(evt) {
		let cmd = "chat";

		let textMessage = $("#chatTextArea").val();
		$("#chatTextArea").val("");
		console.log("textMessage" + textMessage);

		let sender = "${userVO.empVO.empId}";
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
	//채팅 데이터 (메세지)를 받는 함수 메세지가 올때마다 footer에서 호출
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
		if (chatRoomFlag=="true") {
			console.log("chatRoomFlag2",chatRoomFlag);
			$j("#toggleContent").html(senderId+"님이 " + receiverId+"님에게 메세지를 보냈습니다.");
 			$j("#toggleA").attr("href","javascript:goToChat('" + senderId + "')");
			$j("#basic-non-sticky-notification-toggle").click();
			setChatBody(receiverId, senderId);
			//채팅방이 꺼져있을 때
		}else if(chatRoomFlag == "false"){
			console.log("chatRoomFlag3",chatRoomFlag);
			setChatBody(receiverId, senderId);
		}
	}
	//채팅방에 있는 대화내용을 업데이트해주는 함수
	//실시간으로 디비에 저장하고 받을때, 보낼때 호출된다.
	//대화방이 닫혀있으면 echo, 열려있으면 msg로 처리
	function setChatBody(me, you) {
		let data = {
			me : me,
			you : you
		};
		console.log(data);
		jQuery.ajax({
			url : "/emp/selectMyChat",
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
						bodyStr += "<img alt='Midone - HTML Admin Template' class='rounded-full' src='/resources/images/emp/"+"${userVO.empVO.empImg}"+"'>";
						bodyStr += "</div></div>";
					} else {
						bodyStr += "<div class='chat__box__text-box flex items-end float-left mb-4'>";
						bodyStr += "<div class='w-10 h-10 hidden sm:block flex-none image-fit relative mr-5'>";
						bodyStr += "<img alt='Midone - HTML Admin Template' class='rounded-full' src='/resources/images/emp/"+you+".jpg'>";
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


	$("#echoCleanBtn").on("click", function(){
		$("#echoContentDiv").html("");
	});
	$(".echodivClss").on("click",function(event){
		console.log(event);
		event.target.remove();
	});



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
				    		if (result == "직원 계정 관리") {
				    			window.location=href = "/emp/pa/mngempacnt";
				    		}
				    		if (result == "입주민 계정 관리") {
				    			window.location=href = "/emp/pa/mngmemacnt";
				    		}
				    		if (result == "직원 공지사항") {
				    			window.location=href = "/emp/pa/mngmemacnt";
				    		}
				    		if (result == "직원 자유게시판") {
				    			window.location=href = "/emp/pa/mngmemacnt";
				    		}
					    	return;
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
</script>


<!-- 숨어있는 side-over창 -->
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
<!-- 숨어있는 side-over창 -->

