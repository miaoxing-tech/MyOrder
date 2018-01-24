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

//填写表单数据
function fillForm(formID,jsonStr){
	var obj =jsonStr;
	var key,value,tagName,type,arr;
	for(x in obj){
		key = x;
		value = obj[x];		
		$(formID+" [name='"+key+"'],"+formID+" [name='"+key+"[]']").each(function(){
			tagName = $(this)[0].tagName;
			type = $(this).attr('type');
			if(tagName=='INPUT'){
				if(type=='radio'){
					$(this).attr('checked',$(this).val()==value);
				}else if(type=='checkbox'){
					if((value+"").indexOf(',')>-1){
						arr = value.split(',');
					}else{
						arr = value;
					}
					for(var i =0;i<arr.length;i++){
						if($(this).val()==arr[i]){
							$(this).attr('checked',true);
							break;
						}
					}
				}else{
					$(this).val(value);
				}
			}else if(tagName=='SELECT' || tagName=='TEXTAREA'){
				$(this).val(value);
			}else{
				$(this).val(value);
			}			
		});
	}
}
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
function fillSelect(url,name,value,form,select){
	var data = ajaxResult("get", "json", false, CONSTANT.URL_ROOT + url, "");
	var result = "";
	if(data.status == 0){
		$.each(data.data,function(index,content){
			result +="<option value="+content[name]+">"+content[value]+"</option>";
		})
	}
	$(form+" select[name="+select+"]").html(result);
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
//ajax请求，不带回调函数
function ajaxResult(t_type,t_dataType,t_async,t_url,t_data){		
	var result="";
	$.ajax({
		type:t_type,
		dataType: t_dataType,
		async:t_async,
		url:t_url,
		data:t_data,
		success:function(msg){
		    result=msg;		   
		}
	});	
	return result;
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
