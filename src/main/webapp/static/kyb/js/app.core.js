function showError(xhr) {
    throw new Error(xhr.responseText);
    //var errordlg = new MyAppDialog(700, 500, { modal: true });
    //var msg = $("<div/>");
    //msg.css("margin", "20px");
    //$(xhr.responseText).appendTo(msg);
    //errordlg.setContent("出错了", msg);
    //errordlg.show();
}

var dlg = new MyAppDialog(460, 320, { modal: true });
var pwddlg = new MyAppDialog(460, 320, { modal: true });
var querydlg = new MyAppDialog(1000, 650);

function showChangepwd() {
    pwddlg.setSize(460, 320);
    pwddlg.setURL("修改密码", "/Manage/User/ChangePassword");
    pwddlg.show();
}
function closeChangepwd() {
    pwddlg.close();
}
function closeDialog() {
    dlg.close();
}

function handlerKeydown(target) {
    if (target == null) {
        $("input").bind("keydown", function (event) {
            if (event.keyCode == $.ui.keyCode.ENTER) {
                if ($(this).closest(".dialog").length > 0) {
                    event.preventDefault();
                    return false;
                }
            }
        });
    } else {
        $(target).find("input").bind("keydown", function (event) {
            if (event.keyCode == $.ui.keyCode.ENTER) {
                if ($(this).closest(".dialog").length > 0) {
                    event.preventDefault();
                    return false;
                }
            }
        });
    }
}

$(document).ready(function () {
    var initHelp = function () {
        var a = $(window).height();
        var b = $("#header").height();
        var scrollTop = $(document).scrollTop();
        var top = b;
        if (scrollTop < b) {
            top = b - scrollTop;
        } else {
            top = 0;
        }
        //帮助文档高度
        var height = a - top - 2;
        $("#helpe").css("top", top);
        $("#helpe").css("height", height);
        var iframe = $("#helpe").find("iframe");
        var iheight = height - iframe.find(".helptitle").height();
        iframe.css("height", iheight);
    };

    //调整浏览器大小时
    $(window).resize(function () {
        initHelp();
    });
    //调整浏览器大小时
    $(window).scroll(function () {
        initHelp();
    });
    //页面初始化时
    setTimeout(function () {
        initHelp();
    }, 10);
    
    //点击页头按钮是隐藏正在显示的iframe
    $(".header .navbar a").click(function () { $("#helpe").hide(); });

    //帮助文档显示
    /*点击滑动*/
    $("#help").click(function () {
        $("#helpe").show().animate({ width: '+0px' }, 500);
		//$("#helpe").hide();
	});
    $("#aa").click(function () {
        $("#helpe").hide();
        $("#helpe").find(".title").html("帮助文档");
        $("#helpe").find("iframe").attr("src", $("#helpe").attr("data-help"));
		$("#helpe").show().animate({ width: '+400px' }, 1000);
	});
    //问题反馈显示
    $("#bb").click(function () {
        $("#helpe").hide();
        $("#helpe").find(".title").html("问题反馈");
        $("#helpe").find("iframe").attr("src", "/Public/Feedback");
        $("#helpe").show().animate({ width: '+400px' }, 1000);
	});
    handlerKeydown(null);
   
    $("ul.radio").each(function () {
        var radio = $(this);

        radio.find("input[type='radio']").click(function (evt) {
            evt.preventDefault();
            $(radio).find("input[type='hidden']").val($(this).val());
            $(radio).find("li.checked").removeClass("checked");
            $(this).parent("li").addClass("checked");
        });
    });
    
    $("[data-form=radio]").radio();
    $("[data-form=checkbox]").checkbox();
    $("[data-form=datepicker]").datepicker({ clearBtn: true });
    $("[data-form=colorpicker]").colorpicker();
    $("[data-form=wycombo]").wycombo();
    $("[data-form=wyupload]").wyupload();
    $("[data-form=datepickerYMD]").dateymd({ });

    //主页查询框的按钮
    $("#btnhomesearch").click(function (evt) {
        evt.preventDefault();
        if ($("#txthomesearch").val().trim().length == 0) {
            //$.messager.alert('操作提示', '请输入患者姓名、拼音、证件号、住院号等！', 'info');
            window.location.href = "/Empi/Empi/List";
        //} if ($("#txthomesearch").val().trim().length != 0) {
        //    location.href = "/Study/Patient/Query?s=" + $("#txthomesearch").val();
        //}
        } if ($("#txthomesearch").val().trim().length != 0 ) {
            window.location.href = "/Empi/Empi/List?s=" + $("#txthomesearch").val();
        }
    });
    $("#txthomesearch").keydown(function (event) {
        if (event.keyCode == $.ui.keyCode.ENTER) {
            event.preventDefault();
            $("#btnhomesearch").click();
            return false;
        }
    });
   
    //页头数字显示
    setHeaderNumber();
    
    //弹出质疑列表数据
    $("#liQuery").click(function (evt) {
        evt.preventDefault();
        window.open("/Study/Patient/CrfHeaderQueryList/0?f=0");
    });

    $("#liFollowup").click(function (evt) {
        evt.preventDefault();
        document.location.href = "/Crm/Followup/List";
    });

    // 弹出我的培训数据
    $("#liTraining").click(function (e) {
        e.preventDefault();
        window.open("/Vdisk/Course/Index");
    });

    //$("#liTaskDistribution").click(function (evt) {
    //    evt.preventDefault();
    //    document.location.href = "/Study/Task/Index";
    //});

    

    //退出系统
    $("#exitsystem").click(function () {
        $.messager.confirm("Crabyter 临床科研数据管理系统", "确认要退出系统吗？", function (r) {
            if (r) {
                location.href = "/Member/Logout";
            }
        });
    });

    $("#globalcustcode").click(function (evt) {
        layer.closeAll('tips');
        evt.preventDefault();
        dlg.setSize(700, 480);
        dlg.setURL("选择客户", "/Public/CustomerSelect?callback=setGlobalCustcode&select=single");
        dlg.show();
    });
});

function setGlobalCustcode(jsonstr) {
    var jsondata = JSON.parse(jsonstr);

    $.ajax({
        type: "post",
        url: "/Public/SetCustcode",
        data: {
            custcode: jsondata.Custcode
        },
        success: function (data) {
            location.href = "/Home/Index/";
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //alert($(xhr.responseText).text());
            showError(xhr);
        }
    });
}

function MyAppDialog(width, height, options) {
    this.setting = {
        width: width,
        height: height,
        //top: "10%",
        closed: true,
        maximizable: false,
        resizable: true,
        modal: true,
        draggable: true,
        onClose: function () {
            $(this).dialog("destroy");
        }
    };

    $.extend(this.setting, options);
}

// 窗口最大化
MyAppDialog.prototype.setMaximizable = function (maximizable) {
    this.setting.maximizable = maximizable;
}

MyAppDialog.prototype.setSize = function (width, height) {
    this.setting.width = width;
    this.setting.height = height;
}

MyAppDialog.prototype.setTop = function (top) {
    //this.setting.top = top;
}

MyAppDialog.prototype.setTitle = function (title) {
    this.setting.title = title;
    if (this.dlg) {
        this.dlg.dialog("setTitle", title);
    }
}

MyAppDialog.prototype.setURL = function (title, url) {
    this.setting.title = title;
    this.setting.content = "<iframe id='iframe' onload='toScroll(this)' frameborder='0' scrolling='auto' class='easyui-layout layout' data-options='fit:true' src='" + url + "'></iframe>";
}

MyAppDialog.prototype.setAjaxURL = function (title, url) {
    this.setting.title = title;
    this.setting.href = url;
}

MyAppDialog.prototype.setContent = function (title, content) {
    this.setting.title = title;
    this.setting.content = content;
}

MyAppDialog.prototype.show = function (options) {
    //if (this.setting.top == undefined) {

        $.extend(this.setting, options);

        if (this.setting.height) {
            if ($(window).height() < this.setting.height) {
                this.setting.top = 0 + $(window).scrollTop();
                this.setting.height = $(window).height();
            } else {
                this.setting.top = undefined;//($(window).height() - this.setting.height) * 0.5;
            }
        }
    //}

    this.dlg = $("<div />").dialog(this.setting).dialog("open");
}

MyAppDialog.prototype.close = function () {
    this.setting.top = undefined;
    if (this.dlg)
        this.dlg.dialog("close");
}

String.prototype.format = function (args) {
    var result = this;
    if (arguments.length > 0) {
        if (arguments.length == 1 && typeof (args) == "object") {
            for (var key in args) {
                if (args[key] != undefined) {
                    var reg = new RegExp("({" + key + "})", "g");
                    result = result.replace(reg, args[key]);
                }
            }
        }
        else {
            for (var i = 0; i < arguments.length; i++) {
                if (arguments[i] != undefined) {
                    //var reg = new RegExp("({[" + i + "]})", "g");//这个在索引大于9时会有问题，谢谢何以笙箫的指出
                    var reg = new RegExp("({)" + i + "(})", "g");
                    result = result.replace(reg, arguments[i]);
                }
            }
        }
    }
    return result;
}

Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, //month
        "d+": this.getDate(),    //day
        "h+": this.getHours(),   //hour
        "m+": this.getMinutes(), //minute
        "s+": this.getSeconds(), //second
        "q+": Math.floor((this.getMonth() + 3) / 3),  //quarter
        "S": this.getMilliseconds() //millisecond
    };
    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1,
			(this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format))
            format = format.replace(RegExp.$1,
				RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
    }
    return format;
}

/*easyui tree扩展*/
$(function () {
    //此处是扩展tree的两个方法. 
    $.extend($.fn.tree.methods, {
        //注：getChildren是获取所有子节点（包括子节点的子节点）
        //获取下一级的子节点
        getLeafChildren: function (jq, params) {
            var nodes = [];
            $(params).next().children().children("div.tree-node").each(function () {
                nodes.push($(jq[0]).tree('getNode', this));
            });
            return nodes;
        },
        //扩展getChecked方法,使其能实心节点也一起返回 
        getCheckedExt: function (jq) {
            var checked = $(jq).tree("getChecked");
            var checkbox2 = $(jq).find("span.tree-checkbox2").parent();
            $.each(checkbox2, function () {
                var node = $(jq[0]).tree('getNode', this);
                checked.push(node);
            });
            return checked;
        },
        //扩展一个能返回实心节点的方法 
        getSolidExt: function (jq) {
            var checked = [];
            var checkbox2 = $(jq).find("span.tree-checkbox2").parent();
            $.each(checkbox2, function () {
                var node = $(jq[0]).tree('getNode', this);
                checked.push(node);
            });
            return checked;
        },
        /**
         * 激活复选框  
         * @param {Object} jq  
         * @param {Object} target  
         */
        enableCheck: function (jq, target) {
            return jq.each(function () {
                var realTarget = null;
                if (typeof target == "string" || typeof target == "number") {
                    var node = $(this).tree("find", target);
                    if (node != null && node != undefined) {
                        realTarget = node.target;
                    }
                } else {
                    realTarget = target;
                }
                if (realTarget == null || realTarget == undefined) return;

                var ckSpan = $(realTarget).find(">span.tree-checkbox");
                if (ckSpan.hasClass('tree-checkbox-disabled0')) {
                    ckSpan.removeClass('tree-checkbox-disabled0');
                } else if (ckSpan.hasClass('tree-checkbox-disabled1')) {
                    ckSpan.removeClass('tree-checkbox-disabled1');
                } else if (ckSpan.hasClass('tree-checkbox-disabled2')) {
                    ckSpan.removeClass('tree-checkbox-disabled2');
                }
            });
        },
        /**
         * 禁用复选框  
         * @param {Object} jq  
         * @param {Object} target  
         */
        disableCheck: function (jq, target) {
            return jq.each(function () {
                var realTarget = null;
                var that = this;
                var state = $.data(this, 'tree');
                var opts = state.options;
                if (typeof target == "string" || typeof target == "number") {
                    var node = $(this).tree("find", target);
                    if (node != null && node != undefined) {
                        realTarget = node.target;
                    }
                } else {
                    realTarget = target;
                }
                if (realTarget == null || realTarget == undefined) return;

                var ckSpan = $(realTarget).find(">span.tree-checkbox");
                ckSpan.removeClass("tree-checkbox-disabled0").removeClass("tree-checkbox-disabled1").removeClass("tree-checkbox-disabled2");
                if (ckSpan.hasClass('tree-checkbox0')) {
                    ckSpan.addClass('tree-checkbox-disabled0');
                } else if (ckSpan.hasClass('tree-checkbox1')) {
                    ckSpan.addClass('tree-checkbox-disabled1');
                } else {
                    ckSpan.addClass('tree-checkbox-disabled2')
                }
                if (!state.resetClick) {
                    $(this).unbind('click').bind('click', function (e) {
                        var tt = $(e.target);
                        var node = tt.closest('div.tree-node');
                        if (!node.length) { return; }
                        if (tt.hasClass('tree-hit')) {
                            $(this).tree("toggle", node[0]);
                            return false;
                        } else if (tt.hasClass('tree-checkbox')) {
                            if (tt.hasClass('tree-checkbox-disabled0') || tt.hasClass('tree-checkbox-disabled1') || tt.hasClass('tree-checkbox-disabled2')) {
                                $(this).tree("select", node[0]);
                            } else {
                                if (tt.hasClass('tree-checkbox1')) {
                                    $(this).tree('uncheck', node[0]);
                                } else {
                                    $(this).tree('check', node[0]);
                                }
                                return false;
                            }
                        } else {
                            $(this).tree("select", node[0]);
                            opts.onClick.call(this, $(this).tree("getNode", node[0]));
                        }
                        e.stopPropagation();
                    });
                }

            });
        }
    });
});

/*eayui扩展，layout折叠后显示数据源*/
(function ($) {
    var buttonDir = { north: 'down', south: 'up', east: 'left', west: 'right' };
    $.extend($.fn.layout.paneldefaults, {
        onBeforeCollapse: function () {
            /**/
            var popts = $(this).panel('options');
            var dir = popts.region;
            var btnDir = buttonDir[dir];
            if (!btnDir) return false;

            setTimeout(function () {
                var pDiv = $('.layout-button-' + btnDir).closest('.layout-expand').css({
                    textAlign: 'center', lineHeight: '18px', fontWeight: 'bold'
                });

                if (popts.title) {
                    var vTitle = popts.title;
                    if (dir == "east" || dir == "west") {
                        var vTitle = popts.title.split('').join('<br/>');
                        pDiv.find('.panel-body').html(vTitle);
                    } else {
                        $('.layout-button-' + btnDir).closest('.layout-expand').find('.panel-title')
                        .css({ textAlign: 'left' })
                        .html(vTitle)
                    }

                }
            }, 100);

        }
    });
})(jQuery);

//禁止右键、复制功能
(function ($) {
    $.fn.ctrlCmd = function (key) {

        var allowDefault = true;

        if (!$.isArray(key)) {
            key = [key];
        }

        return this.keydown(function (e) {
            for (var i = 0, l = key.length; i < l; i++) {
                if (e.keyCode === key[i].toUpperCase().charCodeAt(0) && e.metaKey) {
                    allowDefault = false;
                }
            };
            return allowDefault;
        });
    };


    $.fn.disableSelection = function () {

        this.ctrlCmd(['a', 'c']);

        return this.attr('unselectable', 'on')
                   .css({
                       '-moz-user-select': '-moz-none',
                       '-moz-user-select': 'none',
                       '-o-user-select': 'none',
                       '-khtml-user-select': 'none',
                       '-webkit-user-select': 'none',
                       '-ms-user-select': 'none',
                       'user-select': 'none'
                   })
                   .bind('selectstart', false);
    };

})(jQuery);

var APP = {
    _msg: {}, //alert message
    _set: {
        loginUrl: "", //session timeout
        loginTitle: "", //if loginTitle open a login dialog
        debug: true
    },
    msg: function (key, args) {
        var _format = function (str, args) {
            args = args || [];
            var result = str || "";
            for (var i = 0; i < args.length; i++) {
                result = result.replace(new RegExp("\\{" + i + "\\}", "g"), args[i]);
            }
            return result;
        }
        return _format(this._msg[key], args);
    },
    debug: function (msg) {
        if (this._set.debug) {
            if (typeof (console) != "undefined") console.log(msg);
            else alert(msg);
        }
    }
};

// 获取长度为len的随机字符串  
function getRandomString(len) {
    len = len || 32;
    var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678'; // 默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1  
    var maxPos = $chars.length;
    var pwd = '';
    for (i = 0; i < len; i++) {
        pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
    }
    return pwd;
}

function setCookie(name, value) {
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
//读取COOKIES
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg)) return unescape(arr[2]);
    else return null;
}
//删除COOKIES
function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

//日期格式判断
function isDate(datestr) {
    try {
        var result = datestr.match(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/);

        if (result == null)
            return false;
        var d = new Date(result[1], result[3] - 1, result[4]);
        return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3] && d.getDate() == result[4]);
    } catch (e) {
        return false;
    }
}

//页头相关数字显示--总数
function setHeaderNumber() {
    if ($("#spanAllcount").size() == 0) return;

    var allcount = 0;
    $.ajax({
        type: "post",
        url: "/Public/GetAllCount",
        success: function (e) {
            //菜单权限判断 
            if (e.study || e.crm) {
                $("#liNOMessage").hide();
                //$("#ulNumber").show();
                $("#spanAllcount").show();
                if (e.study && parseInt(e.query) > 0) {
                    allcount += parseInt(e.query);
                    $("#spanQuery").html(e.query);
                    $("#spanQuery").show();
                    $("#liQuery").show();
                }
                else {
                    $("#liQuery").hide();
                    $("#spanQuery").hide();
                    $("#spanQuery").html("0");
                }
                if (e.crm && e.follow > 0) {
                    allcount += parseInt(e.follow);
                    $("#spanFollowup").html(e.follow);
                    $("#spanFollowup").show();
                    $("#liFollowup").show();
                }
                else {
                    $("#liFollowup").hide();
                    $("#spanFollowup").hide();
                    $("#spanFollowup").html("0");
                }
                if (parseInt(e.traing) > 0) {
                    allcount += parseInt(e.traing);
                    $("#spanTraining").html(e.traing);
                    $("#spanTraining").show();
                    $("#liTraining").show();
                }
                else {
                    $("#liTraining").hide();
                    $("#spanTraining").hide();
                    $("#spanTraining").html("0");
                }

                allcount += e.task.TaskDistributionCount + e.task.TaskInputCount + e.task.TaskCheckCount;

                if (allcount == 0) {
                    $("#liNOMessage").show();
                    $("#spanAllcount").hide();
                }

                $("#spanTask").html(e.task.TaskDistributionCount + e.task.TaskInputCount + e.task.TaskCheckCount);
                $("#spanTaskDistribution").html(e.task.TaskDistributionCount);
                $("#spanTaskInput").html(e.task.TaskInputCount);
                $("#spanTaskCheck").html(e.task.TaskCheckCount);

                //测试阶段---全部放开 2016-4-7
                //5-26
                //$("#liTaskDistribution").find('a').attr('href', '/Study/Task/Index?type=1');
                //$("#liTaskInput").find('a').attr('href', '/Study/Task/Index?type=0');

                if (e.task.CanInput) {//录入任务
                    $("#liTaskInput").find('a').attr('href', '/Study/Task/Index?type=0');
                }
                if (e.task.CanPublish) {
                    $("#liTaskDistribution").find('a').attr('href', '/Study/Task/Index?type=1');
                }

                
                $("#spanAllcount").html(allcount);
            }
            else {
                $("#spanAllcount").hide();
                //$("#ulNumber").hide();
                $("#liNOMessage").show();
            }
        }
    });
}

//表示全局唯一标识符 (GUID)。
function Guid(g) {
    var arr = new Array(); //存放32位数值的数组

    if (typeof (g) == "string") { //如果构造函数的参数为字符串
        InitByString(arr, g);
    }
    else {
        InitByOther(arr);
    }

    //返回一个值，该值指示 Guid 的两个实例是否表示同一个值。
    this.Equals = function (o) {
        if (o && o.IsGuid) {
            return this.ToString() == o.ToString();
        }
        else {
            return false;
        }
    }

    //Guid对象的标记
    this.IsGuid = function () { }
    //返回 Guid 类的此实例值的 String 表示形式。
    this.ToString = function (format) {
        if (typeof (format) == "string") {
            if (format == "N" || format == "D" || format == "B" || format == "P") {
                return ToStringWithFormat(arr, format);
            }
            else {
                return ToStringWithFormat(arr, "D");
            }
        }
        else {
            return ToStringWithFormat(arr, "D");
        }
    }

    //由字符串加载
    function InitByString(arr, g) {
        g = g.replace(/\{|\(|\)|\}|-/g, "");
        g = g.toLowerCase();

        if (g.length != 32 || g.search(/[^0-9,a-f]/i) != -1) {
            InitByOther(arr);
        }
        else {
            for (var i = 0; i < g.length; i++) {
                arr.push(g[i]);
            }
        }
    }

    //由其他类型加载
    function InitByOther(arr) {
        var i = 32;
        while (i--) {
            arr.push("0");
        }
    }

    /*
    根据所提供的格式说明符，返回此 Guid 实例值的 String 表示形式。
    N  32 位： xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    D  由连字符分隔的 32 位数字 xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
    B  括在大括号中、由连字符分隔的 32 位数字：{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}
    P  括在圆括号中、由连字符分隔的 32 位数字：(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    */
    function ToStringWithFormat(arr, format) {
        switch (format) {
            case "N":
                return arr.toString().replace(/,/g, "");
            case "D":
                var str = arr.slice(0, 8) + "-" + arr.slice(8, 12) + "-" + arr.slice(12, 16) + "-" + arr.slice(16, 20) + "-" + arr.slice(20, 32);
                str = str.replace(/,/g, "");
                return str;
            case "B":
                var str = ToStringWithFormat(arr, "D");
                str = "{" + str + "}";
                return str;
            case "P":
                var str = ToStringWithFormat(arr, "D");
                str = "(" + str + ")";
                return str;
            default:
                return new Guid();
        }
    }
}

//Guid 类的默认实例，其值保证均为零。

Guid.Empty = new Guid();
//初始化 Guid 类的一个新实例。

Guid.NewGuid = function () {
    var g = "";
    var i = 32;
    while (i--) {
        g += Math.floor(Math.random() * 16.0).toString(16);
    }

    return new Guid(g);
}

function beforeFrameHtmlUnload() {
    var a = beforeFrameHtmlUnload._oFuncs, b;
    for (var c in a) {
        b = (typeof a[c] == "function") && a[c]();
        if (b) {
            return b;
        }
    }
}
beforeFrameHtmlUnload.add = function (b, a) {
    beforeFrameHtmlUnload._oFuncs[b] = a;
};
beforeFrameHtmlUnload._oFuncs = {};
beforeFrameHtmlUnload.remove = function (a) {
    delete beforeFrameHtmlUnload._oFuncs[a];
};

//todo:bug146 20160119 by yuxb 自动生成不重复的用户名
GetUniqeUserName = function (username) {
    var ret;
    $.ajax({
        type: "post",
        url: "/Manage/User/GenerateUniqueUserName",
        data: {
            username: username
        },
        async:false,
        success: function (data) {
            ret = data;
        }
    });
    return ret;
};


//终端浏览器访问课题病例页面可滑动
function toScroll(obj) {
    //判断访问终端
    var browser = {
        versions: function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            return {
                trident: u.indexOf('Trident') > -1, //IE内核
                presto: u.indexOf('Presto') > -1, //opera内核
                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1,//火狐内核
                mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                android: u.indexOf('Android') > -1 || u.indexOf('Adr') > -1, //android终端
                iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
                iPad: u.indexOf('iPad') > -1, //是否iPad
                webApp: u.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
                weixin: u.indexOf('MicroMessenger') > -1, //是否微信 （2015-01-22新增）
                qq: u.match(/\sQQ/i) == " qq" //是否QQ
            };
        }(),
        language: (navigator.browserLanguage || navigator.language).toLowerCase()
    }

    if (browser.versions.iPad) {
        // $(obj).parent().css({ "-webkit-overflow-scrolling": "touch", "overflow": "auto" });
        $(obj).parent().addClass("sy-iframe-scroll");
    }
}

//判断是否访问终端浏览器
var browserIpad = {
    versions: function () {
        var u = navigator.userAgent, app = navigator.appVersion;
        return {
            trident: u.indexOf('Trident') > -1, //IE内核
            presto: u.indexOf('Presto') > -1, //opera内核
            webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
            gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1,//火狐内核
            mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
            ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
            android: u.indexOf('Android') > -1 || u.indexOf('Adr') > -1, //android终端
            iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
            iPad: u.indexOf('iPad') > -1, //是否iPad
            webApp: u.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
            weixin: u.indexOf('MicroMessenger') > -1, //是否微信 （2015-01-22新增）
            qq: u.match(/\sQQ/i) == " qq" //是否QQ
        };
    }(),
    language: (navigator.browserLanguage || navigator.language).toLowerCase()
}