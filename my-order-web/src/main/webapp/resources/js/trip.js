$(document).ready(function() {
	$('#trip-table').DataTable({
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
		            {"data":"name"},
		            {"data":"destination"},
		            {"data":"start"},
		            {"data":"end"},
		            {"data":"comment"},
		            {"data":null}],
		"columnDefs": [{
        	targets: 0,
            render: function(data, type, row, meta) {
                return '<input type="checkbox" name="checklist" value="' + meta.row + '" />';
            }},{
            targets: 1,
            visible: false
            },{
        	targets: 7,
            render: function(data, type, row, meta) {
                return "<a href='"+CONSTANT.URL_ROOT+"order/trip?id="+data.id+"'>进入</a>";
            }}],
		"ajax" : { //ajax方式向后台发送请求
			"type" : "GET",
			"url" : "getList",
			"data" : function (data) {
				var params = {};
				var searchValue = $("#searchIn").val().trim();
				params["name"] = searchValue;
				params["destination"] = searchValue;
				return params;
			},
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
			alert("请选择行程！");
		else {
			var index = checkedData[0].value;
			var data = $('#trip-table').dataTable().fnGetData(index);
			fillForm('#editTripForm', data);
		}
	})
	$("#addTripBtn").click(function(){
		submitData('addTripForm','trip/add',addCallBack);
	})
	$("#editTripBtn").click(function(){
		submitData('editTripForm','trip/edit',editCallBack);
	})
	$('#searchIn').bind('input propertychange', function() {  
		refreshTable('trip-table');
	});  
	$("input:checkbox[name='checklist']").click(function(){
		$(this).attr("checked",true);//设置当前选中checkbox的状态为checked
		$(this).siblings().attr("checked",false); //设置当前选中的checkbox同级(兄弟级)其他checkbox状态为未选中
	});
	$("#deleteBtn").click(function(){
		var checkedData = $("input:checkbox[name='checklist']:checked");
		if (checkedData.length == 0)
			alert("请选择行程！");
		else {
			var index = checkedData[0].value;
			var data = $('#trip-table').dataTable().fnGetData(index);
			ajaxFunc("get","json", true, CONSTANT.URL_ROOT + "trip/delete", data, deleteCallBack)
		}
	})
});

function addCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('addTripModal', '#addTripForm');
	refreshTable('trip-table');
}
function editCallBack(msg,t_dom) {
	alert(msg.message);
	closeWin('editTripModal', '#editTripForm');
	refreshTable('trip-table');
}
function deleteCallBack(msg,t_dom) {
	alert(msg.message);
	refreshTable('trip-table');
}