<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
       <nav class="side-nav">
          <ul>
              <li>
                  <a href="/mem/vote/inprogrsvote" class="side-menu">
                      <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
                      <div class="side-menu__title"> 진행 중 투표 </div>
                  </a>
              </li>
              <li>
                  <a href="/mem/vote/votelist" class="side-menu">
                      <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
                      <div class="side-menu__title"> 투표 목록 </div>
                  </a>
              </li>
          </ul>
      </nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
<h5 class="text-lg font-medium leading-none mt-0">전자투표 > 진행 중 투표</h5>
   <div class="box" style="margin-top: 10px;"><br/>
      <div class="flex">
         <div class="center"style="width: 400px;">
            <div class="box" style="margin-left: 30px;">
                   <div class="flex flex-col lg:flex-row items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
                       <div class="lg:ml-2 lg:mr-auto text-center lg:text-left mt-3 lg:mt-0">
                           <h2 class="font-medium">이경민</h2>
                           <div class="text-slate-500 text-xs mt-0.5">경력 : 공무원 5급</div>
                           <div class="text-slate-500 text-xs mt-0.5">110동 2505호</div>
                       </div>
                       <div class="flex -ml-2 lg:ml-0 lg:justify-end mt-3 lg:mt-0">
                           <a href="" class="w-8 h-8 rounded-full flex items-center justify-center border dark:border-darkmode-400 ml-2 text-slate-400 zoom-in tooltip"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="twitter" class="lucide lucide-twitter w-3 h-3 fill-current" data-lucide="twitter"><path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5 0-.28-.03-.56-.08-.83A7.72 7.72 0 0023 3z"></path></svg> </a>
                       </div>
                   </div>
                   <div class="flex flex-wrap lg:flex-nowrap items-center justify-center p-5">
                       <div class="w-full lg:w-1/2 mb-4 lg:mb-0 mr-auto">
                           <div class="flex text-slate-500 text-xs">
                               <div class="mr-auto">투표율</div>
                               <div id="votePercentage">44%</div>
                           </div>
                           <div class="progress h-1 mt-2">
                               <div class="progress-bar w-1/4 bg-primary" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                       </div>
                        <button id="voteBtn1" type="button" class="btn3 active py-1 px-2 mr-2">투표하기</button>
                   </div>
            </div>
            <div class="box" style="margin-left: 30px; margin-top: 20px;">
                   <div class="flex flex-col lg:flex-row items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
                       <div class="lg:ml-2 lg:mr-auto text-center lg:text-left mt-3 lg:mt-0">
                           <h2 class="font-medium">최수영</h2>
                           <div class="text-slate-500 text-xs mt-0.5">경력 : 한국타이어 20년</div>
                           <div class="text-slate-500 text-xs mt-0.5">103동 1303호</div>
                       </div>
                       <div class="flex -ml-2 lg:ml-0 lg:justify-end mt-3 lg:mt-0">
                           <a href="" class="w-8 h-8 rounded-full flex items-center justify-center border dark:border-darkmode-400 ml-2 text-slate-400 zoom-in tooltip"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="twitter" class="lucide lucide-twitter w-3 h-3 fill-current" data-lucide="twitter"><path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5 0-.28-.03-.56-.08-.83A7.72 7.72 0 0023 3z"></path></svg> </a>
                       </div>
                   </div>
                   <div class="flex flex-wrap lg:flex-nowrap items-center justify-center p-5">
                       <div class="w-full lg:w-1/2 mb-4 lg:mb-0 mr-auto">
                           <div class="flex text-slate-500 text-xs">
                               <div class="mr-auto">투표율</div>
                               <div>28%</div>
                           </div>
                           <div class="progress h-1 mt-2">
                               <div class="progress-bar w-1/4 bg-primary" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                       </div>
                       <button id="voteBtn2" type="button" class="btn2 active py-1 px-2 mr-2">투표하기</button>
                   </div>
            </div>
            <div class="box" style="margin-left: 30px; margin-top: 20px;">
                   <div class="flex flex-col lg:flex-row items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
                       <div class="lg:ml-2 lg:mr-auto text-center lg:text-left mt-3 lg:mt-0">
                           <h2 class="font-medium">안희건</h2>
                           <div class="text-slate-500 text-xs mt-0.5">경력 : 개발자 13년</div>
                           <div class="text-slate-500 text-xs mt-0.5">105동 1705호</div>
                       </div>
                       <div class="flex -ml-2 lg:ml-0 lg:justify-end mt-3 lg:mt-0">
                           <a href="" class="w-8 h-8 rounded-full flex items-center justify-center border dark:border-darkmode-400 ml-2 text-slate-400 zoom-in tooltip"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="twitter" class="lucide lucide-twitter w-3 h-3 fill-current" data-lucide="twitter"><path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5 0-.28-.03-.56-.08-.83A7.72 7.72 0 0023 3z"></path></svg> </a>
                       </div>
                   </div>
                   <div class="flex flex-wrap lg:flex-nowrap items-center justify-center p-5" style="margin-bottom: 25px;">
                       <div class="w-full lg:w-1/2 mb-4 lg:mb-0 mr-auto">
                           <div class="flex text-slate-500 text-xs">
                               <div class="mr-auto">투표율</div>
                               <div>27%</div>
                           </div>
                           <div class="progress h-1 mt-2">
                               <div class="progress-bar w-1/4 bg-primary" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                       </div>
                       <button id="voteBtn3" type="button" class="btn3 active py-1 px-2 mr-2">투표하기</button>
                   </div>
            </div>
         </div>
         <div style="position: relative; z-index: 10; margin-top: 100px; margin-left: 100px;">
             <h5 class="btn btn-outline-success w-120 inline-block mr-1" style="position: absolute; top: -100px; transform: translateX(-5%); text-align: center;">투표 기간: 2023-07-20 12:00:00 ~ 2023-07-23 12:00:00</h5>
             <div id="chart-container" class="tab-content px-5 pb-5">
                 <canvas id="donut-chart" width="400" height="300"></canvas>
             </div>
         </div>
      </div>
   </div>
</div>
<!-- END: Body -->
<style>
#chart {
   position: relative;
   height: 100px;
}
.legend-container {
   position: absolute;
   top: 50%;
   right: 10px;
   transform: translateY(-50%);
   display: flex;
   flex-direction: column;
   align-items: flex-end;
   margin-bottom: 20px;

}
.legend-item {
   display: flex;
   align-items: center;
   margin-bottom: 5px;
}

.legend-color-box {
   width: 5px;
   height: 5px;
   margin-right: 5px;
}

.legend-text {
   margin-top: -2px;
}

.chart-container {
   width: 400px;
   height: 400px;
   border: 1px solid #ddd;
   padding: 5px;
   border-radius: 4px;
}

.active {
   color: white;
   background-color: #054232;
}

.inactive {
   background-color: gray;
}



</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
   $("#main_menu").html("전자투표");
   $("#sub_menu").html("진행 중 투표");

   let title = $("#sub_menu").text();
   let arr_menu = $(".side-menu__title");
   let cur_menu = null;
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


   let centerText = "투표";
   let voteChart1; // 차트 객체를 전역 변수로 선언

   if ($("#donut-chart").length) {
     let ctx1 = $("#donut-chart")[0].getContext("2d");

     // 최초에 차트를 생성
     createChart(ctx1, [44, 28, 27]);
   }

   // 차트 생성 함수
   function createChart(ctx, data) {
     voteChart1 = new Chart(ctx, {
       type: "doughnut",
       data: {
         labels: ["이경민", "최수영", "안희건"],
         datasets: [{
           data: data,
           backgroundColor: [
            "rgb(204, 178, 255, 0.9)",
            "rgb(165, 223, 223, 0.9)",
            "rgb(255, 207, 159, 0.9)"
           ],
           hoverBackgroundColor: [
              "rgb(204, 178, 255, 0.9)",
              "rgb(165, 223, 223, 0.9)",
               "rgb(255, 207, 159, 0.9)"
           ],
           borderWidth: 5,
           borderColor: "#fff"
         }]
       },
       options: {
         maintainAspectRatio: false,
         plugins: {
           legend: {
             position: "right",
             labels: {
               color: "rgba(158, 158, 158, 0.8)"
             }
           },
           doughnutlabel: {
             labels: [{
               text: centerText,
               font: {
                 size: '30'
               },
               position: 'center'
             }]
           }
         },
         cutoutPercentage: 80,
         cutout: "80%",
         layout: {
           padding: {
             right: 20
           }
         }
       }
     });
   }

   function updateChart(dataIndex, newDataValue) {
     if ($("#donut-chart").length) {
       // 이전 차트 제거
       if (voteChart1) {
         voteChart1.destroy();
       }

       // 데이터 변경
       const data = [45, 28, 27];
       data[dataIndex] = newDataValue;

       // 새로운 차트 생성
       createChart($("#donut-chart")[0].getContext("2d"), data);
     }
   }



 // 투표 버튼 클릭 이벤트 핸들러
   // 초기 투표율 값 설정
   var votePercentage = 44;

   // 버튼 클릭 시 실행할 함수
   jQuery("#voteBtn1").on("click", function() {
       if (confirm("[이경민] 투표하시겠습니까?")) {
           jQuery(".btn2, .btn3").prop("disabled", true).removeClass("active").addClass("inactive");
           jQuery(this).prop("disabled", false).removeClass("inactive").addClass("active");

           // 투표율 증가
           votePercentage += 1;

           // 투표율 업데이트
           updateVotePercentage();

           // 차트 업데이트 - 첫번째 배열에 해당하는 데이터 업데이트 (index 0)
           updateChart(0, votePercentage);
       }
   });

   // votePercentage를 업데이트하는 함수
   function updateVotePercentage() {
       var votePercentageElement = jQuery("#votePercentage");
       votePercentageElement.text(votePercentage + "%");
   }

    jQuery("#voteBtn2").on("click", function() {
      if (confirm("[최수영] 투표하시겠습니까??")) {
           jQuery(".btn1, .btn3").prop("disabled", true).removeClass("active").addClass("inactive");
           jQuery(this).prop("disabled", false).removeClass("inactive").addClass("active");

        // 차트 업데이트 - 두번째 배열에 해당하는 데이터 업데이트 (index 1)
        updateChart(1, 28);
      }
    });

    jQuery("#voteBtn3").on("click", function() {
      if (confirm("[안희건] 투표하시겠습니까?")) {
         jQuery(".btn1, .btn2").prop("disabled", true).removeClass("active").addClass("inactive");
           jQuery(this).prop("disabled", false).removeClass("inactive").addClass("active");

        // 차트 업데이트 - 세번째 배열에 해당하는 데이터 업데이트 (index 2)
        updateChart(2, 28);
      }
    });
});

</script>
