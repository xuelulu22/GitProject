//编辑对话框
var dlg = new MyAppDialog(900, 600);
var studyId = 0;
var studyPatientId = 0;
var armId = 0;
var tabmap = {};
var currentchildwindow = null;
var homecrfwin = null;
var homesvopwin = null;

//关闭对话框
function closeDialog(reload) {
    dlg.close();

    if (reload)
        loadCRFGrid();
}

beforeFrameHtmlUnload.add("crfform", function () {
    var c = false;
    $(".crfiframe").each(function () {
        if (this.contentWindow.ischanged && !this.contentWindow.setdefaultval) {
            c = true;
            return false;
        }
    });
    if (c) {
        return "数据还没有保存，确认要离开吗？";
    }
});

$(function() {
    studyId = $("#Study_id").val();
    studyPatientId = $("#Study_patient_id").val();
    $('#tabs').tabs({
        onBeforeClose: function(title) {
            var target = $('#tabs').tabs("getTab", title);
            var iframe = target.find("iframe").get(0);
            if (iframe.contentWindow.ischanged && !iframe.contentWindow.setdefaultval) {
                return confirm("数据还没有保存，确认要离开吗？");
            }
        },
        //切换tabs时无需重新加载数据源
        //因为当前数据源只跟病例有关
        //2016-6-24 戴
        //onSelect: function (title) {
        //    var currenttab = $('#tabs').tabs("getTab", title);
        //    var framewin = currenttab.find("iframe").get(0).contentWindow;
        //    var $visit_id = $(framewin.document).find("#Visit_id");
        //    if ($visit_id.size() && datasource.window.tabsRefresh) {
        //        datasource.window.tabsRefresh($visit_id.val());
        //    }
        //}
    });

    //CRF Tree
    loadCRFTree();

    $("#crftreepanel").panel({
        tools: "#crftools"
    });

    //修改病例状态
    $(".changestatus").click(function() {
        var newstatus = $(this).attr("data-status");
        var message = "确认要" + $(this).attr("data-title") + "该病例吗？";
        if ($(this).attr("data-title") === "退出" || $(this).attr("data-title") === "剔除") {
            message = message + $(this).attr("data-title") + "后该病例将无法再做任何操作";
        }
        $.messager.confirm("确认", message, function(result) {
            if (result) {
                updatePatient($(this), newstatus);
            }
        });
    });

    //首页
    var content = '<iframe id="crfindex" data-nodeid="' + indexurlnodeid + '" onload="toScroll(this)"  scrolling="auto" frameborder="0"  src="' + indexurl + '" style="width:100%;height:100%;"></iframe>';
    $('#tabs').tabs('add', {
        title: indextitle,
        width: "auto",
        hight: "auto",
        content: content,
        fit: false,
        closable: false
    });
    if (tabmap[indexurlnodeid] == undefined || tabmap[indexurlnodeid] == null) {
        tabmap[indexurlnodeid] = indextitle;
    }
    $(".panel-body.panel-body-noheader.panel-body-noborder,.panel").css("width", "auto").css("overflow", "hidden");

    //首页
    $("#btnhome").click(function() {
        $('#tabs').tabs('select', indextitle);
    });
    //$('#tabs').tabs({

    //})

    if ($("#Hometype").val() == "SVOP") {
        homesvopwin = $("#crfindex").get(0).contentWindow;
    } else {
        homecrfwin = $("#crfindex").get(0).contentWindow;
    }

    //病例质疑列表
    $("#linkQuery").click(function() {
        dlg.setSize(1000, 650);
        dlg.setURL("CRF 质疑列表", "/Study/Patient/CrfPatientQueryList/" + studyId + "/" + studyPatientId);
        dlg.show();
    });

    //记录用户调整的尺寸
    $("#cc_east").panel({
        onResize: function() {
            setCookie("DATASOURCE_WIDTH", $(this).width());
        }
    });

    //病例基本资料
    $(".patient-avatar a").click(function(e) {
        e.preventDefault();

        var crfid = $("#Crf_id").val();
        var visitid = $("#Visit_id").val();
        if (crfid != "" && crfid != "0") {
            var url = "/Study/Patient/CrfInput/" + studyId + "/" + crfid + "/" + studyPatientId + "?fromid=1&v=" + visitid;
            var nodeid = crfid + "_" + visitid;
            addTab("tabs", nodeid, "基本资料", url);
        }
    });
    //各模块入口
    $(".study-module-menu").click(function(e) {
        e.preventDefault();

        var moduleid = $(this).attr("data-id");
        var url = "/Study/Patient/PatientModule/" + studyPatientId + "/" + moduleid;
        var nodeid = "module_" + moduleid;
        addTab("tabs", nodeid, $(this).attr("title"), url);
    });
    //添加访视
    $(".add-wizard").click(function(e) {
        e.preventDefault();

        //向导录入
        //var url = "/Study/Patient/PatientWizard/" + studyPatientId + "?x=" + $(this).attr("data-id") + "&k=" + Guid.NewGuid().ToString();
        var url = "/Study/Patient/CrfInputWizard/" + studyId + "/0/" + studyPatientId + "?x=" + $(this).attr("data-id") + "&k=" + Guid.NewGuid().ToString();
        var nodeid = "wizard_" + $(this).attr("data-id");
        var title = "录入向导(" + $(this).text() + ")";
        addTab("tabs", nodeid, title, url);
	//如果是在病例界面新增访视，则右侧数据源应该刷新（但是显示哪些数据源，待确认）
        var $frame = $("#datasource");
        //console.log($frame);
        if ($frame) {
            document.getElementById('datasource').src = "/Study/Datasource/Detail/0_" + studyPatientId + "?v=0";
        }
        //window.open("/Study/Patient/PatientWizard/" + studyPatientId + "?x=" + $(this).attr("data-id") + "&k=" + guid);
    });

    //删除访视
    $("#deletevisit").click(function(e) {
        e.preventDefault();

        deleteVisit();
    });

    //刷新待录清单
    if ($("#Datasource_id").val() != "") {
        if (parent.opener && parent.opener.LoadDatasourceDatagrid) {
            parent.opener.LoadDatasourceDatagrid();
        }
    }

    setStatusButton();


});

function openDefaultCrf() {
    var crf_id = $("#DefaultOpenCrfid").val();
    var visit_id = $("#DefaultOpenCrfidVisit").val();
    if (crf_id > 0) {
        var node = null;
        var crftrees = $("#crftree").tree('getRoots');
        if (visit_id > 0) {
            node = findnodeBycrfid(crftrees, crf_id, visit_id);
            if (node == null) {
                node = findnodeBycrfid(crftrees, crf_id);
            }
        } else {
            node = findnodeBycrfid(crftrees,crf_id);
        }
        if (node != null) {
            $('#crftree').tree('select', node.target);
            $('#crftree').tree('expandTo', node.target);
            var url = "/Study/Patient/CrfInput/" + studyId + "/" + node.attributes.id + "/" + studyPatientId + "?fromid=0&v=" + node.attributes.visitid;
            addTab("tabs", node.id, node.attributes.nodecode, url);
        }
    }
}

function findnodeBycrfid(rootnodes, crfid, visitid) {
    var returnnode = null;
    for (var i = 0 ; i < rootnodes.length; i++) {
        var node = rootnodes[i];
        if (node.attributes.nodetype == "crf") {
            if (node.attributes.id == crfid) {
                if (visitid != undefined) {
                    if (node.attributes.visitid == visitid) {
                        returnnode = node;
                    }
                } else {
                    returnnode = node;
                }
            }
        } else {
            var childs = $("#crftree").tree("getChildren", node.target);
            returnnode = findnodeBycrfid(childs, crfid, visitid);
        }
        if (returnnode != null) {
            break;
        }
    }
    return returnnode;
}

//上传完txt或者图片之后会调用
function refreshDatasource(visitid) {
    try {
        var src = $('#datasource').attr('src');
        var srclength = src.indexOf("?");
        var src = src.substr(0, srclength) + "?v=" + visitid;
        $('#datasource').attr('src', src);
    }
    catch (e) { }
}

function refreshDatasource(visitid) {
    //切换左侧访视时无需重新加载数据源
    //因为当前数据源只跟病例有关
    //2016-6-24 戴
    try {
        var src = $('#datasource').attr('src');
        var srclength = src.indexOf("?");
        var src = src.substr(0, srclength) + "?v=" + visitid;
        $('#datasource').attr('src', src);
    }
    catch (e) { }
}

//应该达不到要求
//扩展，指定对应的区域
//如上传文本，则只刷新对应的文本区域
//只上传图片，则只刷新图片区域
//这个与访视无关
//PatientIndexV2.cshtml  设置iframe的src属性
//function refreshDatasource(visitid) {
//    try {
//        var src = $('#datasource').attr('src');
//        var srclength = src.indexOf("?");
//        var src = src.substr(0, srclength) + "?v=" + visitid;
//        alert(src);
//        console.log($('#datasource'));
//        $('#datasource').attr('src', src);
//    }
//    catch (e) {
//    }
//}



function searchText(id) {
    $.ajax({
        type: "post",
        url: "/Study/Patient/GetFieldTag",
        data: {
            id: id
        },
        success: function (str) {
            if (str != "") {
                if ($("#datasource").size()) {
                    var ifr = $("#datasource").get(0);
                    var win = ifr.window || ifr.contentWindow;
                    if (win.searchText) {
                        win.searchText(str);
                    }
                }
            }
        }//,
        //error: function (xhr, textStatus, errorThrown) {
        //    showError(xhr);
        //}
    });
}

function loadCRFTree() {
    $("#crftree").tree({
        url: '/Study/Patient/CrfTreeListJson',
        lines: true,
        queryParams: {
            id: studyPatientId
        },
        onClick: function (node) {
            if (node.attributes.nodetype == "crf") {
                var url = "/Study/Patient/CrfInput/" + studyId + "/" + node.attributes.id + "/" + studyPatientId + "?fromid=0&v=" + node.attributes.visitid;
                addTab("tabs", node.id, node.attributes.nodecode, url);
            }

            if (node.attributes.nodetype != "crf") {
                $('#crftree').tree(node.state == 'closed' ? 'expand' : 'collapse', node.target);
            }

            //切换左侧访视或者crf时无需重新加载数据源
            //因为当前数据源只跟病例有关
            //2016-6-24 戴
            //if (node.attributes.visitid != undefined && node.attributes.visitid != null) {
            //    refreshDatasource(node.attributes.visitid);
            //}
        },
        onContextMenu: function (e, node) {
            if (canedit) { //判断是否有编辑权限
                e.preventDefault();
                if (node.attributes.nodetype == "studyx" && node.attributes.istemplate == "1") {
                    $('#crftree').tree('select', node.target);
                    $('#mm').menu('show', {
                        hideOnUnhover: false,
                        left: e.pageX,
                        top: e.pageY
                    });
                }
            }
        },
        onLoadSuccess: function (node, data) {
            var crf_id = $("#DefaultOpenCrfid").val();
            if (crf_id > 0) {
                openDefaultCrf();
            }
        }
    });
}

function refreshCRF(crfid, visitid, status) {
    //alert(crfid + "-" + visitid + "-" + status);
    var nodeid = crfid + "_" + visitid;
    if (status) {
        //更新CRF状态图标
        var node = $("#crftree").tree("find", nodeid);
        if (node != null) {
            $('#crftree').tree('update', {
                target: node.target,
                iconCls: 'icon-crf-status-' + status
            });
        }

        //刷新试验流程图
        if (homecrfwin != null && homecrfwin.setCrfStatus) {
            homecrfwin.setCrfStatus(crfid, visitid, status);
        }
    }
    else {
        $.ajax({
            type: "post",
            url: "/Study/Patient/GetCRFStatus",
            data: {
                studypatientid: studyPatientId,
                visitid: visitid,
                crfid: crfid
            },
            success: function (e) {
                if (e.Ret == "0") {
                    //更新CRF状态图标
                    var node = $("#crftree").tree("find", nodeid);
                    $('#crftree').tree('update', {
                        target: node.target,
                        iconCls: 'icon-crf-status-' + e.Content
                    });

                    //刷新试验流程图
                    if (homecrfwin != null && homecrfwin.setCrfStatus) {
                        homecrfwin.setCrfStatus(crfid, visitid, status);
                    }
                }
            }
        });
    }

    //刷新SVOP
    if (homesvopwin != null && homesvopwin.refreshSVOP) {
        homesvopwin.refreshSVOP();
    }
}

function reloadCRF() {
    //CRF Tree
    loadCRFTree();

    //刷新试验流程图
    if (indexurl.indexOf("CRFHome") >= 0) {
        $("#crfindex").attr("src", indexurl);
    }
}

function refreshPatient() {
    $.ajax({
        type: "post",
        url: "/Study/Patient/RefreshPatientStatus",
        data: {
            id: studyPatientId
        },
        success: function (e) {
            if (e.Ret == "0") {
                //分组
                var $arm = $("#patientarm");
                if ($arm.size()) {
                    $arm.html("分组 【" + e.Content.Armcode + " - " + e.Content.Armname + "】");
                }
                //病例编号
                $("#crftreepanel").panel("setTitle", e.Content.Patname + "【" + e.Content.Patnumber + "】");
                //状态
                $("#patientstatus").html(e.Content.Statusstr);
                patientStatus = e.Content.Status;
                setStatusButton();
                //质疑
                if (e.Content.Querycnt == 0) {
                    $("#spanPatientQueryNumber").html("0");
                    $("#linkQuery").hide();
                } else {
                    $("#spanPatientQueryNumber").html(e.Content.Querycnt);
                    $("#linkQuery").show();
                }
            } else {
                //$.messager.alert("消息", e.Msg, "warning");
            }
        }
    });
}
function setStatusButton() {
    $(".patientstatus").hide();

    if (patientStatus == "0" || patientStatus == "9") {
        $(".patientstatus.rz").show();
    } else if (patientStatus == "1") {
        $(".patientstatus.lock").show();
    }

    if (patientStatus == "2") {
        $(".patientstatus.unlock").show();
    } else if ((patientStatus == "7" || patientStatus == "8") && canReAdd) {
        $(".patientstatus.rz").show();
    } else {
        $(".patientstatus.delete").show();
        $(".patientstatus.exit").show();
    }
}

function addTab(div, nodeid, title, url) {
    if (tabmap[nodeid] == undefined || tabmap[nodeid] == null) {
        tabmap[nodeid] = title;
    } else {
        title = tabmap[nodeid];
    }

    if ($('#' + div).tabs('exists', title)) {
        $('#' + div).tabs('select', title); //选中并刷新
    }
    else {
        var content = createFrame(url, nodeid);
        $('#' + div).tabs('add', {
            title: title,
            width: "auto",
            hight: "auto",
            content: content,
            fit: false,
            closable: true
        });
    }

    //tabClose(div);
    //alert($("#Visit_id").val());

    $(".panel-body.panel-body-noheader.panel-body-noborder,.panel").css("width", "auto").css("overflow", "hidden");
}


function refreshTab(nodeid) {
    var title = tabmap[nodeid];
    if (title == undefined || title == null) {
        return;
    }
    var tab = null;
    $(".crfiframe").each(function () {
        var iframe = $(this);
        var thisNodeid = iframe.attr("data-nodeid");
        if (thisNodeid == nodeid) {
            tab = $(this);
            return false;
        }
    });
    if (tab != null) {
        var url = tab.attr("src");
        tab.attr("src", url);
    }
}

function closeTab(crfid, visitid) {
    var title = tabmap[crfid + "_" + visitid];
    if (title == undefined || title == null) {
        return;
    }
    if (title == indextitle) {
        var nodeid = crfid + "_" + visitid;
        var node = $("#crftree").tree("find", nodeid);
        if (node != null) {
            var url = "/Study/Patient/CrfInput/" + studyId + "/" + node.attributes.id + "/" + studyPatientId + "?fromid=0&v=" + node.attributes.visitid;
            var content = createFrame(url, nodeid);
            var tab = $('#tabs').tabs('getTab', indextitle);
            $("#tabs").tabs("update", {
                tab: tab,
                options:{
                    content: content
                }
            });
        }
        return;
    }
    $("#tabs").tabs("close", title);
}

function createFrame(url,nodeid) {
    var s = '<iframe onload="toScroll(this)" data-nodeid="' + nodeid + '"  scrolling="auto" class="crfiframe" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
    return s;
}


//function tabClose(div) {
//    /*双击关闭TAB选项卡*/
//    $(".tabs-inner").dblclick(function () {
//        var subtitle = $(this).children(".tabs-closable").text();
//        $('#' + div).tabs('close', subtitle);
//    })
//    /*为选项卡绑定右键*/
//    $(".tabs-inner").bind('contextmenu', function (e) {
//        $('#mm').menu('show', { left: e.pageX, top: e.pageY });
//        var subtitle = $(this).children(".tabs-closable").text();
//        $('#mm').data("currtab", subtitle);
//        $('#tabs').tabs('select', subtitle);
//        return false;
//    });
//}
////绑定右键菜单事件
//function tabCloseEven() {
//    //刷新
//    $('#mm-tabupdate').click(function () {
//        var currTab = $('#tabs').tabs('getSelected');
//        var url = $(currTab.panel('options').content).attr('src');
//        if (url != undefined && currTab.panel('options').title != 'Home') {
//            $('#tabs').tabs('update', {
//                tab: currTab,
//                options: { content: createFrame(url) }
//            })
//        }
//    })
//    //关闭当前
//    $('#mm-tabclose').click(function () {
//        var currtab_title = $('#mm').data("currtab");
//        $('#tabs').tabs('close', currtab_title);
//    })
//    //全部关闭
//    $('#mm-tabcloseall').click(function () {
//        $('.tabs-inner span').each(function (i, n) {
//            var t = $(n).text();
//            if (t != 'Home') {
//                $('#tabs').tabs('close', t);
//            }
//        });
//    });
//    //关闭除当前之外的TAB
//    $('#mm-tabcloseother').click(function () {
//        var prevall = $('.tabs-selected').prevAll();
//        var nextall = $('.tabs-selected').nextAll();
//        if (prevall.length > 0) {
//            prevall.each(function (i, n) {
//                var t = $('a:eq(0) span', $(n)).text();
//                if (t != 'Home') {
//                    $('#tabs').tabs('close', t);
//                }
//            });
//        }
//        if (nextall.length > 0) {
//            nextall.each(function (i, n) {
//                var t = $('a:eq(0) span', $(n)).text();
//                if (t != 'Home') {
//                    $('#tabs').tabs('close', t);
//                }
//            });
//        }
//        return false;
//    });
//    //关闭当前右侧的TAB
//    $('#mm-tabcloseright').click(function () {
//        var nextall = $('.tabs-selected').nextAll();
//        if (nextall.length == 0) {
//            //msgShow('系统提示','后边没有啦~~','error'); alert('后边没有啦~~');
//            return false;
//        }
//        nextall.each(function (i, n) {
//            var t = $('a:eq(0) span', $(n)).text();
//            $('#tabs').tabs('close', t);
//        });
//        return false;
//    });
//    //关闭当前左侧的TAB
//    $('#mm-tabcloseleft').click(function () {
//        var prevall = $('.tabs-selected').prevAll();
//        if (prevall.length == 0) {
//            //alert('到头了，前边没有啦~~');
//            return false;
//        }
//        prevall.each(function (i, n) {
//            var t = $('a:eq(0) span', $(n)).text();
//            $('#tabs').tabs('close', t);
//        }); return false;
//    });
//    //退出
//    $("#mm-exit").click(function () {
//        $('#mm').menu('hide');
//    })
//}
//$(function () {
//    tabCloseEven(); $('.cs-navi-tab').click(function () {
//        var $this = $(this);
//        var href = $this.attr('src');
//        var title = $this.text();
//        addTab(title, href);
//    });
//});

//删除访视
function deleteVisit() {
    var node = $("#crftree").tree("getSelected");
    if (node == null) {
        return;
    }
    if (node.attributes.nodetype != "studyx" || node.attributes.istemplate != "1") {
        return;
    }

    $.messager.confirm("消息", "确认要删除本次访视，以及本次访视中所有CRF表的数据吗？", function (r) {
        if (r) {
            layer.load(2);

            $.ajax({
                type: "post",
                url: "/Study/Patient/DeleteVisit",
                data: {
                    study_patient_id: studyPatientId,
                    id: node.attributes.visitid
                },
                success: function (e) {
                    layer.closeAll();

                    if (e.Ret == "0") {
                        $.messager.alert("消息", "删除成功！", "info");
                        //保存成功后重新加载数据
                        loadCRFTree();
                        //刷新SVOP
                        if (homesvopwin != null && homesvopwin.refreshSVOP) {
                            homesvopwin.refreshSVOP();
                        }
                    } else {
                        $.messager.alert("消息", e.Msg, "warning");
                    }
                },
                error: function (xhr, textStatus, errorThrown) {
                    layer.closeAll();
                    $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
                    //showError(xhr);
                }
            });
        }
    });
}

//修改状态
function updatePatient(obj, newstatus) {
    $.ajax({
        type: "post",
        url: "/Study/Patient/UpdatePatientStatus",
        data: {
            id: studyPatientId,
            newstatus: newstatus
        },
        success: function (e) {
            if (e.Ret == "0") {
                //$.messager.alert("消息", "操作成功！", "info");
                //保存成功后重新加载数据
                location.href = "/Study/Patient/PatientIndex/" + studyPatientId + "?r=" + Math.random();
            } else {
                //$.messager.alert("消息", e.Msg, "warning");
                $.messager.alert("消息", e.Msg, "crabyter_error");
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
            //showError(xhr);
        }
    });
}
