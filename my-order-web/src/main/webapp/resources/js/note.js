$(document).ready(function() {
	$('#note-table').DataTable({
		"language": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LANGUAGE,
		"lengthMenu": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_MENU,
		"stateSave": CONSTANT.DATA_TABLES.DEFAULT_OPTION.STATE_SAVE,
		"serverSide": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SERVER_SIDE,
		"searching": CONSTANT.DATA_TABLES.DEFAULT_OPTION.SEARCHING,
		"pageLength": CONSTANT.DATA_TABLES.DEFAULT_OPTION.PAGE_LENGTH,
		"lengthChange": CONSTANT.DATA_TABLES.DEFAULT_OPTION.LENGTH_CHANGE, 
		"select" : CONSTANT.DATA_TABLES.DEFAULT_OPTION.SELECT,
		"columns": [{"data":null},
		            {"data":"id"},
		            {"data":"content"},
		            {"data":"createTime"}],
		"columnDefs": CONSTANT.DATA_TABLES.COLUMN.CHECKBOX,
		"ajax" : { //ajax方式向后台发送请求
			"type" : "GET",
			"url" : "getList",
			"data" : function (data) {
				var params = {};
				var searchValue = $("#searchIn").val().trim();
				params["content"] = searchValue;
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
	$("#showEditBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择备忘录！");
		else {
			var index = checkedData[0].value;
			var data = $('#note-table').dataTable().fnGetData(index);
			fillForm('#editNoteForm', data);
		}
	})
	$("#addNoteBtn").click(function(){
		submitData('addNoteForm','note/add',addCallBack);
	})
	$("#editNoteBtn").click(function(){
		submitData('editNoteForm','note/edit',editCallBack);
	})
	$('#searchIn').bind('input propertychange', function() {  
		refreshTable('note-table');
	});  
	$("input:checkbox[name='checklist']").click(function(){
		$(this).attr("checked",true);//设置当前选中checkbox的状态为checked
		$(this).siblings().attr("checked",false); //设置当前选中的checkbox同级(兄弟级)其他checkbox状态为未选中
	});
	$("#deleteBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择备忘录！");
		else {
			var index = checkedData[0].value;
			var data = $('#note-table').dataTable().fnGetData(index);
			ajaxFunc("get","json", true, CONSTANT.URL_ROOT + "note/delete", data, deleteCallBack)
		}
	})
});

function addCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('addNoteModal', '#addNoteForm');
	refreshTable('note-table');
}
function editCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('editNoteModal', '#editNoteForm');
	refreshTable('note-table');
}
function deleteCallBack(msg,t_dom) {
	alert(msg.message);
	refreshTable('note-table');
}