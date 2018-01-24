$(document).ready(function() {
	$('#order-table').DataTable({
		"language": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LANGUAGE,
		"lengthMenu": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_MENU,
		"stateSave": CONSTANT.DATA_TABLES.DEFAULT_OPTION.STATE_SAVE,
		"serverSide": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SERVER_SIDE,
		"searching": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SEARCHING,
		"columnDefs": [{
			targets: 0,
			render: function(data, type, row, meta) {
				return '<input type="checkbox" name="checklist" value="' + meta.row + '" />'
			}
		},{
			targets: [14,15,16,17,18],
			visible: false
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
				return params;
			},//传递的数据
			"dataSrc": function (res) {
				if (res.status != 0) {
					return {};
				}

				var addResult = function (result, data) {
					var array = [0, data.id, data.userName, data.product, 
					             data.brand, data.comment, data.price, 
					             data.total, data.quantity, data.statusText, 
					             data.tripName, data.seckillName, data.tuanName, 
					             data.createTime, data.status, data.tripID, 
					             data.tuanID, data.seckillID, data.userID];
					result.push(array);
					return result;
				};

				var result = [];
				for (var i = 0, ien = res.data.list.length; i < ien; i++) {
					result = addResult(result, res.data.list[i]);
				}
				return result;
			},
			"dataType" : "json",
			"order": [
			          [1, "asc"]
			          ]
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
			var info = {};
			info["id"] = data[1];
			info["product"] = data[3];
			info["brand"] = data[4];
			info["comment"] = data[5];
			info["price"] = data[6];
			info["total"] = data[7];
			info["quantity"] = data[8];
			info["status"] = data[14];
			info["tripID"] = data[15];
			info["tuanID"] = data[16];
			info["seckillID"] = data[17];
			info["userID"] = data[18];
			fillForm('#editOrderForm', info);
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
			var info = {};
			info["id"] = data[1];
			ajaxFunc("get","json", true, CONSTANT.URL_ROOT + "order/delete", info, deleteCallBack)
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