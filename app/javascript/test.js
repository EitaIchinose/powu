// const moment = require("moment");

// $(window).on('load', function() {
//     $.each(gon.event, function(index,value) {
//       var time = new Date(value.start_time)
//       var nowTime = moment(time).format()
//       var tooltipHtml = `
//       <div>
//         <div class="tooltipClose">×</div>
//           <div style="margin: 10px;">
//             <div>
//             予定：${value.title}<br>
//               ${nowTime}<br>
//             </div>
//           </div>
//         </div>
//       </div>`;

//         $(".showTooltip").tooltip({
//             content: tooltipHtml
//         }) 
//     });
// });

//上記・未実装（カレンダー吹き出し機能）

// タブ機能
$(function() {
  $('.tab-btn').on('click', function() {
    var tabWrap = $(this).parents('.tab-wrap');
    var tabBtn = tabWrap.find(".tab-btn");
    var tabContents = tabWrap.find('.tab-contents');
    tabBtn.removeClass('show');
    $(this).addClass('show');
    var elmIndex = tabBtn.index(this);
    tabContents.removeClass('show');
    tabContents.eq(elmIndex).addClass('show');
  });
});