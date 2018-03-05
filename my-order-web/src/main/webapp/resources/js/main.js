$(document).ready(function() {
	fillNoteList();
	fillBarChart();
});

function fillNoteList() {
	var params = {};
	params["pageSize"] = 10;
	params["pageNumber"] = 1;
	var data = ajaxResult("get", "json", false, CONSTANT.URL_ROOT + "note/getList", params);
	var result = "";
	if(data.status == 0){
		$.each(data.data.list, function(index,content){
			result +="<a href='#' class='list-group-item'><i class='fa fa-flag fa-fw'></i> "
				+content["content"].substr(0, 40)+
				"<span class='pull-right text-muted small'><em>"
				+content["createTime"]+
				"</em></span></a>";
		})
	}
	$("#noteList").html(result);
}
function editCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('editUserModal', '#editUserForm');
	refreshTable('user-table');
}
function deleteCallBack(msg,t_dom) {
	alert(msg.message);
	refreshTable('user-table');
}
function fillBarChart() {
	var ticks = [
	             [0, "2018/01"], [1, "2018/02"], [2, "2018/03"], [3, "2018/04"], [4, "2018/05"], [5, "2018/06"]
	         ];
	var barOptions = {
	        series: {
	            bars: {
	                show: true,
	                barWidth: 0.5,
	                align: "center"
	            }
	        },
	        xaxis: {
	        	ticks:ticks
	        },
	        grid: {
	            hoverable: true
	        },
	        legend: {
	            show: false
	        },
	        tooltip: true,
	        tooltipOpts: {
	            content: "x: %x, y: %y"
	        }
	    };
	    var barData = {
	        label: "bar",
	        data: [
	            [0, 1000],
	            [1, 2000],
	            [2, 3000],
	            [3, 4000],
	            [4, 5000],
	            [5, 6000]
	        ]
	    };
	    $.plot($("#flot-bar-chart"), [barData], barOptions);
}