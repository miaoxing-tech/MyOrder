	//var dataStr = '${data}';
	//var data = $.parseJSON(dataStr);
$(document).ready(function() {
	fillNoteList();
	
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