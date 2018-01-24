$(document).ready(function() {
	$('#seckill-table').DataTable({
		"language": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LANGUAGE,
		"lengthMenu": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_MENU,
		"stateSave": CONSTANT.DATA_TABLES.DEFAULT_OPTION.STATE_SAVE,
		"serverSide": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SERVER_SIDE,
		"searching": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SEARCHING,
		"columnDefs": CONSTANT.DATA_TABLES.COLUMN.CHECKBOX,
		"pageLength": CONSTANT.DATA_TABLES.DEFAULT_OPTION.PAGE_LENGTH,
		"lengthChange": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_CHANGE, 
		"select" : CONSTANT.DATA_TABLES.DEFAULT_OPTION.SELECT,
		"ajax" : { //ajax方式向后台发送请求
			"type" : "GET",
			"url" : "getList",
			"data" : function (data) {
				var params = {};
				var searchValue = $("#searchIn").val().trim();
				params["name"] = searchValue;
				return params;
			},//传递的数据
			"dataSrc": function (res) {
				if (res.status != 0) {
					return {};
				}

				var addResult = function (result, data) {
					var array = [0, data.id, data.name, data.start, data.end, data.comment];
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
	$("#showEditBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择秒杀！");
		else {
			var index = checkedData[0].value;
			var data = $('#seckill-table').dataTable().fnGetData(index);
			var info = {};
			info["id"] = data[1];
			info["name"] = data[2];
			info["start"] = data[4];
			info["end"] = data[5];
			info["comment"] = data[6];
			fillForm('#editSeckillForm', info);
		}
	})
	$("#addSeckillBtn").click(function(){
		submitData('addSeckillForm','seckill/add',addCallBack);
	})
	$("#editSeckillBtn").click(function(){
		submitData('editSeckillForm','seckill/edit',editCallBack);
	})
	$('#searchIn').bind('input propertychange', function() {  
		refreshTable('seckill-table');
	});  
	$("input:checkbox[name='checklist']").click(function(){
		$(this).attr("checked",true);//设置当前选中checkbox的状态为checked
		$(this).siblings().attr("checked",false); //设置当前选中的checkbox同级(兄弟级)其他checkbox状态为未选中
	});
	$("#deleteBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择秒杀！");
		else {
			var index = checkedData[0].value;
			var data = $('#seckill-table').dataTable().fnGetData(index);
			var info = {};
			info["id"] = data[1];
			ajaxFunc("get","json", true, CONSTANT.URL_ROOT + "seckill/delete", info, deleteCallBack)
		}
	})
});

function addCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('addSeckillModal', '#addSeckillForm');
	refreshTable('seckill-table');
}
function editCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('editSeckillModal', '#editSeckillForm');
	refreshTable('seckill-table');
}
function deleteCallBack(msg,t_dom) {
	alert(msg.message);
	refreshTable('seckill-table');
}