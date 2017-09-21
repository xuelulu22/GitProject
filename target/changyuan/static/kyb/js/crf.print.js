/*
打印、生成PDF工具
*/
$(function () {
    //防止某个页面乱码，强制设置所有元素字体为宋体
    $('*').css("font-family", "Microsoft Yahei");
    $.crfprint = $.crfprint || { version: '1.0' };

    var params = { btnobj: null, oper: null, pdftype: null };

    //wkthtmltopdf  设置生成PDF的样式
    //wkhtmltopdf相关参数说明参考地址http://canjianx.github.io/jekyll/update/2014/03/22/wkhtmltopdf.html
    //当前参数为测试服务器格式正常，本地格式可能不正常，以服务器为准来调整吧（原因不明，所以只能以服务器为准调整参数）
    var wkhtmltopdfstyleCommondTemplate = "--header-font-size 8 --margin-top 2cm  --page-size A4 --grayscale --margin-right 20mm --print-media-type  --zoom 0.8 -q --load-error-handling  ignore ";//"--zoom 2 --margin-top 15mm --margin-bottom 15mm --margin-right 15mm --margin-left 15mm --page-size A4 ";
    var wkhtmltopdfstyleCommondWithData = "--header-font-size 8 --margin-top 2cm  --page-size A4 --grayscale --margin-right 20mm --print-media-type  --zoom 0.8 -q --load-error-handling  ignore ";//"--zoom 2 --margin-top 15mm --margin-bottom 15mm --margin-right 15mm --margin-left 15mm --page-size A4 ";

    $.extend($.crfprint, {
        //页面上加载按钮
        initbtn: function (options) {
            if (options) {
                params = $.extend({}, params, options);
            }
            var htmltext = "打印";
            switch (params.pdftype) {
                case 1://打勾列
                    $(params.btnobj).css({ "position": "static", "top": "10px", "right": "150px" });
                    htmltext = "生成CRF模版";
                    $(params.btnobj).html(htmltext);
                    break;
                case 2://数据报告
                    $(params.btnobj).css({ "position": "static", "top": "10px", "right": "150px" });
                    htmltext = "生成病例CRF";
                    $(params.btnobj).html(htmltext);
                    break;
                case 3://单页
                    $(params.btnobj).css({ "position": "static", "top": "10px", "right": "150px" });
                    htmltext = "生成当前PDF报告";
                    $(params.btnobj).html(htmltext);
                    break;
                default:
                    break;
            }
        },

        //生成PDF文件 有数据
        exportpdfbyrotativabydata: function (options) {

            if (options) {
                params = $.extend({}, params, options);
            }
            var fileuni = uuid(16, 16);//文件夹序列号

            var crfidArry = [];
            var crfNameArry = [];
            var visitArry = [];


            var studypatientid = params.studypatientid == null ? 0 : params.studypatientid;
            var crfData = params.studycrfmodel;
            generateXY(crfData, crfidArry, visitArry, crfNameArry);

            generatepdfbydata(fileuni, studypatientid, crfidArry, visitArry, crfNameArry, wkhtmltopdfstyleCommondTemplate);
            return;
        },
        //debug单页
        exportpdfbyrotativasingle: function (options) {
            if (options) {
                params = $.extend({}, params, options);
            }
            var fileuni = uuid(16, 16);//文件夹序列号

            if (params.istemplete) {
                console.log("0");
            } else {
                console.log("1");
            }
        },
        //生成PDF 模版文件 打勾列
        exportpdfbyrotativa: function (options) {

            if (options) {
                params = $.extend({}, params, options);
            }
            var fileuni = uuid(16, 16);//文件夹序列号

            var crfidArry = [];
            var crfNameArry = [];
            var visitArry = [];

            var crfData = params.studycrfmodel;
            generateXY(crfData, crfidArry, visitArry, crfNameArry);

            generatepdf(fileuni, crfidArry, crfNameArry, wkhtmltopdfstyleCommondTemplate);

            return;
        }
    });

    //根据params.pdftype，组装xy 轴
    function generateXY(crfData, crfidArry, visitArry, crfNameArry) {
        //var count = 0;
        //x轴
        $.each(crfData.XList, function (m, xdata) {
            var currentx = xdata;
            //debug测试
            //count++;
            //if (count > 3)
            //    return;

            var parent_xname = currentx.Xname;
            if (currentx.Children.length == 0) {

                $.each(crfData.YList, function (i, ydata) {

                    var y_id = ydata.Id;
                    var yname = ydata.Yname;
                    var combinename = parent_xname + "_" + yname;
                    var crf = getCrf(currentx.Id, y_id);
                    if (crf != null) {
                        crfidArry.push(crf.Id);
                        crfNameArry.push(combinename)
                        visitArry.push(crf.Visit_id);
                    }

                    //数据报告，不记录y的子
                    //if (params.pdftype == 2)
                    //    return;

                    //y轴的子
                    //if (ydata.Children.length > 0) {
                    //    getChildrenY(ydata, null, currentx, crfidArry, crfNameArry, visitArry);
                    //}
                });
            } else {
                //x轴的子
                $.each(currentx.Children, function (n, subxdata) {
                    var childrenxdata = subxdata;

                    var xchildrenname = parent_xname + "_" + childrenxdata.Xname;
                    $.each(crfData.YList, function (i, ydata) {
                        var yname = ydata.Yname;
                        var combinename = xchildrenname + "_" + yname;
                        var y_id = ydata.Id;
                        var crf = getCrf(childrenxdata.Id, y_id);
                        if (crf != null) {
                            crfidArry.push(crf.Id);
                            crfNameArry.push(combinename)
                            visitArry.push(crf.Visit_id);
                        }

                        //数据报告，不记录y的子
                        //if (params.pdftype == 2)
                        //    return;

                        //y轴的子
                        //if (ydata.Children.length > 0) {
                        //    getChildrenY(ydata, parent_xname, childrenxdata, crfidArry, crfNameArry, visitArry);
                        //}

                    });
                });
            }
        });
    }

    //y轴的子
    function getChildrenY(ydata, parent_xname, xdata, crfidArry, crfNameArry, visitArry) {
        var xname = parent_xname ? parent_xname + "_" + xdata.Xname : xdata;
        var xid = xdata.Id;
        var parent_yname = ydata.Yname;
        $.each(ydata.Children, function (n, subydata) {
            var children_y_id = subydata.Id;
            var children_yname = subydata.Yname;
            var children_combinename = xname + "_" + ydata.Yname + "_" + children_yname;
            var chldren_crf = getCrf(xid, children_y_id);
            if (chldren_crf != null) {
                crfidArry.push(chldren_crf.Id);
                crfNameArry.push(children_combinename)
                visitArry.push(chldren_crf.Visit_id);
            }
        });
    }

    //定位crf
    function getCrf(x_id, y_id) {
        var crf = null;
        $.each(params.studycrfmodel.CrfList, function (m, crfdata) {
            if (crfdata.X_id == x_id
                && crfdata.Y_id == y_id
                && crfdata.Isdeleted == "0") {
                crf = crfdata;
                return false;
            }
        });
        return crf;
    }

    //批量生成PDF hasdata
    function generatepdfbydata(fileuni, studypatientid, crfidArry, visitArry, crfNameArry, wkhtmltopdfstyleCommondTemplate) {
        var filecount = crfidArry.length;

        if (filecount == 0) {
            ajaxLoadEnd();
            return;
        }

        var crfids = crfidArry.join(',');
        var visitids = visitArry.join(',');
        var namelist = crfNameArry.join(',');

        lodOption.msg = "正在导出文件，请不要关闭当前页面或浏览器，请稍候。。。";
        var type = "1";

        $.ajax({
            type: "post",
            //url: "/Study/Crf/CrfBuilder",
            url: "/PDFExport/Manage/ExportPdfHasData",
            data: {
                controller: "PageExchange",//"Patient",
                actionname: "CRFInputPDF",
                fileGuid: fileuni,
                studyId: params.study_id,
                studyPatientId: studypatientid,
                crfIds: crfids,
                visitIds: visitids,
                nameList: namelist,
                pdfStyleCommond: wkhtmltopdfstyleCommondTemplate
            },
            beforeSend: ajaxLoading,//发送请求前打开进度条
            success: function (d) {

                if (!d) {
                    ajaxLoadEnd();
                    //有错误信息
                    $.messager.alert("错误", "服务器返回数据错误", "crabyter_error");
                    return;
                }

                if (d) {
                    if (d == type)//正常导出，没有排队
                    {
                        ajaxLoadEnd();
                        lodOption.msg = "服务器正在拼命处理中,请您耐心等待......";
                        ajaxLoading();
                        var tid = startpdftimer(fileuni, params.study_id, studypatientid, 0, "1");
                        timerArr.push(tid);
                        return;
                    }
                    //排队
                    if (d == "busy") {
                        //显示正在排队
                        ajaxLoadEnd();
                        lodOption.msg = "进入排队等待,服务器正在拼命处理中,请您耐心等待......";
                        ajaxLoading();
                        var tid = startpdftimer(fileuni, params.study_id, studypatientid, 0, "1");
                        timerArr.push(tid);
                        return;
                    }

                    //检测到有url或者服务器返回异常信息
                    var ret = d.Msg;
                    if (ret == "") {
                        ajaxLoadEnd();
                        $.messager.alert("错误", "文件地址为空", "crabyter_error");
                        return;
                    }

                    //if ($.trim(ret).indexOf('pdf') != -1) {
                    //    var url = "/PDFExport/Manage/DownLoadExitsPdf?studyid=" + params.study_id + "&studypatientid=" + studypatientid + "&armid=0&type=" + type + "&filename=" + params.studyName + ".pdf";
                    //    ajaxLoadEnd();
                    //    //lodOption.msg = "文件生成成功!正在下载，请稍候......";
                    //    //ajaxLoading();
                    //    params.callback && params.callback(fileuni, url);
                    //    //$.messager.alert("消息", "生成成功！", "info");
                    //    $.messager.alert("消息", "文件生成成功!正在下载中", "info");
                    //    //window.open("/PDFExport/Manage/DownLoadExitsPdf?studyid=" + params.study_id + "&studypatientid=" + studypatientid + "&armid=0&type=" + type);
                    //    return;
                    //}

                    //有错误信息
                    ajaxLoadEnd();
                    $.messager.alert("错误", d.Msg, "crabyter_error");
                    //$.messager.alert("错误", (ret == null) ? "服务器返回数据错误" : ret, "crabyter_error");
                    return;
                }
            },
            error: function () {
                ajaxLoadEnd();
                $.messager.alert("错误", "服务器异常", "crabyter_error");
            }
        });
    }

    //批量生成PDF template
    function generatepdf(fileuni, crfidArry, crfNameArry, wkhtmltopdfstyleCommondTemplate) {

        var filecount = crfidArry.length;
        //console.log('filecount:' + filecount);

        if (filecount == 0) {
            ajaxLoadEnd();
            return;
        }

        var crfids = crfidArry.join(',');
        var namelist = crfNameArry.join(',');

        var idstr = crfidArry.join(',');

        lodOption.msg = "正在导出文件，请不要关闭当前页面或浏览器，请稍候......";
        var type = "0";
        $.ajax({
            type: "post",
            //url: "/Study/Crf/CrfBuilder",
            url: "/PDFExport/Manage/ExportPdf",
            data: {
                controller: "PageExchange",//"Crf",
                actionname: "CrfBuilderPDF",//"CrfBuilder",
                fileGuid: fileuni,
                crfIds: crfids,
                nameList: namelist,
                pdfStyleCommond: wkhtmltopdfstyleCommondTemplate,
                studyId: params.study_id,
                armId: params.armid
            },
            beforeSend: ajaxLoading,//发送请求前打开进度条
            //url: "/Study/Crf/Test",
            success: function (d) {

                if (!d) {
                    ajaxLoadEnd();
                    //有错误信息
                    $.messager.alert("错误", "服务器返回数据错误", "crabyter_error");
                    return;
                }
                if (d) {
                    if (d == type) {
                        ajaxLoadEnd();
                        lodOption.msg = "服务器正在拼命处理中,请您耐心等待......";
                        ajaxLoading();
                        var tid = startpdftimer(fileuni, params.study_id, 0, params.armid, "0");
                        timerArr.push(tid);
                        return;
                    }
                    //排队
                    if (d == "busy") {
                        ajaxLoadEnd();
                        lodOption.msg = "进入排队等待,服务器正在拼命处理中,请您耐心等待......";
                        ajaxLoading();
                        //显示正在排队
                        var tid = startpdftimer(fileuni, params.study_id, 0, params.armid, "0");
                        timerArr.push(tid);
                        return;
                    }
                    //检测到有url或者服务器返回异常信息
                    var ret = d.Msg;
                    if (ret == "") {
                        ajaxLoadEnd();
                        $.messager.alert("错误", "文件地址为空", "crabyter_error");
                        return;
                    }

                    //if ($.trim(ret).indexOf('pdf') != -1) {
                    //    //绑定虚拟下载按钮
                    //    var url = "/PDFExport/Manage/DownLoadExitsPdf?studyid=" + params.study_id + "&studypatientid=0&armid=" + params.armid + "&type=" + type + "&filename=" + params.studyName + ".pdf";;
                    //    ajaxLoadEnd();
                    //    //lodOption.msg = "文件生成成功!正在下载，请稍候......";
                    //    //ajaxLoading();
                    //    params.callback && params.callback(fileuni, url)
                    //    $.messager.alert("消息", "文件生成成功!正在下载中", "info");
                    //    //window.open("/PDFExport/Manage/DownLoadExitsPdf?studyid=" + params.study_id + "&studypatientid=0&armid=" + params.armid + "&type=" + type);
                    //    return;
                    //}

                    //有错误信息
                    ajaxLoadEnd();
                    $.messager.alert("错误", d.Msg, "crabyter_error");
                    //$.messager.alert("错误", (ret == null) ? "服务器返回数据错误" : ret, "crabyter_error");
                    return;
                }
            },
            error: function () {
                ajaxLoadEnd();
                $.messager.alert("错误", "服务器异常", "crabyter_error");
            }
        });
    }

    function binddownloadbtn(url) {
        var area = $(params.btnobj).parent();
        area.clickOpenWin(function () { }, url);
        return area;
    }

    //检查PDF文件结果
    function checkpdf(fileGuid, studyId, studyPatientId, armId, type) {
        $.ajax({
            type: "post",
            url: "/PDFExport/Manage/ExportPdfTimerTask",
            data: {
                fileGuid: fileGuid,
                studyId: studyId,
                studyPatientId: studyPatientId,
                armId: armId,
                type: type
            },
            //url: "/Study/Crf/Test",
            success: function (d) {
                if (d.Data != null && $.trim(d.Data).length == 0) {
                    ajaxLoadEnd();
                    lodOption.msg = "服务器正在拼命处理中,请您耐心等待......";
                    ajaxLoading();
                    return;
                }

                if ($.trim(d.Data).indexOf('pdf') != -1) {
                    stoptimer(timerArr);
                    ajaxLoadEnd();
                    var url = "/PDFExport/Manage/DownLoadExitsPdf?guid=" + fileGuid + "&studyid=" + studyId + "&studypatientid=" + studyPatientId + "&armid=" + armId + "&type=" + type + "&filename=" + params.studyName + ".pdf";
                    //lodOption.msg = "文件生成成功!正在下载，请稍候......";
                    //ajaxLoading();
                    params.callback && params.callback(fileGuid, url)
                    //params.callback && params.callback(fileGuid, url)
                    $.messager.alert("消息", "文件生成成功!正在下载中", "info");
                    return;
                }

                //异常信息
                stoptimer(timerArr);
                ajaxLoadEnd();
                $.messager.alert("错误", d.Msg, "crabyter_error");
                //$.messager.alert("消息", "服务端出错！" + d, "info");
            },
            error: function () {
                stoptimer(timerArr);
                ajaxLoadEnd();
                $.messager.alert("错误", "服务器异常", "crabyter_error");
            }
        });
    }

    /*
    timer
    */
    var timerArr = [];
    //开启定时检测
    function startpdftimer(fileGuid, studyId, studyPatientId, armId, type) {
        var timeid = window.setInterval(tstartpdftimer(fileGuid, studyId, studyPatientId, armId, type), 10000);
        return timeid;
    }

    //创建一个函数，用于返回一个无参数函数 为了给setinterval传参
    function tstartpdftimer(fileGuid, studyId, studyPatientId, armId, type) {
        return function () {
            checkpdf(fileGuid, studyId, studyPatientId, armId, type);
        }
    }

    //关闭所有定时
    function stoptimer(timerids) {
        for (var i = 0; i < timerids.length; i++) {
            window.clearInterval(timerids[i]);
        }
    }
    /*
    timer
    */

});

//guid生成 len长度，radix基数
function uuid(len, radix) {
    var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('');
    var uuid = [], i;
    radix = radix || chars.length;

    if (len) {
        // Compact form
        for (i = 0; i < len; i++) uuid[i] = chars[0 | Math.random() * radix];
    } else {
        // rfc4122, version 4 form
        var r;

        // rfc4122 requires these characters
        uuid[8] = uuid[13] = uuid[18] = uuid[23] = '-';
        uuid[14] = '4';

        // Fill in random data.  At i==19 set the high bits of clock sequence as
        // per rfc4122, sec. 4.1.5
        for (i = 0; i < 36; i++) {
            if (!uuid[i]) {
                r = 0 | Math.random() * 16;
                uuid[i] = chars[(i == 19) ? (r & 0x3) | 0x8 : r];
            }
        }
    }

    return uuid.join('');
}

var lodOption = {
    msg: "正在加载，请稍后。。。",//默认
    msgpdf: "正在导出文件，请不要关闭当前页面或浏览器以及其他操作，请稍候。。。",
    msgend: "正在合并，请不要关闭当前页面或浏览器以及其他操作，请稍候。。。"
};
function ajaxLoading() {
    $("<div class=\"datagrid-mask\"></div>").css({ display: "block", width: "100%", height: $(window).height() }).appendTo("body");
    $("<div class=\"datagrid-mask-msg\"></div>").html(lodOption.msg).appendTo("body").css({ display: "block", left: ($(document.body).outerWidth(true) - 190) / 2, top: ($(window).height() - 45) / 2 });
}
function ajaxLoadEnd() {
    $(".datagrid-mask").remove();
    $(".datagrid-mask-msg").remove();
}


/*
针对业务需求需要的crf页面进行元素替换
*/
var replaceHolderCss = {
    width: "200px",
    ulwidth: "80px"
}
$.fn.extend({

    //替换基本下拉框
    replaceselect: function (crfid) {

        var $crf = $(".crfroot[data-id=" + crfid + "],.crftablerow[data-id=" + crfid + "]");

        $crf.find(".crffield").each(function () {
            var $input = $(this);
            var selectId = $input.attr("id");
            if ($input.is("select") || ($input.is("input") && $input.hasClass(".ui-autocomplete-input"))) {
                var curreninputwidth = $input.width();

                //console.log("普通下拉框" + crfid);
                var $crf = $(".crfroot[data-id=" + crfid + "]");
                var replaceHolder = $("<ul id='" + selectId + "'></li>");
                replaceHolder.addClass("form-control crfform-input");
                replaceHolder.attr("rel-input", selectId);
                replaceHolder.css("width", replaceHolderCss.ulwidth);
                //console.log($input);

                //下拉框选中的值
                var selectedText = $input.find("option:selected").text();//$input.text();
                var selectedVal = $input.val();
                //取出input value
                var opts = $input.find("option");
                $.each(opts, function (k, v) {
                    var op = $(v);
                    var value = op.val();
                    var text = op.text();
                    if ($.trim(value).length == 0)
                        return;

                    replaceHolder.append("<li><label class='radio'><input class='r_ck'  name='r_ck" + selectId + "' type='radio' value='" + value + "'>" + mapstr(value, text) + "</input></label></li>");
                });

                $input.after(replaceHolder);

                ////找到td标题
                //var prevetd = replaceHolder.parent().prev();
                ////找到td下拉框
                //var currenttd = replaceHolder.parent();
                ////重新组装一个tr,放到当前td的tr的上面
                //var parenttr = currenttd.parent();
                //if (parenttr) {
                //    var tr = currenttd.parent().clone();
                //    tr.css("width", replaceHolderCss.ulwidth);
                //    tr.html("");
                //    var tdtitle = prevetd.clone();
                //    tr.append(tdtitle);
                //    var tdsel = currenttd.clone();
                //    tr.css("text-align", "left");
                //    tdsel.html(replaceHolder);
                //    tr.append(tdsel);
                //    parenttr.before(tr);

                //}
                //prevetd.remove();
                //currenttd.remove();

                replaceHolder.parent().css("text-align", "left");
                //移除原来的下拉框
                $input.remove();

                //让ck选中下拉框选中的
                $.each(replaceHolder.find(".r_ck"), function (k, v) {
                    var val = $(v).val();
                    if (selectedVal == val) {
                        $(this).attr('checked', true);
                        return;
                    }
                });
                if (iftablewindow) {
                    //空下拉框处理
                    controlemptyselect(replaceHolder, curreninputwidth);
                }
            }
        });
    },

    //替换list-crffield 类型的下拉框
    replacelistcrffieldselect: function (target, thiss, rid) {

        var targett = target ? target : thiss;
        var $row = $(targett).closest("tr");

        //字段类型
        var $itemtype = $row.find("[data-fieldid=Ti_datatype]");
        //序列值
        var $combostr = $row.find("[data-fieldid=Ti_combostr]");
        //结果
        var $result = $row.find("[data-fieldid=Ti_value]");
        //add
        /*替换原来的下拉框*/
        //找到原来的下拉框
        var $input = $row.find("[rel-input=" + rid + "]");
        //下拉框选中的值
        var selectedText = $input.text();
        var selectedVal = $input.val();
        if ($.trim(ispdfpage) == "1") {//todo:1
            if ($itemtype.size() && $combostr.size() && $result.size()) {
                var id = $result.attr("id");
                if ($itemtype.val() == "1" && $combostr.val() != "") {
                    var datalist = $combostr.val().split(',');
                    //console.log("list-crffield 中 Ti_combostr 下拉框  下拉框" + datalist);

                    var $input = $row.find("[rel-input=" + id + "]");

                    if ($input) {
                        var curreninputwidth = $input.width();

                        var replaceHolder = $("<div id='" + id + "'></div>");
                        replaceHolder.addClass("form-control crfform-input");
                        replaceHolder.attr("rel-input", id);
                        replaceHolder.css("width", replaceHolderCss.width);
                        $input.after(replaceHolder);
                        //移除原来的下拉框
                        $input.remove();

                        $.each(datalist, function (index, value) {
                            if (selectedVal == value) {
                                replaceHolder.append("<label class='radio'><input class='r_ck' cheked='checked' name='r_ck" + id + "' type='radio' value='" + value + "'>" + mapstr(value, value) + "</input></label>");
                            } else {
                                replaceHolder.append("<label class='radio'><input class='r_ck'  name='r_ck" + id + "' type='radio' value='" + value + "'>" + mapstr(value, value) + "</input></label>");
                            }
                        });

                        //让ck选中下拉框选中的
                        $.each(replaceHolder.find(".r_ck"), function (k, v) {
                            var val = $(v).val();
                            if (selectedVal == val) {
                                $(this).attr('checked', true);
                                return;
                            }
                        });
                        if (iftablewindow) {
                            //空下拉框处理
                            controlemptyselect(replaceHolder, curreninputwidth);
                        }
                    }

                } else {
                    var $input = $row.find("[rel-input=" + id + "]");
                    if ($input.size()) {
                        $input.remove();
                        $result.show();
                    }
                }
            }

            //列表中放有普通select
            if (!$combostr.size()) {

                var currentrow = targett.closest("tr");
                $.each(currentrow.find("select"), function (k, v) {
                    //console.log("list-crffield 中普通下拉框  下拉框 当前列表行 ");
                    //console.log(currentselect);

                    var currentselect = $(v);
                    var curreninputwidth = currentselect.width();
                    var id = currentselect.attr("id");
                    var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
                    //每个下拉框替换
                    var replaceHolder = $("<ul id='" + id + "'></li>");
                    replaceHolder.addClass("form-control crfform-input");
                    replaceHolder.attr("rel-input", id);
                    replaceHolder.css("width", replaceHolderCss.ulwidth);
                    //console.log(currentselect.html());

                    //下拉框选中的值
                    var selectedText = currentselect.find("option:selected").text();//$input.text();
                    var selectedVal = currentselect.val();
                    //取出input value
                    var opts = currentselect.find("option");
                    $.each(opts, function (k, v) {
                        var op = $(v);
                        var value = op.val();
                        var text = op.text();
                        if ($.trim(value).length == 0)
                            return;

                        replaceHolder.append("<li><label class='radio'><input class='r_ck" + newid + "'  name='r_ck" + newid + "' type='radio' value='" + value + "'>" + mapstr(value, text) + "</input></label></li>");
                    });

                    currentselect.after(replaceHolder);
                    replaceHolder.parent().css("text-align", "left");
                    //移除原来的下拉框
                    currentselect.remove();

                    //让ck选中下拉框选中的
                    $.each(replaceHolder.find(".r_ck" + newid), function (k, v) {
                        var val = $(v).val();
                        if (selectedVal == val) {
                            $(this).attr('checked', true);
                            return;
                        }
                    });
                    if (iftablewindow) {
                        controlemptyselect(replaceHolder, curreninputwidth);
                    }
                });
            }
        }
    },

    //替换autocomplete dataform=wycomb下拉框:包括查data-url的，还有查data-datas的
    replaceautocomplete: function (target, data) {
        addRowOpen(target, data);
    },
    //替换--autocomplete dataform=wycomb下拉框
    replaceautocompletedefault: function (crfObj) {
        // 列表中下拉框
        crfObj.find(".list-crffield").each(function () {
            var currentrow = $(this).closest("tr");

            //有数据的crf也要处理下拉箭头
            $.each(currentrow.find("input"), function (k, v) {
                $(this).next("i").remove();
            });

            $.each(currentrow.find("select"), function (k, v) {
                //console.log("wycomb中普通下拉框  下拉框 当前列表行 replaceautocompletedefault ");
                //console.log(currentselect);

                var currentselect = $(v);

                var curreninputwidth = currentselect.width();
                var id = currentselect.attr("id");
                var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
                //每个下拉框替换
                var replaceHolder = $("<ul id='" + id + "'></li>");
                replaceHolder.addClass("form-control crfform-input");
                replaceHolder.attr("rel-input", id);
                replaceHolder.css("width", replaceHolderCss.ulwidth);
                //console.log(currentselect);

                //下拉框选中的值
                var selectedText = currentselect.find("option:selected").text();//$input.text();
                var selectedVal = currentselect.val();
                //取出input value
                var opts = currentselect.find("option");
                $.each(opts, function (k, v) {
                    var op = $(v);
                    var value = op.val();
                    var text = op.text();
                    if ($.trim(value).length == 0)
                        return;

                    replaceHolder.append("<li><label class='radio'><input class='r_ck" + newid + "'  name='r_ck" + newid + "' type='radio' value='" + value + "'>" + mapstr(value, text) + "</input></label></li>");
                });

                currentselect.after(replaceHolder);
                replaceHolder.parent().css("text-align", "left");
                //移除原来的下拉框
                currentselect.remove();

                //让ck选中下拉框选中的
                $.each(replaceHolder.find(".r_ck" + newid), function (k, v) {
                    var val = $(v).val();
                    if (selectedVal == val) {
                        $(this).attr('checked', true);
                        return;
                    }
                });

                if (iftablewindow) {
                    controlemptyselect(replaceHolder, curreninputwidth);
                }
            });

        });
    }
});

//有些下拉框是联动的，如果没联动，默认添加一个空的输入框
function controlemptyselect(replaceHolder, curreninputwidth) {
    if (replaceHolder) {
        var innerhtml = $(replaceHolder).html();
        var innerli = $(replaceHolder).find("li");

        if ($.trim(innerhtml).length == 0 || innerli.length == 0) {
            $(replaceHolder).append("<li><input class='r_ck'  name='r_ck' type='text' value='' style='width:" + curreninputwidth + "px'></input></li>");
        }
    }
}

//弹出框中auto下拉框
function controlwindowautoselect() {
    $.each($(".crftablerow"), function (k, v) {
        var autoinputs = $(v).find(".ui-autocomplete-input");
        $.each($(autoinputs), function (k, v) {

            $(v).next("i").remove();
        })
    });
}

//添加行
function addRowOpen(target, data) {

    var $target = $(target);
    //在列表中添加一行
    var row = $target.find(".list-template tr").eq(0).clone();
    row.appendTo($target.find(".list-data"));

    //行ID
    $(row).attr("data-id", "0");
    //为每个控件生成动态id和name，否则表单验证会有问题
    var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
    $(row).attr("id", "row_" + newid);
    $(row).find("input").each(function () {
        $(this).attr("id", $(this).attr("id") + "_" + newid);
        $(this).attr("name", $(this).attr("name") + "_" + newid);
    });

    $(row).find("[data-form=radio]").radio();
    $(row).find("[data-form=checkbox]").checkbox();
    $(row).find("[data-form=datepicker]").datepicker({ clearBtn: true });
    $(row).find("[data-form=colorpicker]").colorpicker();
    $(row).find("[data-form=wycombo]").wycombo();

    //回车不关闭对话框
    handlerKeydown(row);

    //字段逻辑
    bindLogicEvent(row);

    //数据核查
    bindCheckrule(row);

    //行数据
    var selectReplaceObj = $("<select id='row_" + newid + "'></select>");

    if (data) {
        if (typeof data === "string") {
            data = JSON.parse(data);
        }

        //行ID
        $(row).attr("data-id", data.Irow_id);
        //行数据
        $(row).find(".list-crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            $.each(data.FieldDatas, function (i, fielddata) {
                if (fielddata.Fieldcode == fieldcode) {
                    setInputValue($input, fielddata);
                    return false;
                }
            });
        });

        if (data.Isview == "1") {
            //$(row).find(".editRow").hide();
            $(row).find(".delRow").hide();
        }

        //修改行
        $(row).find(".editRow").click(function () {
            var rowId = $(row).attr("id");
            var rowDataId = $(row).attr("data-id");
            var $table = $(row).closest(".crftable");
            var width = $table.attr("data-width");
            var height = $table.attr("data-height");
            var id = $table.attr("data-id");
            var visitid = $("#Visit_id").val();
            var crfid = $table.closest(".crfroot").attr("data-id");
            dlg.setSize(width, height);
            dlg.setURL("查看/修改", "/Study/Patient/CrfInputRow/" + studyid + "/" + crfid + "/" + rowDataId + "?p=" + studypatientid + "&f=" + id + "&v=" + visitid + "&row=" + rowId + "&callback=addRow");
            dlg.show();
        });

        //删除行事件
        $(row).find(".delRow").click(function () {
            $.messager.confirm("确认", "确认要删除该行吗？", function (result) {
                if (result) {
                    delRow($target, $(row));
                }
            });
        });

        //上移、下移
        $(row).find(".moveUp").click(function () {
            if (row.prev()) {
                row.insertBefore(row.prev());
            }
        });
        $(row).find(".moveDown").click(function () {
            if (row.next()) {
                row.insertAfter(row.next());
            }
        });

        //add
        /*替换原来的下拉框*/
        $(row).find(".list-crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            var id = $input.attr("id");

            $.each(data.FieldDatas, function (i, fielddata) {

                if (fielddata.Fieldcode == fieldcode) {
                    var value = fielddata.Value;
                    var valuestr = fielddata.Valuestr;
                    if (value != undefined && value != null && value != "") {
                        value = value
                    } else {
                        value = valuestr;
                    }

                    //console.log($input.attr("data-datas"));
                    var datadatas = $input.attr("data-datas");
                    var inputid = $input.attr("id");
                    //下拉框选中的值
                    var selectedText = $input.text();
                    var selectedVal = $input.val();
                    //WYCombo CRFAutoComplete  
                    if ($.trim(datadatas).length > 0) {//自定义的序列
                        //console.log("wycomb datadatas  下拉框");
                        //console.log(datadatas);
                        $input.next("i").remove();

                        //var datas = eval("(" + datadatas + ")");
                        //if (datas && datas.length > 0) {
                        //    var replaceHolder = $("<div id='" + id + "'></div>");
                        //    replaceHolder.addClass("form-control crfform-input");
                        //    replaceHolder.attr("rel-input", id);
                        //    replaceHolder.css("width", "500px");
                        //    $input.next().remove();
                        //    $input.after(replaceHolder);
                        //    //移除原来的下拉框
                        //    $input.remove();
                        //    var haschecked = false;
                        //    $.each(datas, function (index, v) {
                        //        var text = v.text;
                        //        var value = v.value;
                        //        if (selectedVal == value) {
                        //            haschecked = true;
                        //            replaceHolder.append("<label class='radio'><input class='r_ck" + inputid + "' cheked='checked' name='r_ck" + inputid + "' type='radio' value='" + value + "'>" + mapstr(value, text) + "</input></label>");
                        //        } else {
                        //            replaceHolder.append("<label class='radio'><input class='r_ck" + inputid + "'  name='r_ck" + inputid + "' type='radio' value='" + value + "'>" + mapstr(value, text) + "</input></label>");
                        //        }
                        //    });
                        //}

                        //if ($.trim(selectedVal).length == 0) {
                        //    return;
                        //}
                        //
                        ////如果都没选中，添加一个默认
                        //if (!haschecked) {
                        //    $($(".r_ck" + inputid)[0]).parent().before("<div><label class='radio'><input class='r_ck" + inputid + "' checked='checked'  name='r_ck" + id + "' type='radio' value='" + value + "'>" + mapstr(value, value) + "</input></label></div>");
                        //}
                    }

                    //console.log($input.attr("data-url"));
                    var url = $input.attr("data-url");
                    //WYComboAjax
                    if ($.trim(url).length > 0) {
                        //console.log("wycomb url  下拉框");
                        //console.log("wycomb url  下拉框" + url);

                        $input.next("i").remove();
                        ////查询下拉录入数据字典
                        //var replaceHolder = $("<div id='" + id + "'></div>");
                        //replaceHolder.addClass("form-control crfform-input");
                        //replaceHolder.attr("rel-input", id);
                        //replaceHolder.css("width", "280px");

                        ////移除下拉箭头
                        //$input.next().remove();
                        ////添加新的元素
                        //$input.after(replaceHolder);
                        ////移除旧的
                        //$input.remove();
                        //replaceHolder.append("<label class='radio'><input class='r_ck' checked='checked'  name='r_ck" + id + "' type='radio' value='" + value + "'>" + mapstr(value, value) + "</input></label>");

                        //$.ajax({
                        //    type: "post",
                        //    url: url,
                        //    success: function (data) {
                        //        
                        //        if (data) {
                        //            $.each(data, function (index, d) {
                        //                if (d.value == value) {
                        //                    replaceHolder.append("<label class='radio'><input class='r_ck'  name='r_ck" + id + "' type='radio' value='" + d.value + "'>" + d.text + "=" + d.value + "</input></label>");
                        //                } else {
                        //                    replaceHolder.append("<label class='radio'><input class='r_ck'  name='r_ck" + id + "' type='radio' value='" + value + "'>" + value + "=" + value + "</input></label>");
                        //                }
                        //            });
                        //        }
                        //    },
                        //    error: function (xhr, ajaxOptions, thrownError) {
                        //        console.log(thrownError);
                        //    }
                        //});
                    }

                    //普通下拉框
                    if ($.trim(url).length == 0 && $.trim(datadatas).length == 0) {
                        var currentrow = $input.closest("tr");
                        $.each(currentrow.find("select"), function (k, v) {
                            //console.log("wycomb中普通下拉框  下拉框 当前列表行 ");
                            //console.log(currentselect);

                            var currentselect = $(v);
                            var id = currentselect.attr("id");
                            var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
                            //每个下拉框替换
                            var replaceHolder = $("<ul id='" + id + "'></li>");
                            replaceHolder.addClass("form-control crfform-input");
                            replaceHolder.attr("rel-input", id);
                            replaceHolder.css("width", replaceHolderCss.ulwidth);
                            //console.log(currentselect);

                            //下拉框选中的值
                            var selectedText = currentselect.find("option:selected").text();//$input.text();
                            var selectedVal = currentselect.val();
                            //取出input value
                            var opts = currentselect.find("option");
                            $.each(opts, function (k, v) {
                                var op = $(v);
                                var value = op.val();
                                var text = op.text();
                                if ($.trim(value).length == 0)
                                    return;

                                replaceHolder.append("<li><label class='radio'><input class='r_ck" + newid + "'  name='r_ck" + newid + "' type='radio' value='" + value + "'>" + mapstr(value, text) + "</input></label></li>");
                            });

                            currentselect.after(replaceHolder);
                            replaceHolder.parent().css("text-align", "left");
                            //移除原来的下拉框
                            currentselect.remove();

                            //让ck选中下拉框选中的
                            $.each(replaceHolder.find(".r_ck" + newid), function (k, v) {
                                var val = $(v).val();
                                if (selectedVal == val) {
                                    $(this).attr('checked', true);
                                    return;
                                }
                            });
                        });
                    }
                    return false;
                }
            });
        });
    }

    return row;
}

//显示样子,value=text || text=value
function mapstr(value, text) {
    if ($.trim(text).length != 0) {
        return text;
    }

    if ($.trim(value).length != 0) {
        return value;
    }

    return "";
    //if ($.trim(text) == $.trim(value))
    //{
    //    return $.trim(text);
    //}

    //return text + "=" + value;
}

//todo: by yuxb 事件冒泡，模拟单机a的click,然后跳转到新页面，避免被浏览器拦截
//参数说明：f=媒介对象，无具体意义；url=传进的url
$.fn.extend({
    clickOpenWin: function (f, url) {

        var dataKey = "clickOpenWin.dataKey";
        var me = $(this);
        var A = me.data(dataKey);

        var returnData = null;
        if (!A) {
            A = $("<A target='_blank' class='proxyA'>");
            me.data(dataKey, A);
            A.click(function (e) {

                if (returnData) {
                    A.attr("href", returnData);
                } else {
                    A.before(me);
                    e.stop();
                }
            });
        }
        $(this).parent().append(A);
        $(this).appendTo(A);

        me.click(function () {
            A.attr("href", "#|");

            returnData = url;

            f.apply(this, arguments);
        });
    }

});

//返回上一页
function callbackurl() {
    window.location.href = document.referrer;

}

/*
    tabs
    */
var tabmap = {};
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
        var content = createFrame(url);
        $('#' + div).tabs('add', {
            title: title,
            width: "auto",
            hight: "auto",
            content: content,
            fit: false,
            closable: true
        });
    }

    $(".panel-body.panel-body-noheader.panel-body-noborder,.panel").css("width", "auto").css("overflow", "hidden");
}

function createFrame(url) {
    var s = '<iframe onload="toScroll(this)" scrolling="auto" class="crfiframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"   src="' + url + '" style="width:100%;height:100%;"></iframe>';
    return s;
}



/*
tabs
*/

/*
页面额外调整
*/
//输入框太窄
function resizeInputWidth() {
    //输入框太窄
    $.each($("input"), function (k, v) {

        if ($(v).attr("data-fieldid") == "Ti_name") {
            $(v).css("minWidth", "200px");
            $(v).css("width", "auto");
        }
    });
}

//隐藏顶部标题
function hideTopTitle() {
    $(".corner-all").hide();
}

//隐藏掉的关联字段显示出来
function showHiddenRelationShipField() {

    $.each($(".table-crfform"), function (k, v) {

        $(v).find(".list-data").parent().parent().parent().show();

        $.each($(v).find("td"), function (k, v) {
            //console.log($(v));
            if ($(v).attr("data-ref-type") || $(v).attr("data-ref-type") == "show")
                $(v).show();
        });
    });
}

/*
替换下拉框
*/
function replaceSelectBySetCrfData(data) {
    //ispdf=1替换原来的下拉框
    if (ispdfpage == "1") {
        var crfid = $("#Crf_id").val();
        $(this).replaceselect(crfid);
    }

    $.each(data.TableDatas, function (i, tabledata) {
        var $table = $("#" + tabledata.Fieldcode);

        if (tabledata.Rows != null && tabledata.Rows != undefined) {
            //$table.find(".list-data").addClass("datasaved");
            $table.find(".list-data").html("");

            //ispdf=1替换原来的下拉框
            if ($.trim(ispdfpage) == "1") {//todo:1
                $.each(tabledata.Rows, function (row, rowdata) {
                    $table.replaceautocomplete($table, rowdata);
                });
            } else {
                $.each(tabledata.Rows, function (row, rowdata) {
                    addRow($table, rowdata);
                });
            }
        }
    });

    $.each(data.CrfTableRowDatas, function (i, tablerowdata) {
        var $tablerow = $("#" + tablerowdata.Fieldcode);

        $tablerow.find(".crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            $.each(tablerowdata.FieldDatas, function (i, fielddata) {
                if (fielddata.Fieldcode == fieldcode) {
                    setInputValue($input, fielddata);
                    return false;
                }
            });
        });

        //ispdf=1替换原来的下拉框
        if (ispdfpage == "1") {
            var crfid = $("#Crf_id").val();
            $(this).replaceselect(crfid);
        }

        $.each(tablerowdata.TableDatas, function (i, tabledata) {
            var $table = $("#" + tabledata.Fieldcode);

            if (tabledata.Rows != null && tabledata.Rows != undefined) {
                $table.find(".list-data").html("");

                //ispdf=1替换原来的下拉框
                if ($.trim(ispdfpage) == "1") {//todo:1
                    $.each(tabledata.Rows, function (row, rowdata) {
                        $table.replaceautocomplete($table, rowdata);
                    });
                } else {
                    $.each(tabledata.Rows, function (row, rowdata) {
                        addRow($table, rowdata);
                    });
                }
            }
        });
    });
}

function replaceSelectBySetCrfDataTableData(data) {
    if (ispdfpage == "1") {
        var crfid = $("#Crf_id").val();
        $(this).replaceselect(crfid);
    }

    $.each(data.TableDatas, function (i, tabledata) {
        var $table = $("#" + tabledata.Fieldcode);

        //$table.find(".list-data").addClass("datasaved");
        $table.find(".list-data").html("");
        //ispdf=1替换原来的下拉框
        if ($.trim(ispdfpage) == "1") {//todo:1
            $.each(tabledata.Rows, function (row, rowdata) {
                $table.replaceautocomplete($table, rowdata);
            });
        } else {
            $.each(tabledata.Rows, function (row, rowdata) {
                addRow($table, rowdata);
            });
        }

    });
}

function replaceSelectBySetDefaultCrfData($crf, crfid) {
    //普通下拉框
    if (ispdfpage == "1") {
        $(this).replaceselect(crfid);
    }
    // 列表中下拉框
    $(this).replaceautocompletedefault($crf);
}
/*
替换下拉框
*/
//function replaceSelectBySetDefaultCrfDataTableDate() { }

//显示隐藏的单击按钮弹出框 有数据 (这里仅仅负责设置为可见，不负责重置尺寸，重置尺寸要在每个frame加载完再去重新设置frame的div.height才有效。resizediv方法仅在crf模版中有效)
function showHiddenTableWindowCrfInputRowFrame($target, currentframe, container, frameSrc) {

    if ($target.find(".showAddWindow") && $target.find(".showAddWindow").length > 0) {


        container.append(currentframe);

        //var frameSrc="/PDFExport/PageExchange/CrfInputRowPDF/" + studyid + "/" + crfid + "/0?p=" + studypatientid + "&f=" + fieldid + "&v=" + visitid + "&callback=addRow";
        //$("#CrfInputRowFrame").attr("src", frameSrc);

        //$("#CrfInputRowFrame").parent().show();

        ////如果有多个$target
        //if (tagetIndex > 0) {
        //    var frameContainer = $("#CrfInputRowFrame").parent();
        //    $("#CrfInputRowFrame").clone().attr({ "id": "#CrfInputRowFrame" + tagetIndex, "src": frameSrc }).appendTo(frameContainer);
        //}
    }
}

//显示隐藏的单击按钮弹出框 模版(这里仅仅负责设置为可见，不负责重置尺寸，重置尺寸要在每个frame加载完再去重新设置frame的div.height才有效。resizediv方法仅在crf模版中有效)
function showHiddenTableWindowCrfTableBuilderFrame($target, currentframe, container, frameSrc) {
    var crfid = $target.closest(".crfroot").attr("data-id");
    var width = $target.attr("data-width");
    var height = $target.attr("data-height");
    var fieldid = $target.attr("data-id");

    //有按钮才添加frame
    if ($target.find(".showAddWindow") && $target.find(".showAddWindow").length > 0) {

        container.append(currentframe);
        ////添加第一个frame
        //var frameSrc = "/PDFExport/PageExchange/CrfTableBuilderPDF/" + $target.attr("data-id") + "?callback=addRow";
        //$("#CrfTableBuilderFrame").attr("src", frameSrc);
        //$("#CrfTableBuilderFrame").parent().show();

        ////如果有多个$target
        //if (tagetIndex > 0) {
        //    var frameContainer = $("#CrfTableBuilderFrame").parent();
        //    $("#CrfTableBuilderFrame").clone().attr({ "id": "#CrfTableBuilderFrame" + tagetIndex, "src": frameSrc }).appendTo(frameContainer);
        //}
    }
}

//弹出框内的table尺寸重置
function resizeTable($target) {
    $($target).find(".crftablerow").css("width", "auto");
}

//iframes加载完成后，重新设置内容高度
function resizediv(iframes) {

    $.each(iframes, function (k, v) {
        var iframe = $(v)[0];
        //不用onload直接处理
        var divcontent = $('.dialog-content', iframe.contentWindow.document || iframe.contentDocument);//2016 03 30
        var height = divcontent.height();

        if (height > 0) {
            height += 50;
            $(iframe).css("height", height + "px");
        }


        //if (iframe.attachEvent) {
        //    iframe.attachEvent("onload", function () {
        //        var divcontent = $('.dialog-content', iframe.contentWindow.document || iframe.contentDocument);
        //        var height = divcontent.height();
        //        if (height > 0) {
        //            height += 50;
        //            $(iframe).css("height", height + "px");
        //        }
        //    });
        //} else {
        //    iframe.onload = function () {
        //        var divcontent = $('.dialog-content', iframe.contentWindow.document || iframe.contentDocument);
        //        var height = divcontent.height();
        //        if (height > 0) {
        //            height += 50;
        //            $(iframe).css("height", height + "px");
        //        }
        //    };
        //}
    });
}

function resizediv(iframes, addH) {

    $.each(iframes, function (k, v) {
        var iframe = $(v)[0];
        //不用onload直接处理
        var divcontent = $('.dialog-content', iframe.contentWindow.document || iframe.contentDocument);//2016 03 30
        var height = divcontent.height();
        console.log("frameheight:" + height);

        if (height > 0) {
            height += 50 + addH;
            $(iframe).css("height", height + "px");
        }


    });
}

//PDF中表格换页带表格头 ，替换掉表格thead
function replacethead(document) {
    var th = $(document).find("thead");
    $.each(th, function (k, v) {

        var tr = $(v).html();
        $(v).after($(tr));
        $(v).remove();
    });
}


/*
针对业务需求需要的crf页面进行元素替换
*/