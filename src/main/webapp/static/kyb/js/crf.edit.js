

//编辑对话框
var dlg = new MyAppDialog(1000, 700);


//CRF字段验证
jQuery.validator.addMethod("crfRule", function (value, element) {
    if (this.optional(element)) {
        return "dependency-mismatch";
    }

    var input = $(element);
    var fielddata = getInputValue(input);

    var jsondata = {
        Study_patient_id: $("#Study_patient_id").val(),
        Visit_id: $("#Visit_id").val(),
        Crf_id: $(input).closest(".crfroot, .crftablerow").attr("data-id"),
        Crf_field_id: $(input).attr("data-id"),
        Fieldvalue: fielddata.Valuestr,
        Compare_fieldvalue: []
    };

    if ($(input).attr("data-compare")) {
        var comparelist = JSON.parse($(input).attr("data-compare"));
        $.each(comparelist, function (index, item) {
            var $compareinput = null;
            if ($(input).hasClass("list-crffield")) {
                var $row = $(input).closest("tr");
                $compareinput = $row.find(".list-crffield[data-id=" + item.fid + "]");
            }

            if ($compareinput == null || $compareinput.size() == 0) {
                var $crf = $(input).closest(".crfroot[data-id=" + item.cid + "],.crftablerow[data-id=" + item.cid + "]");
                $compareinput = $crf.find(".crffield[data-id=" + item.fid + "]");
            }

            if ($compareinput != null && $compareinput.size()) {
                var comparefielddata = getInputValue($compareinput);
                jsondata.Compare_fieldvalue.push({
                    Rule_id: item.rid,
                    Fieldvalue: comparefielddata.Valuestr
                });
            }
        });
    }

    var previous = this.previousValue(element);
    if (!this.settings.messages[element.name]) {
        this.settings.messages[element.name] = {};
    }
    previous.originalMessage = this.settings.messages[element.name].crfRule;
    this.settings.messages[element.name].crfRule = previous.message;

    if (previous.old === value) {
        return previous.valid;
    }

    previous.old = value;
    var validator = this;
    this.startRequest(element);

    $.ajax({
        type: "post",
        url: "/Study/Patient/FieldDataCheck",
        data: {
            json: JSON.stringify(jsondata)
        },
        success: function (e) {
            var errormsg = "";
            if (e.Content && e.Content != null) {
                $.each(e.Content.Errors, function (index, item) {
                    if (item.Type == "error") {
                        errormsg += item.Msg + "<br/>";
                    } else {
                        errormsg += "<span class='crf-rule-warning'>" + item.Msg + "</span><br/>";
                    }
                });
            }

            var valid = e.Ret == "0";
            validator.settings.messages[element.name].crfRule = previous.originalMessage;
            if (valid) {
                var submitted = validator.formSubmitted;
                validator.prepareElement(element);
                validator.formSubmitted = submitted;
                validator.successList.push(element);
                delete validator.invalid[element.name];
                validator.showErrors();

                if (errormsg != "") {
                    setFieldError(errormsg, element.name);
                }
            } else {
                var errors = {};
                var message = errormsg;
                //var message = valid || validator.defaultMessage(element, "crfRule");
                errors[element.name] = previous.message = $.isFunction(message) ? message(value) : message;
                validator.invalid[element.name] = true;
                validator.showErrors(errors);
            }
            previous.valid = valid;
            validator.stopRequest(element, valid);
        }
    });

    return "pending";
}, "CRF字段验证失败");



//关闭对话框
function closeDialog(reload) {
    dlg.close();
}
//改变弹出框标题
function setDialogTitle(title) {
    dlg.setTitle(title);
}

var popupcontent = $('<div class="crf-tips" />');
var currentinput = null;
var ischanged = false;
var changebyuser = true;
var logicevent = true;
var setdefaultval = false;
var studyid = 0;
var studypatientid = 0;

//$(document).ready(function () {
//    //$(document).bind('contextmenu', function (e) {
//    //    e.preventDefault();
//    //});

//    if ($("#Study_id").size()) {
//        studyid = $("#Study_id").val();
//    }
//    if ($("#Study_patient_id").size()) {
//        studypatientid = $("#Study_patient_id").val();
//    }

//    //初始化表单验证
//    initValidate();

//    bindLogicEvent(null);
//    bindCheckrule(null);

//    if (queryflag && canquery) {
//        if (queryflag == "1" && canquery) {
//            var btnquery = $('<a class="btn btn-mini btn-link" id="btnquery"><i class="icofont-question-sign helper-font-small" /> 发质疑</a>');
//            btnquery.appendTo(popupcontent);
//        }
//    }
//    var btnlog = $('<a class="btn btn-mini btn-link" id="btnlog"><i class="icofont-info-sign helper-font-small" /> 查看日志</a>');
//    btnlog.appendTo(popupcontent);

//    //全选
//    $("[check-all=true]").parent().change(function () {
//        var fieldcode = $(this).find("input[type=hidden]").attr("check-for");
//        $(this).closest("table").find("[data-fieldcode=" + fieldcode + "]").parent().radio("setValue", $(this).attr("data-value"));
//    });

//    //随机按钮
//    var $randombtn = $(".randombutton");
//    var $armcode = $("[data-fieldid=Armcode]");
//    if ($randombtn.size()) {
//        setInputDisabled($armcode, true);

//        //随机
//        $randombtn.click(function (evt) {
//            evt.preventDefault();

//            if ($armcode.val() != "") {
//                $.messager.confirm("操作提醒", "当前受试者已分配随机号，确认要重新随机吗？", function (r) {
//                    if (r) {
//                        getRandomArm();
//                    }
//                });
//            } else {
//                $.messager.confirm("操作提醒", "您确定要对当前受试者进行随机分组吗？", function (r) {
//                    if (r) {
//                        getRandomArm();
//                    }
//                });
//            }
//        });

//        //获取随机结果
//        getRandomResult();
//    }
//    //关闭时释放锁定的随机数
//    $(window).unload(function () { releaseRandom(); });
//});

//随机分组
function getRandomArm() {
    var randomkey = "";

    $(".randomfield").each(function () {
        randomkey += $(this).val() + "/";
    });

    var jsondata = {
        Study_id: studyid,
        Study_patient_id: studypatientid,
        Randomkey: randomkey,
        Random_id: 0,
        Random_expiretime: "",
        Patnumber: null
    };

    var $armcode = $("[data-fieldid=Armcode]");
    var $randomnum = $("[data-fieldid=Randomnumber]");
    var $patnumber = $("[data-fieldid=Patnumber]");
    var $randombtn = $(".randombutton");
    if ($patnumber.size()) {
        jsondata.Patnumber = $patnumber.val();
    }
    if ($randombtn.attr("data-randomid") != undefined) {
        jsondata.Random_id = $randombtn.attr("data-randomid");
    }
    if ($randombtn.attr("data-expiretime") != undefined) {
        jsondata.Random_expiretime = $randombtn.attr("data-expiretime");
    }

    //
    layer.msg("正在获取随机结果...", { icon: 16, time: 0 });

    $.ajax({
        type: "post",
        url: "/Study/Patient/PatientRandomV2",
        data: {
            json: JSON.stringify(jsondata)
        },
        success: function (e) {
            //关闭加载层
            layer.closeAll();

            if (e.Ret == "0") {
                if ($patnumber.size() && $patnumber.val() != "" && $patnumber.val() != e.Content.Patnumber) {
                    $.messager.confirm("提醒", "随机获取的病例编号与当前病例编号不一致，确认要替换当前值吗？", function (r) {
                        if (r) {
                            setRandomResult(e);
                        }
                    });
                } else {
                    setRandomResult(e);
                    $.messager.alert("操作提示", "获取随机数成功！", "info");
                }
            } else {
                $randombtn.removeAttr("data-randomid");
                $randombtn.removeAttr("data-expiretime");
                $.messager.alert("操作失败", e.Msg, "warning");
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //关闭加载层
            layer.closeAll();

            showError(xhr);
        }
    });
}
//
function setRandomResult(e) {
    var $armcode = $("[data-fieldid=Armcode]");
    var $randomnum = $("[data-fieldid=Randomnumber]");
    var $patnumber = $("[data-fieldid=Patnumber]");
    var $randombtn = $(".randombutton");

    setInputValueNew($armcode, e.Content.Armcode, e.Content.Armname);
    if ($randomnum.size()) {
        setInputValueNew($randomnum, e.Content.Randomnum, e.Content.Randomnum);
    }
    if ($patnumber.size()) {
        changebyuser = false;
        $patnumber.val(e.Content.Patnumber);
        changebyuser = true;
    }

    $randombtn.attr("data-randomid", e.Content.Id);
    $randombtn.attr("data-expiretime", e.Content.Expiretime);

    var info = "<br/>随机数：" + e.Content.Randomnum + "<br/>";
    info += "随机时间：" + e.Content.Oprtdate + "<br/>";
    info += "随机人员：" + e.Content.Oprtuser;

    var td = $randombtn.closest("td");
    var randomresult = $("#randominfo");
    if (randomresult.size() == 0) {
        randomresult = $("<span id='randominfo' class='color-blue' />");
        randomresult.appendTo(td);
    }
    randomresult.html(info);
}
//验证分组信息是否过期
function checkRandom() {
    var $randombtn = $(".randombutton");
    if ($randombtn.size()) {
        if ($randombtn.attr("data-expiretime") != undefined) {
            var expiretime = new Date($randombtn.attr("data-expiretime"));
            var now = new Date();
            if (expiretime.getTime() < now.getTime()) {
                $.messager.alert("提醒", "随机结果已过期，请重新执行随机操作！", "warning");
                return false;
            }
        }
    }

    return true;
}
//释放锁定的随机数
function releaseRandom() {
    var $randombtn = $(".randombutton");
    if ($randombtn.size()) {
        if ($randombtn.attr("data-randomid") != undefined) {
            var jsondata = {
                Study_id: studyid,
                Study_patient_id: 0,
                Randomkey: "",
                Random_id: 0,
                Random_expiretime: "",
                Patnumber: null
            };
            jsondata.Random_id = $randombtn.attr("data-randomid");
            jsondata.Random_expiretime = $randombtn.attr("data-expiretime");
            $.ajax({
                type: "post",
                url: "/Study/Patient/ReleseRandomnum",
                data: {
                    json: JSON.stringify(jsondata)
                }
            });
        }
    }
}
//显示随机结果
function getRandomResult() {
    if (studypatientid == 0) return;

    var $randombtn = $(".randombutton");
    if ($randombtn.size()) {
        $.ajax({
            type: "post",
            url: "/Study/Patient/GetRandomResult",
            data: {
                study_id: studyid,
                study_patient_id: studypatientid
            },
            success: function (e) {
                if (e.Ret == "0") {
                    var info = "<br/>随机数：" + e.Content.Randomnum + "<br/>";
                    info += "随机时间：" + e.Content.Oprtdate + "<br/>";
                    info += "随机人员：" + e.Content.Oprtuser;

                    var td = $randombtn.closest("td");
                    var randomresult = $("#randominfo");
                    if (randomresult.size() == 0) {
                        randomresult = $("<span id='randominfo' class='color-blue' />");
                        randomresult.appendTo(td);
                    }
                    randomresult.html(info);
                }
            }
        });
    }
}

//CRF保存成功后的全局处理
function dataSaved() {
    ischanged = false;

    var $randombtn = $(".randombutton");
    if ($randombtn.size()) {
        $randombtn.removeAttr("data-randomid");
        $randombtn.removeAttr("data-expiretime");
    }
}

function initValidate() {
    //$.metadata.setType("attr", "validate");
    //表单验证
    $('#inputform').validate({
        errorPlacement: function (error, element) {
            if (element.closest(".input-append").size()) {
                error.appendTo(element.closest(".input-append").parent());
            } else if (element.closest("[data-form=radio]").size()) {
                error.appendTo(element.closest("[data-form=radio]").parent());
            } else if (element.closest("[data-form=checkbox]").size()) {
                error.appendTo(element.closest("[data-form=checkbox]").parent());
            } else {
                error.appendTo(element.parent());
            }
        }
    });
}
function setFieldErrorList(errlist) {
    if (errlist && errlist.length > 0) {
        $.each(errlist, function (index, data) {
            var msg = "";
            $.each(data.Errors, function (i, errdata) {
                if (errdata.Type && errdata.Type == "warning") {
                    msg += "<span class='crf-rule-warning'>" + errdata.Msg + "</span><br/>";
                } else {
                    msg += errdata.Msg + "<br/>";
                }
            });
            setFieldError(msg, data.Name);
        });
    }
}
function setFieldError(errmsg, name) {
    var element = $("[name=" + name + "]");
    var error = $("label[for=" + name + "]");
    if (!error.size()) {
        error = $("<label />");
        error.addClass("error");
        error.attr("for", name);
    }
    error.html(errmsg);

    if (element.closest(".input-append").size()) {
        error.appendTo(element.closest(".input-append").parent());
    } else if (element.closest("[data-form=radio]").size()) {
        error.appendTo(element.closest("[data-form=radio]").parent());
    } else if (element.closest("[data-form=checkbox]").size()) {
        error.appendTo(element.closest("[data-form=checkbox]").parent());
    } else {
        error.appendTo(element.parent()[0]);
    }
    error.show();
}

function bindCrfTips() {
    //录入完成之前不显示Tips
    if (isfinished != "1") return;

    $(".crffield, .list-crffield").each(function () {
        var $input = $(this);
        var $fieldrect = $(this);

        if ($input.is("span")) {
            ;
        }
        else {
            if ($input.parent().attr("data-form") == "radio") {
                $fieldrect = $input.parent();
            }
            else if ($input.parent().attr("data-form") == "checkbox") {
                $fieldrect = $input.parent();
            }
            else if ($input.parent().attr("data-form") == "datepicker") {
                $fieldrect = $input.parent();
            }
            else if ($input.is("select") && $input.prop("disabled")) {
                //下拉框disabled后，不相应mousedown事件，所以要加一个遮罩层
                var offset = $input.offset();
                $fieldrect = $("<div />");
                $fieldrect.css("position", "absolute");
                $fieldrect.css("left", offset.left);
                $fieldrect.css("top", offset.top);
                $fieldrect.css("width", $input.outerWidth());
                $fieldrect.css("height", $input.outerHeight());
                $fieldrect.css("z-index", 100);
                $fieldrect.appendTo($("body"));
            }
        }

        $fieldrect.parent().contextmenu(function (e) {
            debugger;
            e.preventDefault();

            if ($fieldrect.is(".crffield, .list-crffield")) {
                currentinput = $fieldrect;
            } else {
                currentinput = $fieldrect.find(".crffield, .list-crffield");
            }
            var id = currentinput.attr("data-data-id");
            var crffieldid = currentinput.attr("data-id");
            if (id == undefined || id == "" || id == "0") return;

            var itop = $fieldrect.offset().top;
            var ileft = $fieldrect.offset().left;

            //crf_field_id
            popupcontent.find(".btn").attr("data-target", id);
            popupcontent.find(".btn").attr("crf_field_id", crffieldid); //Liu+

            layer.tips(popupcontent.prop("outerHTML"), $fieldrect.get(0), {
                tips: [1, "#72dfff"],
                maxWidth: 185,
                time: 0,
                closeBtn: true
            });

            //发质疑
            $("#btnquery").click(function (evt) {
                evt.preventDefault();

                layer.closeAll();

                var id = $(this).attr("data-target"); //" + crffieldid + "/" + crfid + "/
                var study_patitent_id = $("#Study_patient_id").val(); //课题病例ID
                var crfid = $("#Crf_id").val();//crf表ID   
                var visitid = $("#Visit_id").val();

                dlg.setSize(1200, 600);
                //dlg.setURL("质疑", "/Study/Patient/CrfDataFiledQuery/" + id + "?" + Math.random() + "&c=" + crfid + "&f=0");
                dlg.setURL("质疑", "/Study/Query/QueryForm/?" + Math.random() + "&c=" + crfid + "&v=" + visitid + "&f=0&fielddataid=" + id);
                dlg.show();
            });

            //看日志
            $("#btnlog").click(function (evt) {
                debugger;
                evt.preventDefault();
                layer.closeAll();
                //T_fielddata.Id CrfDataFieldChangelog
                var id = $(this).attr("data-target");
                dlg.setURL("CRF字段变更日志", "/Study/Patient/CrfDataFieldChangelog/" + id + "?" + Math.random());
                dlg.show();
            });
        });
    });

    $(document).mousedown(function (e) {
        var el = $(".crf-tips");
        if (!(
            //currentinput.is(e.target) ||
            //currentinput.find(e.target).size() ||
            el.is(e.target) ||
            el.find(e.target).size())) {
            layer.closeAll();
        }
    });
}

function setCrfDisabled(crf, isdisabled) {
    var $crf = $(crf);

    $crf.find(".crffield, .list-crffield").each(function () {
        var $input = $(this);

        if ($input.is("span")) {

        } else {
            setInputDisabled($input, isdisabled);
        }
    });

    $crf.find(".btn").each(function () {
        if (isdisabled) {
            $(this).hide();
        } else {
            $(this).show();
        }
    });
    //$crf.find(".randombutton").attr("disabled", true);
}

function setInputDisabled(input, isdisabled) {
    var $input = $(input);

    if ($input.parent().attr("data-form") == "radio") {
        $input.parent().radio("setDisabled", isdisabled);
    }
    else if ($input.parent().attr("data-form") == "datepicker") {
        $input.parent().attr("disabled", isdisabled);
        $input.attr("readonly", isdisabled);
        $input.attr("disabled", isdisabled);
    }
    else if ($input.parent().attr("data-form") == "datepickerYMD") {
        $input.parent().dateymd("setDisabled", isdisabled);
    }
    else if ($input.parent().attr("data-form") == "checkbox") {
        $input.parent().checkbox("setDisabled", isdisabled);
    }
    else if ($input.attr("data-form") == "wycombo") {
        $input.attr("readonly", isdisabled);
        $input.attr("disabled", isdisabled);
    }
    else if ($input.is("select")) {
        $input.attr("readonly", isdisabled);
        $input.attr("disabled", isdisabled);
    }
    else {
        $input.attr("readonly", isdisabled);
        $input.attr("disabled", isdisabled);
    }

    if (!isdisabled) {
        if ($input.attr("data-remarkfor")) {
            changebyuser = false;
            $input.closest("[data-form=radio],[data-form=checkbox]").change();
            changebyuser = true;
        }
    }
}

//清除控件值
function clearInputValue(input, changeevent) {
    if (changeevent != null && changeevent != undefined && changeevent == false) logicevent = false;

    var $input = $(input);
    var $fieldrect = $(input);

    if ($input.is("span")) {
        $input.html("");
    }
    else {
        if ($input.parent().attr("data-form") == "radio") {
            $input.parent().radio("setValue", "");
        }
        else if ($input.parent().attr("data-form") == "checkbox") {
            $input.parent().checkbox("setValue", "");
        }
        else if ($input.attr("data-form") == "wycombo") {
            input.attr("data-value", "");
            input.attr("data-text", "");
            $input.val("");
            $input.change();
        }
        else if ($input.parent().attr("data-form") == "datepicker") {
            $input.val("");
        }
        else if ($input.is("select")) {
            $input.val("");
            $input.change();
        }
        else {
            $input.val("");
            $input.change();
        }
    }

    logicevent = true;
}

//单个字段赋值
function setInputValue(input, fielddata, changeevent) {
    var $input = $(input);
    var $parent = $input.parent();
    var dataform = $input.attr("data-form") == undefined ? $parent.attr("data-form") : $input.attr("data-form");

    if ($($input).val() !== "") return;

    setInputValueNew(input, fielddata.Value, fielddata.Valuestr, changeevent);
    fieldValueChanged(input, fielddata);

    var $fieldrect = $(input);
    if (dataform == "radio" || dataform == "checkbox" || dataform == "wycombo" || dataform == "datepicker" || dataform == "datepickerYMD") {
        $fieldrect = $parent;
    }

    if (dataform == "image") {
        if (fielddata.Attachfiles != null) {
            $.each(fielddata.Attachfiles, function (n, attachfile) {
                addImage($parent, attachfile);
            });
        }
    }
    else if (dataform == "file") {
        if (fielddata.Attachfiles != null) {
            $.each(fielddata.Attachfiles, function (n, attachfile) {
                addFile($parent, attachfile);
            });
        }
    }

    if (!$input.is("span")) {
        //数据ID
        $input.attr("data-data-id", fielddata.Id);

        if (fielddata.Isquery && fielddata.Isquery != "") {
            //添加质疑图标
            addQueryIcon($fieldrect, fielddata.Isquery);
        }
    }
}
//单个字段赋值
function setInputValueNew(input, value, valuestr, changeevent) {
    if (changeevent != null && changeevent != undefined && changeevent == false) logicevent = false;
    var $input = $(input);
    var $parent = $input.parent();
    var dataform = $input.attr("data-form") == undefined ? $parent.attr("data-form") : $input.attr("data-form");

    if (!$input.is("span")) {
        if ((value != "" && value != null) || (valuestr != "" && valuestr != null)) {
            $input.addClass("hasdata");
        } else {
            $input.removeClass("hasdata");
        }
    }

    if ($input.is("span")) {
        $input.html(valuestr);
    }
    else {
        if (dataform == "radio") {
            $parent.radio("setValue", value);
        }
        else if (dataform == "checkbox") {
            $parent.checkbox("setValue", value);
        }
        else if (dataform == "wycombo") {
            input.attr("data-value", value);
            input.attr("data-text", valuestr);
            if ($input.attr("data-textfield") == "value" || $input.attr("data-textfield") == "code") {
                if (value != undefined && value != null && value != "") {
                    $input.val(value);
                } else {
                    $input.val(valuestr);
                }
            } else {
                $input.val(valuestr);
            }
            $input.change();
        }
        else if (dataform == "datepicker") {
            $input.val(valuestr);
            if (isDate(valuestr)) {
                var d = new Date(valuestr);
                if (!isNaN(d)) {
                    $parent.datepicker("setDate", d);
                }
            }
        }
        else if (dataform == "datepickerYMD") {
            $parent.dateymd("setValue", valuestr);
        }
        else if ($input.is("select")) {
            $input.val(value);
            $input.change();
        }
        else if ($input.is("input")) {
            $input.val(valuestr);
            $input.change();
        }
        else {
            $input.val(valuestr);
            $input.change();
        }

        var fieldid = input.attr("data-id");
        var $naitem = input.closest("td").find("[data-na-for=" + fieldid + "]");
        //N/A选项
        if ($naitem.size()) {
            if (valuestr == $naitem.parent().text()) {
                $naitem.prop("checked", true);
                $naitem.change();
            }
        }
    }

    logicevent = true;
}

//处理Query后的事件
function onQuery(dataid, status, value, valuestr) {
    var $target = $("[data-data-id=" + dataid + "]");
    if ($target.size()) {
        if (status == "2") {
            //撤销质疑
            var querylayout = $("[query-target=" + dataid + "]");
            if (querylayout.size()) {
                querylayout.remove();
            }
        }
        else {
            addQueryIcon($target, status);
        }
    }

    //刷新CRF状态
    if (window.parent && window.parent.refreshCRF) {
        window.parent.reloadCRF();
    }

    //刷新病例状态
    if (window.parent && window.parent.refreshPatient) {
        window.parent.refreshPatient();
    }
}

//添加质疑图标
function addQueryIcon(target, status) {

    //debugger;

    var offset = target.offset();
    var dataid = target.attr("data-data-id");
    if (target.attr("data-form") == "radio") {
        dataid = target.find("input[type=hidden]").attr("data-data-id");
    }
    else if (target.attr("data-form") == "datepicker") {
        dataid = target.find("input[type=text]").attr("data-data-id");
    }

    var querylayout = $("[query-target=" + dataid + "]");
    if (!querylayout.size()) {
        //添加Query图标
        var querylayout = $("<label />");
        querylayout.attr("query-target", dataid);
        querylayout.css("position", "absolute");
        if (target.closest(".list-data").size()) {
            querylayout.css("top", -3);
            querylayout.css("margin-left", -10);
        } else {
            querylayout.css("top", 5);
            querylayout.css("margin-left", 2);
        }
        querylayout.css("display", "inline-block");
        querylayout.attr("data-status", status);

        var queryicon = $("<i class='icofont-question-sign' title='查看质疑'/>");

        switch (status) {
            case "0": // 已开放
                queryicon.css("color", "#eb3941");
                break;

            case "1": // 已回复
                queryicon.css("color", "#f9a023");
                break;

            //case "9": // 已关闭
            //    queryicon.css("color", "green");
            //    break;

            //case "2": //已撤销
            //    if (isDm) {
            //        queryicon.css("color", "#808080");
            //    }
            //    break;

            case "3": // 未开放 Draft
                if (isDm) {
                    queryicon.css("color", "#F57800");
                }
                break;

            case "5": // 已重启
                queryicon.css("color", "red");
                break;

            default:
                queryicon.css("display", "none");
                break;
        }


        queryicon.css("font-size", "18px");
        queryicon.css("width", 14);
        queryicon.appendTo(querylayout);

        querylayout.click(function (e) {
            var crfid = $("#Crf_id").val();//crf表ID
            var status = $(this).attr("data-status");
            var visitid = $("#Visit_id").val();//crf表visitid

            dlg.setSize(800, 580);
          //  dlg.setURL("质疑", "/Study/Patient/CrfDataFiledQuery/" + dataid + "?" + Math.random() + "&c=" + crfid + "&f=1");
            dlg.setURL("质疑", "/Study/Query/QueryTab/?" + Math.random() + "&c=" + crfid + "&v=" + visitid + "&f=1&fielddataid=" + dataid);
            dlg.show();
        });

        target.closest("td").css("position", "relative");
        querylayout.appendTo(target.closest("td"));
    } else {
        //更新质疑状态
        querylayout.attr("data-status", status);
        var queryicon = querylayout.find("i");
        querylayout.css("display", "inline-block");
        queryicon.css("display", "inline-block");
        switch (status) {
            case "0": // 已开放
                queryicon.css("color", "#eb3941");
                break;

            case "1": // 已回复
                queryicon.css("color", "#f9a023");
                break;

            //case "9": // 已关闭
            //    queryicon.css("color", "green");
            //    break;

            //case "2": //已撤销
            //    if (isDm) {
            //        queryicon.css("color", "#808080");
            //    }
            //    break;

            case "3": // 未开放 Draft
                if (isDm) {
                    queryicon.css("color", "#F57800");
                }
                break;

            case "5": // 已重启
                queryicon.css("color", "red");
                break;

            default:
                queryicon.css("display", "none");
                break;
        }

    }
}

//查找顶级window
function getIndexWindow() {
    var win = window;

    var i = 0;
    while (win.patientindex == undefined && !win.patientindex && i < 5) {
        win = win.parent;
        i++;
    }

    return win;
}
//获取控件状态（disabled/hidden)
function getInputStatus(input) {
    var status = "0";

    if (input.attr("data-remarkfor")) {
        if (!input.is(":visible")) {
            status = "2";
        } else if (input.attr("disabled")) {
            status = "1";
        }
    } else {
        var $target = input.closest("[data-form=radio],[data-form=checkbox],[data-form=datepicker]");
        if ($target.size()) {
            if (!$target.is(":visible")) {
                status = "2";
            }
            else if ($target.attr("disabled")) {
                status = "1";
            }
        } else {
            if (!input.is(":visible")) {
                status = "2";
            } else if (input.attr("disabled")) {
                status = "1";
            }
        }
    }

    return status;
}
//获取单个字段值
function getInputValue(input) {
    var fielddata = {
        Id: (input.attr("data-data-id") == "" || input.attr("data-data-id") == undefined) ? "0" : input.attr("data-data-id"),
        Study_crf_field_id: input.attr("data-id"),
        //Row_id: input.attr("data-rowid") == "" ? "0" : input.attr("data-rowid"),
        Study_table_id: input.attr("data-recordid"),
        Df_tableid: input.attr("data-tableid"),
        Df_fieldid: input.attr("data-fieldid"),
        Fieldkind: input.attr("data-fieldkind"),
        Fieldcode: input.attr("data-fieldcode"),
        Valuefield: (input.attr("data-textfield") == "" || input.attr("data-textfield") == undefined) ? "" : input.attr("data-textfield"),
        Name: input.attr("name"),
        Value: "",
        Valuestr: "",
        Status: getInputStatus(input)
    };

    //N/A选项
    var naitem = input.closest("td").find("[data-na-for=" + fielddata.Study_crf_field_id + "]");
    if (naitem.size()) {
        if (naitem.prop("checked")) {
            fielddata.Value = "";
            fielddata.Valuestr = naitem.parent().text();
            return fielddata;
        }
    }

    //判断如果是关联字段，并且控件是不可用或不可见状态时，直接给空值
    if ((input.attr("data-ref-fieldcode") != undefined && input.attr("data-ref-fieldcode") != "")
        || (input.parent().attr("data-ref-fieldcode") != undefined && input.parent().attr("data-ref-fieldcode") != "")
        || (input.attr("data-remarkfor") != undefined && input.attr("data-remarkfor") != "")) {
        if (!input.is(":visible") || input.attr("disabled")) {
            fielddata.Value = "";
            fielddata.Valuestr = "";
            return fielddata;
        }
    }

    if (input.is("span")) {
        fielddata.Value = "";
        fielddata.Valuestr = input.text();
    }
    else if (input.attr("data-form") == "radio") {
        fielddata.Value = input.attr("data-value");
        fielddata.Valuestr = input.attr("data-text");
    }
    else if (input.parent().attr("data-form") == "radio") {
        fielddata.Value = input.parent().attr("data-value");
        fielddata.Valuestr = input.parent().attr("data-text");
    }
    else if (input.parent().attr("data-form") == "checkbox") {
        fielddata.Value = input.parent().attr("data-value");
        fielddata.Valuestr = input.parent().attr("data-text");
    }
    else if (input.attr("data-form") == "wycombo") {
        //fielddata.Value = input.attr("data-value");
        //fielddata.Valuestr = input.val();
        if (input.attr("data-text") == input.val() || input.attr("data-value") == input.val()) {
            fielddata.Value = input.attr("data-value");
            fielddata.Valuestr = input.attr("data-text");
        } else {
            fielddata.Value = "";
            fielddata.Valuestr = input.val();
        }
    }
    else if (input.parent().attr("data-form") == "datepicker") {
        fielddata.Value = "";
        fielddata.Valuestr = input.val();
    }
    else if (input.is("select")) {
        fielddata.Value = input.val();
        fielddata.Valuestr = input.find("option:selected").text();
    }
    else {
        fielddata.Value = "";
        fielddata.Valuestr = input.val();
    }

    return fielddata;
}
function getInputValueValue(input) {
    var json = getInputValue(input);
    if (json.Value == null || json.Value == undefined || json.Value == "") {
        return json.Valuestr;
    } else {
        return json.Value;
    }
}
function getInputValueText(input) {
    var json = getInputValue(input);
    return json.Valuestr;
}

//字段逻辑
function bindLogicEvent(parent) {
    parent = parent ? parent : $("body");

    parent.find(".crffield, .list-crffield").each(function () {
        var $input = $(this);
        if ($input.is("span")) {
            ;
        }
        else {
            if ($(this).parent().attr("data-form") == "radio") {
                $(this).parent().find("[type=checkbox]").focus(function () {
                    if (window && window.parent && window.parent.searchText) {
                        window.parent.searchText($input.attr("data-id"));
                    }
                    else if (window && window.parent && window.parent.parent && window.parent.parent.searchText) {
                        window.parent.parent.searchText($input.attr("data-id"));
                    }
                });

                $(this).parent().radio().change(function () {
                    if (changebyuser) {
                        fieldValueChanged($input);
                    }
                });
            }
            else if ($(this).parent().attr("data-form") == "checkbox") {
                $(this).parent().find("[type=checkbox]").focus(function () {
                    if (window && window.parent && window.parent.searchText) {
                        window.parent.searchText($input.attr("data-id"));
                    }
                    else if (window && window.parent && window.parent.parent && window.parent.parent.searchText) {
                        window.parent.parent.searchText($input.attr("data-id"));
                    }
                });

                $(this).parent().checkbox().change(function () {
                    if (changebyuser) {
                        fieldValueChanged($input);
                    }
                });
            } else {
                $input.focus(function () {
                    if (window && window.parent && window.parent.searchText) {
                        window.parent.searchText($input.attr("data-id"));
                    }
                    else if (window && window.parent && window.parent.parent && window.parent.parent.searchText) {
                        window.parent.parent.searchText($input.attr("data-id"));
                    }
                });

                $input.change(function () {
                    if (changebyuser) {
                        fieldValueChanged($input);
                    }
                });
            }
        }
    });

    //N/A选项
    parent.find("[data-form=naitem]").each(function () {
        var $naitem = $(this);
        var $target = $naitem.closest("td").find("[data-id=" + $naitem.attr("data-na-for") + "]");

        $naitem.change(function () {
            if ($naitem.prop("checked")) {
                $target.val($naitem.parent().text());
                setInputDisabled($target, true);
            } else {
                setInputDisabled($target, false);
            }
        });
    });
}

//值改变事件，控制关联字段的显示/隐藏
function fieldValueChanged(target, fielddata) {
    //获取字段数据
    if (fielddata == undefined || fielddata == null) {
        fielddata = getInputValue(target);
    }

    if (logicevent && changebyuser && !setdefaultval) {
        //记录数据已修改（退出时提示是否保存）
        ischanged = true;

        //必填项验证
        if (target.attr("data-required-warning")) {
            if (fielddata.Valuestr == "") {
                setFieldError("<span class='crf-rule-warning'>" + target.attr("data-required-warning") + "</span>", target.attr("name"));
            } else {
                var error = $("label[for=" + target.attr("name") + "]");
                if (error.size()) error.remove();
            }
        }
    }

    //控制关联字段的显示/隐藏
    fieldRefChanged(target, fielddata);

    //执行医学逻辑
    if (logicevent) {
        var fieldkey = getFieldKey(fielddata);

        //bindBaselogic(target, fieldkey, fielddata);
        bindDiaglogic(target, fieldkey, fielddata);
        //bindChemlogic(target, fieldkey, fielddata);
        bindCtcaelogic(target, fieldkey, fielddata);
        //bindInspectlogic(target, fieldkey, fielddata);
        bindRadiologic(target, fieldkey, fielddata);
        bindRecistlogic(target, fieldkey, fielddata);
        bindSurgerylogic(target, fieldkey, fielddata);
        try {
            if (bindOtherlogic) {
                bindOtherlogic(target, fieldkey, fielddata);
            }
        } catch (e) { }
    }
}

//控制关联字段的显示/隐藏
function fieldRefChanged(target, fielddata) {
    if (!target.is("span")) {
        if ((fielddata.Value != "" && fielddata.Value != null) || (fielddata.Valuestr != "" && fielddata.Valuestr != null)) {
            target.addClass("hasdata");
        } else {
            target.removeClass("hasdata");
        }
    }

    var $region = target.closest(".list-data");
    if ($region.size()) {
        var $row = target.closest("tr");
        //控制关联字段
        $row.find("[data-ref-fieldcode='" + fielddata.Fieldcode + "']").each(function () {
            var ref_itemvalue = $(this).attr("data-ref-itemvalue").split(',');
            var ref_type = $(this).attr("data-ref-type");
            //if (ref_itemvalue == (fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value)) {
            var fieldval = (fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value);

            var ret = false;
            if (fieldval != null && fieldval != undefined) {
                $.each(fieldval.split(','), function (index, val) {
                    if (val != "" && $.inArray(val, ref_itemvalue) >= 0) {
                        ret = true;
                        return false;
                    }
                });
            }

            if (ret) {
                if (ref_type == "show" || ref_type == "") {
                    $(this).show();
                } else if (ref_type == "hide") {
                    $(this).hide();
                } else if (ref_type == "enable") {
                    $(this).find(".list-crffield").each(function () {
                        setInputDisabled($(this), false);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".list-crffield").each(function () {
                        //clearInputValue($(this));
                        setInputDisabled($(this), true);
                    });
                }
            } else {
                if (ref_type == "show" || ref_type == "") {
                    $(this).hide();
                } else if (ref_type == "hide") {
                    $(this).show();
                } else if (ref_type == "enable") {
                    $(this).find(".list-crffield").each(function () {
                        //clearInputValue($(this));
                        setInputDisabled($(this), true);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".list-crffield").each(function () {
                        setInputDisabled($(this), false);
                    });
                }
            }
        });

        //控制备注字段
        $row.find("[data-remarkfor='" + fielddata.Fieldcode + "']").each(function () {
            var ref_itemvalue = $(this).attr("data-ref-itemvalue");
            var val = (fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value);
            if (val == undefined || val == null) {
                $(this).attr("disabled", true);
            }
            else if ($.inArray(ref_itemvalue, val.split(',')) >= 0) {
                $(this).attr("disabled", false);
            } else {
                $(this).attr("disabled", true);
            }
        });
    } else {
        var $root = target.parents(".crfroot,.crftablerow");
        //控制关联字段
        $root.find("[data-ref-fieldcode='" + fielddata.Fieldcode + "']").each(function () {
            var ref_itemvalue = $(this).attr("data-ref-itemvalue").split(',');
            var ref_type = $(this).attr("data-ref-type");
            var fieldval = (fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value);

            var ret = false;
            if (fieldval != null && fieldval != undefined) {
                $.each(fieldval.split(','), function (index, val) {
                    if (val != "" && $.inArray(val, ref_itemvalue) >= 0) {
                        ret = true;
                        return false;
                    }
                });
            }

            if (ret) {
                if (ref_type == "show" || ref_type == "") {
                    $(this).show();
                } else if (ref_type == "hide") {
                    $(this).hide();
                } else if (ref_type == "enable") {
                    $(this).find(".crffield").each(function () {
                        setInputDisabled($(this), false);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".crffield").each(function () {
                        //clearInputValue($(this));
                        setInputDisabled($(this), true);
                    });
                }
            } else {
                if (ref_type == "show" || ref_type == "") {
                    $(this).hide();
                } else if (ref_type == "hide") {
                    $(this).show();
                } else if (ref_type == "enable") {
                    $(this).find(".crffield").each(function () {
                        //clearInputValue($(this));
                        setInputDisabled($(this), true);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".crffield").each(function () {
                        setInputDisabled($(this), false);
                    });
                }
            }
        });

        //控制备注字段
        $root.find("[data-remarkfor='" + fielddata.Fieldcode + "']").each(function () {
            var ref_itemvalue = $(this).attr("data-ref-itemvalue");
            var val = (fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value);
            if (val == undefined || val == null) {
                $(this).attr("disabled", true);
            }
            else if ($.inArray(ref_itemvalue, val.split(',')) >= 0) {
                $(this).attr("disabled", false);
            } else {
                $(this).attr("disabled", true);
            }
        });
    }
}

//字段Key
function getFieldKey(fielddata) {
    return (fielddata.Df_tableid + "." + fielddata.Df_fieldid).toLowerCase();
}

//初始化数据核查
function bindCheckrule(parent) {
    parent = parent ? parent : $("body");

    parent.find("[data-checkrule=true]").each(function () {
        var $input = $(this);

        $input.rules("remove");
        if ($input.attr("data-required")) {
            if ($(this).parent().attr("data-form") == "radio" || $(this).parent().attr("data-form") == "checkbox") {
                $input.parent().find("input[type=checkbox]").rules("remove");
                $input.parent().find("input[type=checkbox]").rules("add", { required: true, messages: { required: $input.attr("data-required") } });
            } else {
                $input.rules("add", { required: true, messages: { required: $input.attr("data-required") } });
            }
        }
        $input.rules("add", { crfRule: true });
    });
}

//查找字段控件
function findInput(target, fieldid) {
    if (target == null || target == undefined || target.size() == 0) {
        //整个界面查找
        return $("[data-fieldid=" + fieldid + "]");
    }
    else if ($(target).hasClass("list-crffield")) {
        //列表
        var row = $(target).closest("tr");
        //优先查找列表中字段
        var input = row.find("[data-fieldid=" + fieldid + "]");
        if (input.size() == 0) {
            input = $(target).closest(".crfroot,.crftablerow").find("[data-fieldid=" + fieldid + "]");
        }
        return input;
    }
    else {
        var crf = $(target).closest(".crfroot,.crftablerow");
        //优先查找相同行标记的控件
        var input = crf.find("[data-recordid=" + target.attr("data-recordid") + "][data-fieldid=" + fieldid + "]");
        if (input.size() == 0) {
            input = crf.find("[data-fieldid=" + fieldid + "]");
        }
        return input;
    }
}

//只查询相同行标记的控件
function findInputByRecordid(target, fieldid) {
    if ($(target).hasClass("list-crffield")) {
        //列表
        var row = $(target).closest("tr");
        return row.find("[data-fieldid=" + fieldid + "]");
    }
    else {
        var crf = $(target).closest(".crfroot,.crftablerow");
        return crf.find("[data-recordid=" + target.attr("data-recordid") + "][data-fieldid=" + fieldid + "]");
    }
}

function afterDeleteRow(row) {
    var a = afterDeleteRow._oFuncs, b;
    for (var c in a) {
        if (typeof a[c] == "function") {
            a[c](row);
        }
    }
}
afterDeleteRow.add = function (b, a) {
    afterDeleteRow._oFuncs[b] = a;
};
afterDeleteRow._oFuncs = {};
afterDeleteRow.remove = function (a) {
    delete afterDeleteRow._oFuncs[a];
};