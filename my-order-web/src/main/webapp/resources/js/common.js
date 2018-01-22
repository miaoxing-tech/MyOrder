//遍历表单
$.fn.serializeObject = function() {  
	var o = {};  
	var a = this.serializeArray();  
	$.each(a, function() {  
		if (o[this.name]) {  
			if (!o[this.name].push) {  
				o[this.name] = [ o[this.name] ];  
			}  
			o[this.name].push(this.value || '');  
		} else {  
			o[this.name] = this.value || '';  
		}  
	});  
	return o;  
}; 
//将表单中数据清空 
function clearForm(formId){
	var tagName,type;
	$(formId).each(function(){
		tagName = $(this)[0].tagName;
		type = $(this).attr('type');
		if(tagName=='INPUT'){
			if(type=='radio'){
				$(this).attr('checked',false);
			}else if(type=='checkbox'){
				$(this).attr('checked',false);
			}else{
				$(this).val("");
			}
		}else if(tagName=='SELECT' || tagName=='TEXTAREA'){
			$(this).val("");
		}else{
			$(this).val("");
		}			
	});
}
//ajax请求，带回调函数
function ajaxFunc(t_type,t_dataType,t_async,t_url,t_data,t_func){
	$.ajax({
		type:t_type,
		dataType: t_dataType,
		async:t_async,
		url:t_url,
		data:t_data,
		success:function(msg){
			t_func(msg);
		}
	});
}
//刷新表格
function refreshTable(tableid){
	$("#"+tableid).DataTable().ajax.reload();
};

//把用户提交的数据提交到后台服务器
function submitData(formId, url, t_func) {	
	var params = $("#"+formId).serializeObject();
	var urlAll = CONSTANT.URL_ROOT + url;
	ajaxFunc("post","json",true,urlAll,params,t_func);
}
function alertMsg(msg) {	
	alert(msg);
}
function closeWin(t_dom, formId) {
	clearForm(formId);
	if($("#"+t_dom).parent().is(":hidden")==false)
		$("#"+t_dom).modal("hide");
}
