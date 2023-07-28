<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<sec:authentication property="principal.userVO" var="userVO" />

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav pt-1">
		    <ul>
		        <li class="mb-4">
		            <a id="btnNew" href="javascript:;" class="side-menu btn btn-outline-primary shadow-md font-bold zoom-in"
		            	style="letter-spacing: 1px;font-size: 19px;color:rgb(30, 58, 138);background-color: white;">
		                새 결재 진행
		            </a>
		        </li>
		        <li>
		            <a href="/emp/atrz/mydoc?empId=${userVO.empVO.empId}" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 내 문서함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 상신함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 진행중 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 완료함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 반려함 </div>
		            </a>
		        </li>
		        <hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 미결함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 예결중 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 대결함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 기결함 </div>
		            </a>
		        </li>
		        <hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 수신함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 참조함 </div>
		            </a>
		        </li>
		        <hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 임시보관함 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
<c:set var="ymd" value="<%=new java.util.Date()%>" />

<div class="go_content go_renew" id="content">
	<div class="mt-2 mb-10">
		<span class="font-extrabold text-3xl" title="${docFormSj}">${docFormSj}</span>
	</div>
	<div class="content_page report_detail w-full">
		<!-- BEGIN : 툴바 -->
		<div class="tool_bar flex font-semibold text-lg w-full items-center border-b border-slate-300 pb-2 mb-2">
			<div class="flex items-center">
				<a id="act_draft" class="btn_tool flex mr-7 items-center zoom-in" data-tw-toggle="modal" data-tw-target="#regModal" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="edit" data-lucide="edit" class="lucide lucide-edit block mx-auto"><path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
					<span class="txt ml-1">결재요청</span>
				</a>
				<a id="act_edit_apprflow" class="btn_tool flex mr-7 items-center zoom-in" data-tw-toggle="modal" data-tw-target="#selectAtrzLine" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/></svg>
					<span class="txt ml-1">결재선 설정</span>
				</a>
				<a id="act_document_preview" class="btn_tool flex mr-7 items-center zoom-in" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="eye" data-lucide="eye" class="lucide lucide-eye block mx-auto"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
					<span class="txt ml-1">미리보기</span>
				</a>
				<a id="act_cancel_draft" class="btn_tool flex mr-7 items-center zoom-in" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x-circle" data-lucide="x-circle" class="lucide lucide-x-circle block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
					<span class="txt ml-1">취소</span>
				</a>
				<a id="act_temp_save" class="btn_tool flex items-center zoom-in" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="save" data-lucide="save" class="lucide lucide-save block mx-auto"><path d="M19 21H5a2 2 0 01-2-2V5a2 2 0 012-2h11l5 5v11a2 2 0 01-2 2z"></path><polyline points="17 21 17 13 7 13 7 21"></polyline><polyline points="7 3 7 8 15 8"></polyline></svg>
					<span class="txt ml-1">임시저장</span>
				</a>
			</div>
			<div class="optional flex ml-auto items-center">
				<a id="auto" class="btn btn-secondary p-1 font-bold h-6 mr-2 text-sm" style="width: 65px;"> 자동완성 </a>
				<a id="act_list" href="/emp/atrz/mydoc?empId=${userVO.empVO.empId}" class="btn_tool flex items-center mr-3 zoom-in" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="align-justify" data-lucide="align-justify" class="lucide lucide-align-justify block mx-auto"><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
					<span class="txt ml-1">목록</span>
				</a>
				<select id="autoSaveSelect" class="form-control pl-2 h-9 text-lg" style="width: 142px;">
					<option value="0" selected="selected">자동저장 안함</option>
					<option value="30">자동저장(30초)</option>
					<option value="60">자동저장(1분)</option>
					<option value="180">자동저장(3분)</option>
				</select>
			</div>
		</div>
		<!-- END : 툴바 -->
	<form id="frm_doc_content" action="/emp/atrz/registerPost" method="post" class="form_doc_editor editor_view font-bold" style="width: 100%;">
		<div>
			<div id="doc_container">
				<!-- 문서 + 결재선 정보 -->
				<div id="doc_profile">
					<div id="doc_wrap" class="flex">
						<!-- 문서 내용 -->
						<div id="doc" class="approval_import ie9-scroll-fix box p-3 border-t border-b border-r border-l border-slate-200 font-bold" style="width: 822px;">
							<input id="frstWrterId" name="frstWrterId" value="${userVO.empVO.empId}" class="hidden" type="text" />
							<input id="fsrtWritingTm" name="fsrtWritingTm" value="<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd HH:mm:ss" />" class="hidden" type="text" />
							<input id="atrzDocSj" name="atrzDocSj" value="휴가신청서" class="hidden" type="text" />
							<input id="atrzDocCn" name="atrzDocCn" value="" class="hidden" type="text" />
							<input id="lastUpdusr" name="lastUpdusr" value="${userVO.empVO.empId}" class="hidden" type="text" />
							<input id="lastUpdtTm" name="lastUpdtTm" value="<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd HH:mm:ss" />" class="hidden" type="text" />
							<input id="atrzTermYmd" name="atrzTermYmd" value="<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd HH:mm:ss" />" class="hidden" type="text" />
							<input id="giveRsn" name="giveRsn" value="" class="hidden" type="text" />
							<div id="forAtrzVO" class="hidden"></div>
							<sec:csrfInput />
							<table class="__se_tbl" style="background: white; border: 0px solid black; border-image: none; width: 800px; color: black; font-size: 16px; border-collapse: collapse !important;">
								<tbody>
									<tr>
										<td style="padding: 3px !important; border: 0px solid black; border-image: none; width: 300px; height: 90px !important; text-align: center; font-size: 22px; font-weight: bold; vertical-align: middle;"
											colspan="2" class="">연차신청서</td>
									</tr>
									<tr>
										<td style="padding: 0px !important; border: 0px currentColor; border-image: none; width: 300px; height:150px;" class="">
											<table id="tbl_1" class="__se_tbl" style="background: white; margin: 0px; border: 1px solid black; border-image: none; color: black; font-size: 16px; border-collapse: collapse !important;">
												<tbody>
													<tr>
														<td style="background: rgb(221, 221, 221); padding: 0px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
																기안자</td>
														<td style="padding: 0px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;">
															<input id="empNm" name="empNm" value="${userVO.empVO.empNm}" class="h-9" type="text" readonly="" style="vertical-align: middle; width: 100%; border: 0px;" />
														</td>
													</tr>
													<tr>
														<td style="background: rgb(221, 221, 221); padding: 0px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
															기안부서</td>
														<td style="padding: 0px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;">
															<input id="" name="" value="인사/행정" class="h-9" type="text" readonly="" style="vertical-align: middle; width: 100%; border: 0px;" />
														</td>
													</tr>
													<tr>
														<td style="background: rgb(221, 221, 221); padding: 0px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
															기안일</td>
														<td style="padding: 0px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;">
															<input id="atrz_date" name="atrz_date" value="<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd (E)" />" class="h-9" type="text" readonly="" style="vertical-align: middle; width: 100%; border: 0px;" />
														</td>
													</tr>
													<tr>
														<td style="background: rgb(221, 221, 221); padding: 0px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">
															문서번호</td>
														<td style="padding: 0px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;">
															<input id="atrzDocId" name="atrzDocId" value="" class="h-9" type="text" readonly="" style="vertical-align: middle; width: 100%; border: 0px;" />
														</td>
													</tr>
												</tbody>
											</table>
										</td>
										<!-- BEGIN : 결재선 테이블 -->
										<td id="atrz_line" class="flex justify-end" style="width: 800px; padding: 0px !important; border: 0px currentColor !important; border-image: none !important !important; width: 500px; text-align: right; vertical-align: top !important;" class="">
										</td>
								    	<!-- END : 결재선 테이블 -->
									</tr>
								</tbody>
							</table><br />
							<table class="__se_tbl" style="background: white; border: 1px solid black; border-image: none; width: 800px; color: black; font-size: 16px; margin-top: 0px; border-collapse: collapse !important;">
								<tbody>
									<tr>
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 16px; font-weight: bold; vertical-align: middle;">
											휴가&nbsp;종류</td>
										<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 16px; font-weight: normal; vertical-align: middle;">
											<span id="vacationTypeArea" style="line-height: normal; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;" name="select">
												<select id="lvSeCd" name="lvSeCd" class="form-control h-8 w-40 font-semibold text-lg pl-2">
													<option value="PDLV01">연차휴가</option>
													<option value="PDLV02">출산휴가</option>
													<option value="PDLV03">배우자 출산휴가</option>
													<option value="PDLV04">가족돌봄휴가</option>
													<option value="PDLV05">약정휴가</option>
													<option value="PDLV06">생리휴가</option>
													<option value="PDLV07">육아휴직</option>
													<option value="PDLV08">난임치료휴가</option>
													<option value="PDLV09">질병휴가</option>
												</select>
											</span>
										</td>
									</tr>
									<tr>
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 45px; text-align: center; color: rgb(0, 0, 0); font-size: 16px; font-weight: bold; vertical-align: middle;">
											기간&nbsp;및&nbsp;일시</td>
										<td class="flex items-center" style="background: rgb(255, 255, 255); padding: 1px; padding-left: 4px; border: 0px solid black; border-image: none; width: 700px; height: 45px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;">
											 <div class="relative" style="width: 155px;"><div class="absolute rounded-l w-9 h-full flex items-center justify-center bg-slate-100 border text-slate-500">
											     <i data-lucide="calendar" class="w-4 h-4"></i></div>
											     <input id="startDate" name="rgngTm" type="text" class="date_picker form-control pl-10 pr-0 h-full" placeholder=" 시작일" />
											 </div>&nbsp;~&nbsp;
											 <div class="relative" style="width: 155px;"><div class="absolute rounded-l w-9 h-full flex items-center justify-center bg-slate-100 border text-slate-500">
											     <i data-lucide="calendar" class="w-4 h-4"></i></div>
											     <input id="endDate" name="endTm" type="text" class="date_picker form-control pl-10 pr-0 h-full" placeholder=" 종료일" />
											 </div>&nbsp;&nbsp;
											<span id="usingPointArea" style="line-height: normal; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
												<b style="font-weight: bold; font-size: 15px;">사용일수 : </b>
												<input type="text" class="form-control w-10 h-full text-center font-bold mr-1 p-0" name="lvCnt" id="usingPoint"
													data-require="false" data-editable="true" value="0" readonly="readonly" style="font-weight: bold; font-size: 16px;"/>
												<b id="usingPoint_Comment" style="font-weight: bold; color: red; font-size: 15px;"></b>
											</span>
										</td>
									</tr>
									<tr>
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 45px; text-align: center; color: rgb(0, 0, 0); font-size: 16px; font-weight: bold; vertical-align: middle;">
											반차&nbsp;여부</td>
										<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 45px; text-align: left; color: rgb(0, 0, 0); font-size: 16px; font-weight: normal; vertical-align: middle;">
											<span id="vacationHalfArea" style="line-height: normal; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
												<input id="startHalf" name="check_startHalf" class="form-check-input" type="checkbox" value="시작일" />
												<label class="form-check-label ml-0 font-semibold" for="checkbox-switch-1">시작일</label>
													( <input id="startAMHalf" class="form-check-input" type="radio" name="radio_startHalf" value="오전" disabled="disabled">
													  <label class="form-check-label ml-0 font-semibold" for="radio-switch-1">오전</label>
													  <input id="startPMHalf" class="form-check-input" type="radio" name="radio_startHalf" value="오후" disabled="disabled">
													  <label class="form-check-label ml-0 font-semibold" for="radio-switch-2">오후</label> )
												<input id="endHalf" name="check_startHalf" class="form-check-input ml-3" type="checkbox" value="종료일" />
												<label class="form-check-label ml-0 font-semibold" for="checkbox-switch-2">종료일</label>
													( <input id="endAMHalf" class="form-check-input" type="radio" name="radio_endHalf" value="오전" disabled="disabled">
													  <label class="form-check-label ml-0 font-semibold" for="radio-switch-3">오전</label>
													  <input id="endPMHalf" class="form-check-input" type="radio" name="radio_endHalf" value="오후" disabled="disabled">
													  <label class="form-check-label ml-0 font-semibold" for="radio-switch-4">오후</label> )
											</span>
										</td>
									</tr>
									<tr>
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 45px; text-align: center; color: rgb(0, 0, 0); font-size: 16px; font-weight: bold; vertical-align: middle;">
											연차&nbsp;일수</td>
										<td class="flex items-center" style="background: rgb(255, 255, 255); padding: 3px; border: 0px solid black; border-image: none; width: 700px; height: 45px; text-align: left; color: rgb(0, 0, 0); font-size: 16px; vertical-align: middle;">
											<span id="restPointArea" style="line-height: normal; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
												<b class="ml-2">잔여연차 : </b>
												<input type="text" class="form-control w-12 h-full text-center font-bold mr-2 p-0" name="giveLvCnt" id="restPoint"
													data-require="false" data-editable="true" value="16" readonly="readonly" style="font-weight: bold; font-size: 16px;" />
												<b id="restPoint_Comment" style="font-weight: bold; color: red"></b>
											</span>
											<span id="applyPointArea" style="line-height: normal; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
												<b>신청연차 : </b>
												<input type="text" class="form-control w-12 h-full text-center font-bold p-0" name="applyPoint" id="applyPoint"
													data-require="false" data-editable="true" value="0" readonly="readonly" style="font-weight: bold; font-size: 16px;"/>
												<b id="applyPoint_Comment" style="font-weight: bold; color: red"></b>
											</span>
										</td>
									</tr>
									<tr id="tr_giveRsn">
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 80px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
											<b style="color: rgb(255, 0, 0);">*</b>&nbsp;휴가&nbsp;사유</td>
										<td id="td_giveRsn" style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 100px; text-align: left; color: rgb(0, 0, 0); font-size: 17px; vertical-align: top;">
											<textarea id="editor" class="" name="giveRsn"></textarea></td>
									</tr>
									<tr>
										<td class="font-semibold" style="background: rgb(221, 221, 221); font-size: 14px;; padding: 20px !important; border: 1px solid black; border-image: none; width: 800px; height: 22px; text-align: left; vertical-align: middle;" colspan="2">
											1. 연차의 사용은 근로기준법에 따라 전년도에 발생한 개인별 잔여 연차에 한하여 사용함을 원칙으로 한다.<br />&nbsp;&nbsp;&nbsp;&nbsp;단, 최초 입사시에는 근로 기준법에 따라 발생 예정된 연차를 차용하여 월 1회 사용 할 수 있다.<br />
											2. 경조사 휴가는 행사일을 증명할 수 있는 가족 관계 증명서 또는 등본, 청첩장 등 제출<br />3. 공가(예비군/민방위)는 사전에 통지서를, 사후에 참석증을 반드시 제출
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- BEGIN : 결재선 정보 -->
						<div class="box ml-2 w-40 border-t border-b border-r border-l border-slate-200 text-center justify-center items-center">
							<div class="items-center text-center font-extrabold text-lg border-b border-slate-200 bg-slate-100 h-12 pt-2 pb-2">결재선 정보</div>
							<!-- 결재선 프로필 정보 -->
							<div id="atrz_line_profile" class="scroll" style="max-height: 852px; overflow-x: hidden; overflow-y: auto;"></div>
						</div>
						<!-- END : 결재선 정보 -->
					</div>
				</div>
			</div>
				<!-- BEGIN : 파일 업로드 -->
				<div id="attachView" class="box mt-2 p-2">
					<div class="w-full flex-1 border-2 border-dashed rounded-md pt-4" style="height: 175px;">
				        <div id="fileShow" class="grid grid-cols-6 gap-20 pl-4 pr-5 h-28">
				        </div>
				        <div class="mt-2 flex items-center justify-center cursor-pointer h-10"><label class="cursor-pointer flex w-full h-10" for="fileUpload">
				            <input id="fileUpload" type="file" name="file" class="relative opacity-0 cursor-pointer mr-36">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="file-plus" class="lucide lucide-file-plus mr-2" data-lucide="file-plus"><path d="M14.5 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V7.5L14.5 2z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="12" y1="18" x2="12" y2="12"></line><line x1="9" y1="15" x2="15" y2="15"></line></svg>
					        <span class="text-primary mr-1 text-xl font-semibold">파일 업로드</span></label>
				        </div>
				    </div>
				</div>
			    <!-- END : 파일 업로드 -->
			</div>
	</form>
			<!-- BEGIN : 툴바 -->
			<div class="tool_bar flex font-semibold text-lg w-full items-center border-t border-slate-300 pt-2 mt-3">
				<div class="flex items-center">
					<a id="act_draft" class="btn_tool flex mr-7 items-center zoom-in" data-tw-toggle="modal" data-tw-target="#regModal" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="edit" data-lucide="edit" class="lucide lucide-edit block mx-auto"><path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
						<span class="txt ml-1">결재요청</span>
					</a>
					<a id="act_edit_apprflow" class="btn_tool flex mr-7 items-center zoom-in" data-tw-toggle="modal" data-tw-target="#selectAtrzLine" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/></svg>
						<span class="txt ml-1">결재선 설정</span>
					</a>
					<a id="act_document_preview" class="btn_tool flex mr-7 items-center zoom-in" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="eye" data-lucide="eye" class="lucide lucide-eye block mx-auto"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
						<span class="txt ml-1">미리보기</span>
					</a>
					<a id="act_cancel_draft" class="btn_tool flex mr-7 items-center zoom-in" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x-circle" data-lucide="x-circle" class="lucide lucide-x-circle block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
						<span class="txt ml-1">취소</span>
					</a>
					<a id="act_temp_save" class="btn_tool flex mr-7 items-center zoom-in" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="save" data-lucide="save" class="lucide lucide-save block mx-auto"><path d="M19 21H5a2 2 0 01-2-2V5a2 2 0 012-2h11l5 5v11a2 2 0 01-2 2z"></path><polyline points="17 21 17 13 7 13 7 21"></polyline><polyline points="7 3 7 8 15 8"></polyline></svg>
						<span class="txt ml-1">임시저장</span>
					</a>
				</div>
				<div class="optional flex ml-auto items-center">
					<a id="act_list" href="/emp/atrz/mydoc" class="btn_tool flex items-center mr-3 zoom-in" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="align-justify" data-lucide="align-justify" class="lucide lucide-align-justify block mx-auto"><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
						<span class="txt ml-1">목록</span>
					</a>
					<select id="autoSaveSelect" class="form-control pl-2 w-40 h-9 text-lg">
						<option value="0" selected="selected">자동저장 안함</option>
						<option value="30">자동저장 (30초)</option>
						<option value="60">자동저장 (1분)</option>
						<option value="180">자동저장 (3분)</option>
					</select>
				</div>
			</div>
			<!-- END : 툴바 -->
		</div>
	</div>
</div>


</div>
<!-- END: Body -->

<!-- BEGIN: 결재선 설정 Modal -->
<div id="selectAtrzLine" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="width: 790px; height: 577px;">
            <div class="modal-body p-5 text-center justify-center">
				<div class="text-2xl font-bold mt-1 justify-center">결재선 설정</div>
				<div class="flex">
					<div class="mt-4 box p-4 pb-0 bg-slate-200 justify-center" style="height: 490px;width: 257px">
						<div class="flex w-full mt-0 h-10 items-center">
					        <div class="w-56 relative text-slate-500 mr-2">
					            <input id="jstree_search" type="text" name="keyword" class="form-control w-56 box pr-10 font-semibold h-9" placeholder="검색" style="font-size: 16px;">
					            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
					        </div>
					    </div>
					    <div class="flex" style="width: 110%;">
							<div class="mt-3 mr-0 pr-56" style="width: 10%;">
								<div id="jstree" class="font-semibold text-lg"></div>
							</div>
					    </div>
					</div>
					<div class="scroll" style="max-height: 450px; overflow-y: auto; overflow-x: hidden">
						<table id="tbl_atrz_line" class="table mt-4 ml-2 font-semibold text-center text-lg" style="width: 485px;">
							<thead class="table-light bg-slate-200" style="font-weight: bold;">
							    <tr>
							        <th class="bg-slate-200">순서</th>
							        <th class="bg-slate-200 w-20">구분</th>
							        <th class="bg-slate-200 w-32">결재자</th>
							        <th class="bg-slate-200 w-36">직책</th>
							        <th class="bg-slate-200">삭제</th>
							    </tr>
							</thead>
							<tbody id="tbd_atrz_line">
<!-- 						    <tr class="atrz_line_info"> -->
<!-- 						        <td>1</td> -->
<!-- 						        <td> -->
<!-- 									<select class="form-control h-10 w-20 text-lg pl-2" name="select_type"> -->
<!-- 										<option value="결재">결재</option> -->
<!-- 										<option value="합의">합의</option> -->
<!-- 										<option value="참조">참조</option> -->
<!-- 									</select> -->
<!-- 						        </td> -->
<!-- 						        <td>이덕화</td> -->
<!-- 						        <td>관리소장</td> -->
<!-- 						        <td> -->
<!-- 						        	<svg class="atrz-line-del cursor-pointer ml-auto mr-auto" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2" class="lucide lucide-trash-2 block mx-auto"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg> -->
<!-- 						        </td> -->
<!-- 						    </tr> -->
							</tbody>
						</table>
				    </div>
				    <div>
						<div class="text-lg font-bold text-right mr-1 absolute bottom-5 right-5">
							<a id="btnConfirm" class="btn btn-primary font-bold h-11" style="width: 65px;"> 확인 </a>
							<a id="btnCancle" class="btn btn-outline-danger font-bold ml-1 h-11" style="width: 65px;"> 취소 </a>
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
</div>
<!-- END: 결재선 설정 Modal -->
<!-- BEGIN: 결재요청 Modal -->
<div id="regModal" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="font-bold text-xl mr-auto">결재 요청</h2>
            </div>
            <div class="modal-body">
				<div class="font-bold text-lg mb-2">문서 제목</div>
                <div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
	                    <input id="reg_atrzDocSj" type="text" class="form-control text-lg">
	                </div>
                </div>
            </div>
            <div class="modal-footer flex items-center" style="font-size: 16px;">
            	<input id="reg_time" type="checkbox" class="form-control mr-1 w-5 h-5" />
            	<span class="font-bold">긴급여부</span>
            	<a id="reg_confirm" class="btn btn-primary font-semibold w-20 ml-auto mr-2">등록</a>
            	<a data-tw-dismiss="modal" class="btn btn-outline-danger font-semibold w-20">취소</a>
            </div>
        </div>
    </div>
</div>
<!-- END: 결재요청 Modal -->
<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- 조직도 트리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<!-- jsPDF -->
<script type="text/javascript" src="/resources/js/html2canvas.js"></script>
<script type="text/javascript" src="/resources/js/jspdf.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="/resources/icewall/dist/css/datepicker.css">
<style type="text/css">
@media print {
	.main {
		padding: 0;
	}
	#doc {
	  margin-left: 0;
	  align-content: flex-start;
	  justify-content: flex-start;
	}
}
@page {
	size : auto;
	margin-left : 0mm;
	padding-left: 0mm;
}
#j1_1_anchor, #j1_3_anchor, #j1_8_anchor, #j1_13_anchor {
	font-weight: bolder;
}
#tbl_atrz_line th {
	padding-left: 0px;
	padding-right: 0px;
	font-weight: bolder;
}
#tbl_atrz_line td {
	padding: 1px;
	height: 50px;
}
.ui-sortable-helper {
 	background-color: #ffffff;
 	outline: 2px ridge rgb(30,58,138);
 	border-radius: 5px;
 	padding-left: 140px;
}
.scroll::-webkit-scrollbar {
    width: 5px;
}
.scroll::-webkit-scrollbar-track {
    background-color: darkgrey;
    border-radius: 100px;
}
.scroll::-webkit-scrollbar-thumb {
    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 100px;
}
</style>
<script>
	// CKEDITOR 설정
	CKEDITOR.replace("editor");  // textarea의 name 값 입력
	// html 태그 사라지는 오류 해결
	CKEDITOR.config.allowedContent = true;
	// 입력란 활성화
	CKEDITOR.instances["editor"].setReadOnly(false);
</script>
<script type="text/javascript">
let $j = jQuery.noConflict();
$j.datepicker.setDefaults({
	dateFormat: 'yy-mm-dd (D)',
	prevText: '이전 달',
	nextText: '다음 달',
	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	showMonthAfterYear: true,
	yearSuffix: '년'
});

$(function(){
	// 상단 메뉴 경로 표시
	$("#main_menu").html("전자결재");
	$("#sub_menu").html("내 문서함");

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

	// 연차 기간, 일수 계산
	let startDate = "";
	let endDate = "";
	let usingPoint = "";  // 신청연차 (사용일수)
	let restPoint = $("#restPoint").val(); // 잔여연차

	// 시작일 선택 이벤트 핸들러
	$j("#startDate").datepicker({
		onSelect : function(dateText, inst) {
			startDate = dateText.replace(/[-()]/g, "").substring(0, 8);
			console.log("startDate : ", startDate);
			$(this).val(dateText);
			$(this).attr("value", dateText);
		}
	});

	// 종료일 선택 이벤트 핸들러
	$j("#endDate").datepicker({
		onSelect : function(dateText, inst) {
			endDate = dateText.replace(/[-()]/g, "").substring(0, 8);
			console.log("endDate : ", endDate);
			usingPoint = endDate - startDate + 1;
			$("#usingPoint_Comment").html("");
			$("#usingPoint").val(usingPoint);
			$("#applyPoint").val(usingPoint);
			$("#usingPoint").attr("value", usingPoint);
			$("#applyPoint").attr("value", usingPoint);

			if (endDate < startDate) {
				$("#usingPoint_Comment").html("종료일은 시작일 이후로 설정해주세요");
				$("#endDate").val("");
				$("#usingPoint").val("");
				$("#applyPoint").val("");
				return;
			}

			if (usingPoint > restPoint) {
				$("#usingPoint_Comment").html("신청가능일을 초과하였습니다");
				$("#usingPoint").val("");
				$("#applyPoint").val("");
				return;
			}
			$(this).val(dateText);
			$(this).attr("value", dateText);
		}
	});

	// 미리보기 버튼 이벤트 핸들러 (PDF 프린트)
	 $("#act_document_preview").on("click", previewAndPrint);

	//============================= 부서 조직도 트리 =============================
	let $jQ = jQuery.noConflict();

	//데이터 변환
	const nodes = ${json};
	console.log("nodes : ", nodes);
	const data = [];

	// parent를 기준으로 데이터 정리
	const parents = {};
	nodes.forEach(node => {
		if (!parents[node.parent]) {
			parents[node.parent] = [];
		}
		parents[node.parent].push(node.child);
	});
	console.log("parents : ", parents);

	// jstree에서 사용할 수 있는 형태로 데이터 변환
	Object.keys(parents).forEach(parent => {
		const children = parents[parent].map(child => {
			return {text : child, type : "emp"};
		});
		data.push({
			text : parent,
			children : children
		});
	});
	// 부서별 직급순서 처리
	let temp = data[1];
	data[1] = data[0];
	data[0] = temp;
	for (let i = 1; i < data.length; i++) {
		let temp2 = data[i].children[2];
		data[i].children[2] = data[i].children[0];
		data[i].children[0] = temp2;
	}
	console.log("data : ", data);

	$jQ("#jstree").jstree({
		"core": {
			"check_callback" : true,
			"data" : data
		},
		"types" : {
			"default" : {
				"icon" : "fa fa-square-plus text-primary"
			},
			"emp" : {
				"icon" : "fa-solid fa-user text-warning"
			}
		},
		"plugins" : ["types", "dnd", "search"]
	});

	// 조직도 전체 펼치기
	$("#act_edit_apprflow").on("click", function(){
		$jQ("#jstree").jstree("open_all");
	});

    // 조직도 내 검색 기능
    $("#jstree_search").on("keyup", function () {
		let keyword = $(this).val();
		console.log(keyword);
		$j('#jstree').jstree(true).search(keyword);
    });
    //====================================================================

    // 결재 정보창 취소 버튼 이벤트 핸들러
    $("#btnCancle").on("click", function(){
	   	let modal = tailwind.Modal.getInstance(document.querySelector("#selectAtrzLine"));
	   	modal.hide();
    });

	// 결재 정보창 삭제 버튼 이벤트 핸들러
	$(".atrz-line-del").on("click", function(e){
		$(this).closest("tr").remove();
		// 결재선 순서 업데이트
		update_atrz_seq();
	});

    // 노드 선택 이벤트 핸들러
	$j("#jstree").on("select_node.jstree", function(e, data) {

	    let cnt = $("#tbd_atrz_line").children("tr").length + 1;

		// 선택된 노드의 id와 텍스트
		let nodeId = data.node.id;
		let nodeText = data.node.text;
		let parentId = data.node.parent;
		let parentText = $j("#jstree").jstree(true).get_node(parentId).text;

		console.log("data : ", data);
		console.log("nodeId : ", nodeId);
		console.log("nodeText : ", nodeText);
		console.log("parentId : ", parentId);
		console.log("parentText : ", parentText);

		if (nodeId == "j1_1" || nodeId == "j1_3" || nodeId == "j1_8" || nodeId == "j1_13") {
			return;
		}

		let	empNm = nodeText.substring(0, 3);
		let position = parentText + " " + nodeText.substring(4);
		if (parentText == nodeText.substring(4)) {
			position = parentText;
		}

		let empId = searchEmpId(nodes, nodeText);
		console.log(empId + empNm + position);

		let html_tr = `
            <tr id="\${empId}" class="atrz_line_info">
	            <td>\${cnt}</td>
	            <td>
					<select class="form-control h-10 w-20 text-lg pl-2" name="select_type">
						<option value="결재">결재</option>
						<option value="합의">합의</option>
						<option value="참조">참조</option>
					</select>
	            </td>
	            <td>\${empNm}</td>
	            <td>\${position}</td>
	            <td>
	            	<svg class="atrz-line-del cursor-pointer ml-auto mr-auto text-slate-500" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2" class="lucide lucide-trash-2 block mx-auto"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
	            </td>
        	</tr>
		`;

		document.querySelector("#tbd_atrz_line").insertAdjacentHTML("beforeend", html_tr);
		$(".atrz-line-del").on("click", function(e){
			$(this).closest("tr").remove();
			// 결재선 순서 업데이트
			update_atrz_seq();
		});

		// 결재선 순서 업데이트
		update_atrz_seq();
    });

    // 결재 정보창 - 확인 버튼 이벤트 핸들러
    $("#btnConfirm").on("click", function(){

    	// 결재선 테이블, 결재선 프로필 초기화
    	$("#atrz_line").html("");
    	$("#atrz_line_profile").html("");
    	$("#forAtrzVO").find("input").remove();

		let arr_info = $(".atrz_line_info");
		console.log(arr_info);

		let atrz_arr_name = [];
		let atrz_arr_position = [];
		let atrz_arr_empId = [];
		let atrz_profile_arr_position = [];

		let agree_arr_name = [];
		let agree_arr_position = [];
		let agree_arr_empId = [];
		let agree_profile_arr_position = [];

		for (let i = 0; i < arr_info.length; i++) {
			console.log("empId : ", $(arr_info[i])[0].id);

			let type = $(arr_info[i]).find("select")[0].value;
			let name = $($(arr_info[i]).children()[2]).html();
			let full_position = $($(arr_info[i]).children()[3]).html();
			let position = $($(arr_info[i]).children()[3]).html();
			let empId = $(arr_info[i])[0].id;

			if (full_position.length > 4) {
				position = full_position.substring(full_position.length - 2);
			}
			console.log(type, name, full_position);

			if (type == "결재") {
				// 결재 테이블 정보
				atrz_arr_name.push(name);
				atrz_arr_position.push(position);
				atrz_arr_empId.push(empId);
				// 결재선 프로필 정보
				atrz_profile_arr_position.push(full_position);
				// form에 input 요소 추가
				make_ipt(empId, i, "ATRZ01");
			} else if (type == "합의") {
				// 합의 테이블 정보
				agree_arr_name.push(name);
				agree_arr_position.push(position);
				agree_arr_empId.push(empId);
				// 결재선 프로필 정보
				agree_profile_arr_position.push(full_position);
				// form에 input 요소 추가
				make_ipt(empId, i, "ATRZ06");
			} else if (type == "참조") {
				// form에 input 요소 추가
				make_ipt(empId, i, "ATRZ07");
			}
		}
		console.log("결재", atrz_arr_name, atrz_arr_position, atrz_arr_empId);
		console.log("합의", agree_arr_name, agree_arr_position, agree_arr_empId);

		if (atrz_arr_name.length > 0) {
			// 결재선(결재) 생성
			makeAtrzTable("결재", atrz_arr_name, atrz_arr_position, atrz_arr_empId);
			// 결재선 정보 프로필 생성
			makeAtrzProfile(atrz_arr_name, atrz_profile_arr_position, atrz_arr_empId);
		}
		if (agree_arr_name.length > 0) {
			// 결재선(합의) 생성
			makeAtrzTable("합의", agree_arr_name, agree_arr_position, agree_arr_empId);
			// 결재선 정보 프로필 생성
			makeAtrzProfile(agree_arr_name, agree_profile_arr_position, agree_arr_empId);
		}

	   	let modal = tailwind.Modal.getInstance(document.querySelector("#selectAtrzLine"));
	   	modal.hide();
    });

    // 결재 취소 버튼 이벤트 핸들러
    $("#act_cancel_draft").on("click", function(){
    	if (!confirm("결재 작성을 취소하시겠습니까?")) {
    		return;
    	}
    	$("#atrz_line").html("");
    	$("#atrz_line_profile").html("");
    	$("#startDate").val("");
    	$("#endDate").val("");
    	$("#usingPoint").val("0");
    	$("#restPoint").val("0");
    	$("#applyPoint").val("0");
    	$("#fileUpload").val("");
    	$("#fileShow").html("");
    	$("#usingPoint_Comment").val("");
    	jQuery("input[type='checkbox']").prop("checked", false);
    	jQuery("input[type='radio']").prop("checked", false);
    	CKEDITOR.instances.editor.setData("");
    	$("#forAtrzVO").find("input").remove();
    });

	// 결재선 설정 창 - 결재선 목록 sortable
	$j("#tbd_atrz_line").sortable({
		update: function(event, ui) {
			// 결재선 순서 업데이트
			update_atrz_seq();
		}
	});

	// 시작일 체크박스 이벤트 핸들러
	$("#startHalf").on("change", function() {
		console.log(usingPoint);

		if ($(this).is(":checked")) {
			// 체크박스가 체크되었을 때 라디오 버튼 활성화
			jQuery("#startAMHalf").prop("disabled", false);
			jQuery("#startPMHalf").prop("disabled", false);
			// 사용일수, 신청연차 + 0.5
			usingPoint = parseFloat(usingPoint) + 0.5;
			$("#usingPoint").val(usingPoint);
			$("#applyPoint").val(usingPoint);
			$("#usingPoint").attr("value", usingPoint);
			$("#applyPoint").attr("value", usingPoint);

			$(this).attr("checked", "checked");
		} else {
			// 체크박스가 해제되었을 때 라디오 버튼 비활성화
			jQuery("#startAMHalf").prop("disabled", true);
			jQuery("#startPMHalf").prop("disabled", true);
			jQuery("#startAMHalf")[0].checked = false;
			jQuery("#startPMHalf")[0].checked = false;
			// 사용일수, 신청연차 값 원상복구
			usingPoint = parseFloat(usingPoint) - 0.5;
			$("#usingPoint").val(usingPoint);
			$("#applyPoint").val(usingPoint);
			$("#usingPoint").attr("value", usingPoint);
			$("#applyPoint").attr("value", usingPoint);

			$(this).removeAttr("checked");
			$(this).removeAttr("checked");
			$("input[name='radio_startHalf']").removeAttr("checked");
		}
	});

	// 종료일 체크박스 이벤트 핸들러
	$("#endHalf").on("change", function() {
		console.log(usingPoint);

		if ($(this).is(":checked")) {
			// 체크박스가 체크되었을 때 라디오 버튼 활성화
			jQuery("#endAMHalf").prop("disabled", false);
			jQuery("#endPMHalf").prop("disabled", false);
			// 사용일수, 신청연차 + 0.5
			usingPoint = parseFloat(usingPoint) + 0.5;
			$("#usingPoint").val(usingPoint);
			$("#applyPoint").val(usingPoint);

			$(this).attr("checked", "checked");
		} else {
			// 체크박스가 해제되었을 때 라디오 버튼 비활성화
			jQuery("#endAMHalf").prop("disabled", true);
			jQuery("#endPMHalf").prop("disabled", true);
			jQuery("#endAMHalf")[0].checked = false;
			jQuery("#endPMHalf")[0].checked = false;
			// 사용일수, 신청연차 값 원상복구
			usingPoint = parseFloat(usingPoint) - 0.5;
			$("#usingPoint").val(usingPoint);
			$("#applyPoint").val(usingPoint);

			$(this).removeAttr("checked");
			$("input[name='radio_endHalf']").removeAttr("checked");
		}
	});

	// 라디오 버튼 변경 이벤트 처리
	$("input[name='radio_startHalf']").on("change", function() {
		$("input[name='radio_startHalf']").removeAttr("checked");
		$(this).attr("checked", "checked");
	});
	$("input[name='radio_endHalf']").on("change", function() {
		$("input[name='radio_endHalf']").removeAttr("checked");
		$(this).attr("checked", "checked");
	});

	// 결재요청 모달 - 확인 버튼 이벤트 핸들러
	$("#reg_confirm").on("click", function(){
		let modal = tailwind.Modal.getInstance(document.querySelector("#regModal"));
		if (!confirm("결재문서를 상신하시겠습니까?")) { return; }
		if (($("#forAtrzVO").find("input")).length == 0) {
			alert("결재선을 설정해주세요.");
			modal.hide();
			return;
		}

	   	// 문서 제목 세팅
		let atrzDocSj = $("#reg_atrzDocSj").val();
		$("#atrzDocSj").val(atrzDocSj);
		$("#atrzDocSj").attr("value", atrzDocSj);

		// CKEditor 세팅
		let regex = /<[^>]*>?/g;
		let content = CKEDITOR.instances.editor.getData().replace(regex, "").trim(); // HTML 코드 제거
		console.log(content);
		$("#giveRsn").val(content);
		$("#giveRsn").attr("value", content);

		// 문서 내용 + 결재선 프로필 세팅
		let atrzDocCn = $("#doc_profile")[0].innerHTML;
		console.log(atrzDocCn);
		$("#atrzDocCn").val(atrzDocCn);
		$("#atrzDocCn").attr("value", atrzDocCn);

		jQuery("#frm_doc_content").submit();
		modal.hide();
	});

	// CKEditor 이벤트 핸들러
	CKEDITOR.instances["editor"].on("instanceReady", function(){
		this.document.on("keyup", setGiveRsn);
	});

	// 휴가종류 입력값 세팅
	$("#lvSeCd").on("change", function(e){
		let value = $(e.target).val();
		$(e.target).val(value);
		$(e.target).attr("value", value);
		$("option[value='" + value + "']").attr("selected", "selected");
	});

	// 자동완성 버튼 이벤트 핸들러
	$("#auto").on("click", function(){
		CKEDITOR.instances.editor.setData("<p>개인사정으로 인한 연차 사용</p>");
	});

});

// CKEditor 입력값 세팅
function setGiveRsn() {
	let regex = /<[^>]*>?/g;
	let content = CKEDITOR.instances.editor.getData().replace(regex, "").trim(); // HTML 코드 제거
	console.log(content);
	$("#giveRsn").val(content);
	$("#giveRsn").attr("value", content);
}

// input 태그 추가 함수
function make_ipt(empId, atrzOrdr, atrzSttsCd) {

	let html_1 = `<input type="text" name="atrzVOList[\${atrzOrdr}].sanctnerId" value="\${empId}" class="hidden" />`;
	let html_2 = `<input type="text" name="atrzVOList[\${atrzOrdr}].atrzOrdr" value="\${atrzOrdr + 1}" class="hidden" />`;
	let html_3 = `<input type="text" name="atrzVOList[\${atrzOrdr}].atrzSttsCd" value="\${atrzSttsCd}" class="hidden" />`;

	// 참조일 경우 결재순서를 200으로 설정
	if (atrzSttsCd == "ATRZ07") {
		html_2 = `<input type="text" name="atrzVOList[\${atrzOrdr}].atrzOrdr" value="200" class="hidden" />`;
	}

	$("#forAtrzVO").append(html_1);
	$("#forAtrzVO").append(html_2);
	$("#forAtrzVO").append(html_3);
}

// 직원의 이름과 직책으로 아이디를 검색하는 함수
function searchEmpId(nodes, empInfo) {
	let empId = "";
	nodes.forEach(node => {
		if (node.child == empInfo) {
			empId = node.empId;
		}
	});
	return empId;
}

// 결재선 순서 업데이트 함수
function update_atrz_seq() {
	let arr_atrz_line = $("#tbd_atrz_line").children();
	for (let i = 0; i < arr_atrz_line.length; i++) {
		let arr_td = $(arr_atrz_line[i]).find("td");
		$(arr_td[0]).html(i + 1);
	}
}

// 미리보기, 출력 기능 함수
function previewAndPrint() {
    let printContents = $("#doc").html();
    let originalContents = $("body").html();

    $("body").html(printContents);
    $(".main").css("padding-left", "0");
    window.print();

    $("body").html(originalContents);
    $(".main").css("padding-left", "15%");
    $("#act_document_preview").on("click", previewAndPrint);
}

// 결재선 테이블 생성 함수
function makeAtrzTable(type, arr_name, arr_position, arr_empId) {

	let html = `
		<table class="text-center" style="height: 150px; background: white; margin: 0px; margin-left: 5px; border: 1px solid black; border-image: none; color: black; font-size: 16px; border-collapse: collapse !important;">
			<tbody>
				<tr id="atrz_line_tr_\${type}_1">
					<td rowspan="3" class="font-semibold" style="width: 27px; border: 1px solid black; background: rgb(221, 221, 221); font-size: 16px;">\${type}</td>
					<td style="height: 35px; width: 87px; border: 1px solid black;">\${arr_position[0]}</td>
				</tr>
				<tr id="atrz_line_tr_\${type}_2">
					<td style="height: 80px; width: 87px; border: 1px solid black;" data-value="\${arr_empId[0]}">\${arr_name[0]}</td>
				</tr>
				<tr id="atrz_line_tr_\${type}_3">
					<td style="height: 35px; width: 87px; border: 1px solid black;" data-value="\${arr_empId[0]}_date"></td>
				</tr>
			</tbody>
		</table>
	`;
	$("#atrz_line").append(html);

	// 결재자가 2명 이상일 경우 td 요소 추가
	if (arr_name.length > 1) {
		for (let i = 1; i < arr_name.length; i++) {
			document.getElementById(`atrz_line_tr_\${type}_1`).insertAdjacentHTML("beforeend", `<td style="height: 35px; width: 87px; border: 1px solid black;">\${arr_position[i]}</td>`);
			document.getElementById(`atrz_line_tr_\${type}_2`).insertAdjacentHTML("beforeend", `<td style="height: 80px; width: 87px; border: 1px solid black;" data-value="\${arr_empId[i]}">\${arr_name[i]}</td>`);
			document.getElementById(`atrz_line_tr_\${type}_3`).insertAdjacentHTML("beforeend", `<td style="height: 35px; width: 87px; border: 1px solid black;" data-value="\${arr_empId[i]}_date"></td>`);
		}
	}
}

// 결재 프로필 생성 함수
function makeAtrzProfile(arr_name, profile_arr_position, arr_empId) {

	for (let i = 0; i < arr_name.length; i++) {

		let html = `
			<div class="text-center items-center justify-center mt-4 pb-1 zoom-in">
		        <div class="w-20 h-20 image-fit text-center justify-center items-center ml-auto mr-auto">
		            <img alt="프로필 이미지" class="rounded-full" data-action="zoom" src="/resources/images/emp/\${arr_empId[i]}.jpg">
		        </div>
		        <div class="text-center justify-center mt-3 mb-1">
		            <a id="empNm" href="#" class="font-bold" style="font-size: 18px;" data-value="\${arr_empId[i]}">\${arr_name[i]}</a>
		            <div id="deptJbgd" class="font-semibold mt-1" style="font-size: 16px;">\${profile_arr_position[i]}</div>
		        </div>
		    </div>
		`;
		$("#atrz_line_profile").append(html);
	}
}

</script>






















