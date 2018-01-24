var CONSTANT = { 
	URL_ROOT : "http://localhost:8888/my-order-web/",
    // datatables常量  
    DATA_TABLES : {  
        DEFAULT_OPTION : { // DataTables初始化选项  
            LANGUAGE : {  
                sProcessing : "加载中...",  
                sLengthMenu : "显示 _MENU_ 项结果",  
                sZeroRecords : "没有匹配结果",  
                sInfo : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
                sInfoEmpty : "显示第 0 至 0 项结果，共 0 项",  
                sInfoFiltered : "(由 _MAX_ 项结果过滤)",  
                sInfoPostFix : "",  
                sSearch : "搜索:",  
                searchPlaceholder : "关键字搜索",  
                sUrl : "",  
                sEmptyTable : "表中数据为空",  
                sLoadingRecords : "载入中...",  
                sInfoThousands : ",",  
                oPaginate : {  
                    sFirst : "首页",  
                    sPrevious : "上页",  
                    sNext : "下页",  
                    sLast : "末页"  
                },  
                oAria : {  
                    sSortAscending : ": 以升序排列此列",  
                    sSortDescending : ": 以降序排列此列"  
                }  
            },  
            // 禁用自动调整列宽  
            autoWidth : false,  
            // 为奇偶行加上样式，兼容不支持CSS伪类的场合  
            stripeClasses : [ "odd", "even" ],  
            // 取消默认排序查询,否则复选框一列会出现小箭头  
            order : [],  
            // 隐藏加载提示,自行处理  
            processing : false,  
            // 启用服务器端分页  
            SERVER_SIDE : true,  
            // 禁用原生搜索  
            SEARCHING : false,
            STATE_SAVE : true,
            //是否显示每页大小的下拉框
            LENGTH_CHANGE : false,
            SELECT : {
				style : 'os',
				selector : 'td:first-child'
			},
            LENGTH_MENU:[
                        [10, 20, -1],
                        [10, 20, "全部"]
                    ],
            PAGE_LENGTH:10
        },  
        COLUMN : {  
            // 复选框单元格  
            CHECKBOX : [{
            	targets: 0,
                render: function(data, type, row, meta) {
                    return '<input type="checkbox" name="checklist" value="' + meta.row + '" />'
                }
            }]
        },  
        // 回调  
        CALLBACKS : {  
            // 表格绘制前的回调函数  
            PREDRAWCALLBACK : function(settings) {  
                if (settings.oInit.scrollX == '100%') {  
                    // 给表格添加css类，处理scrollX : true出现边框问题  
                    $(settings.nTableWrapper).addClass('dataTables_DTS');  
                }  
            },  
            INITCOMPLETE : function(settings, json) {  
                if (settings.oInit.scrollX == '100%' && $(settings.nTable).parent().innerWidth() - $(settings.nTable).outerWidth() > 5) {  
                    $(settings.nScrollHead).children().width('100%');  
                    $(settings.nTHead).parent().width('100%');  
                    $(settings.nTable).width('100%');  
                }  
            },  
            // 表格每次重绘回调函数  
            DRAWCALLBACK : function(settings) {  
                if ($(settings.aoHeader[0][0].cell).find(':checkbox').length > 0) {  
                    // 取消全选  
                    $(settings.aoHeader[0][0].cell).find(':checkbox').prop('checked', false);  
                }  
                // 高亮显示当前行  
                $(settings.nTable).find("tbody tr").click(function(e) {  
                    $(e.target).parents('table').find('tr').removeClass('warning');  
                    $(e.target).parents('tr').addClass('warning');  
                });  
            }  
        },  
        // 常用render可以抽取出来，如日期时间、头像等  
        RENDER : {  
            ELLIPSIS : function(data, type, row, meta) {  
                data = data || "";  
                return '<span title="' + data + '">' + data + '</span>';  
            }  
        }  
          
    }  
  
};  
  
if ($.fn.dataTable) {  
    $.extend($.fn.dataTable.defaults, {  
        processing : true,  
        order: [],  
        paging : true,  
        searching: true,  
        language : CONSTANT.DATA_TABLES.DEFAULT_OPTION.LANGUAGE,  
        preDrawCallback : CONSTANT.DATA_TABLES.CALLBACKS.PREDRAWCALLBACK,  
        initComplete : CONSTANT.DATA_TABLES.CALLBACKS.INITCOMPLETE,  
        drawCallback : CONSTANT.DATA_TABLES.CALLBACKS.DRAWCALLBACK  
    });  
}  