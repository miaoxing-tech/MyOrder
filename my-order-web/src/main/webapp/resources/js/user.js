$(document).ready(function() {
	$('#user-table').DataTable({
		"oLanguage": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LANGUAGE,
		"lengthMenu": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_MENU,
		"bStateSave": CONSTANT.DATA_TABLES.DEFAULT_OPTION.STATE_SAVE,
		"bServerSide": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SERVER_SIDE,
		"searching": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SEARCHING,
		"columnDefs": CONSTANT.DATA_TABLES.COLUMN.CHECKBOX,
		"pageLength": CONSTANT.DATA_TABLES.DEFAULT_OPTION.PAGE_LENGTH,
		"select" : CONSTANT.DATA_TABLES.DEFAULT_OPTION.SELECT,
		"ajax" : { //ajax方式向后台发送请求
			"type" : "GET",
			"url" : "getList",
			"data" : function (data) {
				return {};
			},//传递的数据
			"dataSrc": function (res) {
				if (res.status != 0) {
					return {};
				}

				var addResult = function (result, data) {
					var array = [0, data.id, data.username, data.cellphone, data.address, data.wechat, data.level];
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
		var checkedData = $("#user-table").DataTable('checked');
		if (checkedData.length == 0)
			alert("请选择藏品！");
		else {
			alert(checkedData.length);
		}
	})
	$("#addUserBtn").click(function(){
		submitData('addUserForm','user/add',submitCallBack);
	})
});

function submitCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('addUserModal', 'addUserForm');
	refreshTable('user-table');
}