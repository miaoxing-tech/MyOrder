$(document).ready(function() {
	$('#tuanInfo').html("<h3 class='page-header'>团购名称： <u>"+tuan.name+"</u> 团购商品： <u>"+tuan.product+"</u></h1>");
	$('#order-table').DataTable({
		"language": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LANGUAGE,
		"lengthMenu": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_MENU,
		"stateSave": CONSTANT.DATA_TABLES.DEFAULT_OPTION.STATE_SAVE,
		"serverSide": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SERVER_SIDE,
		"searching": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SEARCHING,
		"columns": [{"data":null},{"data":"id"},{"data":"userName"},
		            {"data":"product"},{"data":"brand"},{"data":"comment"},
		            {"data":"price"},{"data":"total"},{"data":"quantity"},
		            {"data":"statusText"},{"data":"tripName"},{"data":"seckillName"},
		            {"data":"tuanName"},{"data":"createTime"}],
		"columnDefs": [{
			targets: 0,
			render: function(data, type, row, meta) {
				return '<input type="checkbox" name="checklist" value="' + meta.row + '" />'
			}
		}],
		"pageLength": CONSTANT.DATA_TABLES.DEFAULT_OPTION.PAGE_LENGTH,
		"lengthChange": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_CHANGE, 
		"select" : CONSTANT.DATA_TABLES.DEFAULT_OPTION.SELECT,
		"ajax" : { //ajax方式向后台发送请求
			"type" : "GET",
			"url" : "getList",
			"data" : function (data) {
				var params = {};
				var searchValue = $("#searchIn").val().trim();
				params["product"] = searchValue;
				params["brand"] = searchValue;
				params["comment"] = searchValue;
				params["tuanID"] = tuan.id;
				return params;
			},//传递的数据
			"dataSrc": function (res) {
				if (res.status != 0) {
					return {};
				}
				return res.data.list;
			},
			"dataType" : "json",
			"order": [[1, "asc"]]
		}
	});
	$("#showAddBtn").click(function(){
		fillSelect("user/getAll", 'id', 'username', "#addOrderForm", 'userID');
		fillSelect("tuan/getAll", 'id', 'name', "#addOrderForm", 'tuanID');
		fillSelect("trip/getAll", 'id', 'name', "#addOrderForm", 'tripID');
		fillSelect("seckill/getAll", 'id', 'name', "#addOrderForm", 'seckillID');
	    $("#addOrderForm select").chosen({
	        no_results_text: "无匹配项",
	        disable_search_threshold: 10,
	        width: "100%"
	      });
	})
	$("#showEditBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择订单！");
		else {
			var users = ajaxResult("get", "json", false, CONSTANT.URL_ROOT + "user/getAll", "");
			var result = "";
			if(users.status == 0){
				$.each(users.data,function(index,content){
					result +="<option value="+content['id']+">"+content['username']+"</option>";
				})
			}
			$("#editOrderForm select[name='userID']").html(result);
			var index = checkedData[0].value;
			var data = $('#order-table').dataTable().fnGetData(index);
			fillForm('#editOrderForm', data);
		}
	})
	$("#addOrderBtn").click(function(){
		submitData('addOrderForm','order/add',addCallBack);
	})
	$("#editOrderBtn").click(function(){
		submitData('editOrderForm','order/edit',editCallBack);
	})
	$('#searchIn').bind('input propertychange', function() {  
		refreshTable('order-table');
	});  
	$("input:checkbox[name='checklist']").click(function(){
		$(this).attr("checked",true);//设置当前选中checkbox的状态为checked
		$(this).siblings().attr("checked",false); //设置当前选中的checkbox同级(兄弟级)其他checkbox状态为未选中
	});
	$("#deleteBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择订单！");
		else {
			var index = checkedData[0].value;
			var data = $('#order-table').dataTable().fnGetData(index);
			ajaxFunc("get","json", true, CONSTANT.URL_ROOT + "order/delete", data, deleteCallBack)
		}
	})
});

function addCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('addOrderModal', '#addOrderForm');
	refreshTable('order-table');
}
function editCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('editOrderModal', '#editOrderForm');
	refreshTable('order-table');
}
function deleteCallBack(msg,t_dom) {
	alert(msg.message);
	refreshTable('order-table');
}