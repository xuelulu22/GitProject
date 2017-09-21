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
        Compare_fieldvalue: [],
        Uniqueness_fieldvalue:[],
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

    $("input[data-fieldid='" + input.attr("data-fieldid") + "'][data-tableid='" + input.attr("data-tableid") + "']").each(function () {
        var $uniquenessinput = $(this);
        var uniquenessdata = getInputValue($uniquenessinput);
        if (uniquenessdata.Valuestr != "") {
            jsondata.Uniqueness_fieldvalue.push(uniquenessdata.Valuestr);
        }
    });


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
            data: {json: JSON.stringify(jsondata)},
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
                previous.message = "";
                if (errormsg != "") {
                    var errors = {};
                    var message = errormsg;
                    errors[element.name] = previous.message = $.isFunction(message) ? message(value) : message;
                    validator.invalid[element.name] = true;
                    validator.showErrors(errors);
                }
                delete validator.invalid[element.name];
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

//编辑对话框
var dlg = new MyAppDialog(900, 600);

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
var isPopup = false;
var studyid = 0;
var studypatientid = 0;

$(document).ready(function () {
    //$(document).bind('contextmenu', function (e) {
    //    e.preventDefault();
    //});

    if ($("#Study_id").size()) {
        studyid = $("#Study_id").val();
    }
    if ($("#Study_patient_id").size()) {
        studypatientid = $("#Study_patient_id").val();
    }

    //初始化表单验证
    initValidate();

    bindLogicEvent(null);
    bindCheckrule(null);

    if (queryflag && canquery) {
        if (queryflag == "1" && canquery) {
            var btnquery = $('<a class="btn btn-mini btn-link" id="btnquery"><i class="icofont-question-sign helper-font-small" /> 发质疑</a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
            btnquery.appendTo(popupcontent);
        }
    }
    var btnlog = $('<a class="btn btn-mini btn-link" id="btnlog"><i class="icofont-info-sign helper-font-small" /> 稽查轨迹</a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
    btnlog.appendTo(popupcontent);

 
    //var isDm = @(ViewBag.IsDmRole?"true":"false");
    //var isCra = @(ViewBag.IsCraRole ? "true":"false");
    //var isMa = @(ViewBag.IsMa ? "true":"false");
    //var isProspectiveSubject = @(Model.Study.Studytype=="3"?"true":"false");

    if (typeof (isDm) != "undefined" && typeof (isMa) != "undefined" && typeof (isCra) != "undefined") {
        
        if (isProspectiveSubject) //只有前瞻性的课题才能看到
        {
            if (isDm || isMa || isCra) {
                var btncheck = $('<a class="btn btn-mini btn-link" id="btncheck" operatertype=1 status=2 op="核查确认"><i class="icofont-info-sign helper-font-small" /> <span>核查确认</span></a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
                btncheck.appendTo(popupcontent);

                var btncancelcheck = $('<a class="btn btn-mini btn-link" id="btncancelcheck" operatertype=1 status=3 op="核查取消"><i class="icofont-info-sign helper-font-small" /><span> 核查取消</span></a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
                btncancelcheck.appendTo(popupcontent);
            }

            if (isDm) {
                var btnfrozen = $('<a class="btn btn-mini btn-link" id="btnfrozen" operatertype=2 status=5 op="冻结"><i class="icofont-info-sign helper-font-small" /> <span>冻结</span></a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
                btnfrozen.appendTo(popupcontent);

                var btncancelfrozen = $('<a class="btn btn-mini btn-link" id="btncancelfrozen" operatertype=2 status=6 op="冻结取消"><i class="icofont-info-sign helper-font-small" /> <span>冻结取消</span></a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
                btncancelfrozen.appendTo(popupcontent);

                var btnlockfield = $('<a class="btn btn-mini btn-link" id="btnlockfield" operatertype=3 status=11 op="锁定"><i class="icofont-info-sign helper-font-small" /> <span>锁定</span></a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
                btnlockfield.appendTo(popupcontent);

                var btncancellock = $('<a class="btn btn-mini btn-link" id="btncancellock" operatertype=3 status=12 op="锁定取消"><i class="icofont-info-sign helper-font-small" /> <span>锁定取消</span></a><hr style=" height:0px;padding:0;margin:4px 0;border:0; border-top:#ddd 1px dotted;width:100%;"/>');
                btncancellock.appendTo(popupcontent);
            }
        }
        
    }


    //全选
    $("[check-all=true]").parent().change(function () {
        var fieldcode = $(this).find("input[type=hidden]").attr("check-for");
        if (isfinished=='1') {
            $(this).closest("table").find("[islockconfirm='false'][isfrozenconfirm='false'][data-fieldcode=" + fieldcode + "]").parent().radio("setValue", $(this).attr("data-value"));
        } else {
            $(this).closest("table").find("[data-fieldcode=" + fieldcode + "]").parent().radio("setValue", $(this).attr("data-value"));
        }
    });

    //随机按钮
    var $randombtn = $(".randombutton");
    var $armcode = $("[data-fieldid=Armcode]");

    var $patnumber = $("[data-fieldid=Patnumber]");
    //判断是否使用了第三方分组的服务
    if ($patnumber.size()) {
        try {
            if (typeof (patrandomnumsource) != "undefined") {
                if (patrandomnumsource != "") {
                    //使用第三方动态随机分组时，必须先有病例编号，如果没有病例编号，如何操作？
                    $patnumber.attr("disabled", true);
                    $patnumber.attr("readonly", true);
                }
            }
        }
        catch (e) { }
    }

    if ($randombtn.size()) {
        setInputDisabled($armcode, true);

        //随机
        $randombtn.click(function (evt) {
            evt.preventDefault();

            //判断是否使用了第三方分组的服务
            try {
                if (typeof (patrandomnumsource) != "undefined") {
                    if (patrandomnumsource != "") {
                        //使用具体页面的分组方法
                        return saveDynamicRandomArm($(this));
                    }
                }
            }
            catch (e) { }

            if ($armcode.val() != "") {
                $.messager.confirm("操作提醒", "当前受试者已分配随机号，确认要重新随机吗？", function (r) {
                    if (r) {
                        getRandomArm();
                    }
                });
            } else {
                $.messager.confirm("操作提醒", "分组后随机结果将不得修改！", function (r) {
                    if (r) {
                        getRandomArm();
                    }
                });
            }
        });

        //获取随机结果
        getRandomResult();
    }
    //关闭时释放锁定的随机数
    $(window).unload(function () { releaseRandom(); });
});

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
                    $.messager.alert("操作提示", "分组成功,随机结果已保存！", "info");
                }

                //保存数据
                if ($("#patientCrfStatus") != undefined && $("#patientCrfStatus").val() != undefined) {
                    if (!checkRandom()) {
                        return;
                    }

                    var isTempSave = false;
                    if (($("#patientCrfStatus").val() == 0 || $("#patientCrfStatus").val() == 1)) {
                        isTempSave = true;
                    } else {
                        if ($("#isCloseTab") != undefined && $("#isCloseTab").val() != undefined) {
                            $("#isCloseTab").val(0);
                        }
                    }
                    save($(this), isTempSave, false);
                }
                setInputDisabled($(".randombutton"),true);
            } else {
                $randombtn.removeAttr("data-randomid");
                $randombtn.removeAttr("data-expiretime");
                //$.messager.alert("操作失败", e.Msg, "warning");
                $.messager.alert("错误", e.Msg, "crabyter_error");
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //关闭加载层
            layer.closeAll();

            //showError(xhr);
            $.messager.alert("错误", e.Msg, "crabyter_error");
        }
    });
}

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
        var tmpval = changebyuser;
        changebyuser = false;
        $patnumber.val(e.Content.Patnumber);
        changebyuser = tmpval;
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

    $(".crf-rule-warning").each(function (e) {
        $(this).html("");
    });

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
        error.css("display", "run-in");
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
                $fieldrect.attr("ref-data-data-id", $input.attr("data-data-id"));
                $fieldrect.attr("ref-crf_field_id", $input.attr("data-id"));
                $fieldrect.appendTo($("body"));
                $fieldrect.wrap("<div></div>");
            }
        }

        $fieldrect.parent().contextmenu(function (e) {
            e.stopPropagation();//阻止冒泡
            e.preventDefault();//阻止浏览器默认行为

            if ($fieldrect.is(".crffield, .list-crffield")) {
                currentinput = $fieldrect;
            } else {
                if ($fieldrect.find(".crffield, .list-crffield").length > 1) {
                    var fieldcode = $fieldrect.attr("id");
                    $fieldrect.find(".crffield, .list-crffield").each(function () {
                        if ($(this).attr("data-fieldcode") == fieldcode) {
                            currentinput = $(this);
                            return false;
                        }
                    });
                } else {
                    currentinput = $fieldrect.find(".crffield, .list-crffield");
                }
            }
            if (currentinput.length == 0) {
                currentinput = $fieldrect;
            }

            var id = currentinput.attr("data-data-id");
            var crffieldid = currentinput.attr("data-id");
            if (id == undefined || id == "" || id == "0") {
                id = $(currentinput).attr("ref-data-data-id");
            }
            if (crffieldid == undefined || crffieldid == "" || crffieldid == "0") {
                crffieldid = $(currentinput).attr("ref-crf_field_id");
            }
            if (id == undefined || id == "" || id == "0") { return; }

            //var itop = currentinput.offset().top;
            //var ileft = currentinput.offset().left;

            if ($(currentinput).is("span") || $(currentinput).is("label")) {
                return false;
            }

            //crf_field_id
            popupcontent.find(".btn").attr("data-target", id);
            popupcontent.find(".btn").attr("crf_field_id", crffieldid); //Liu+

            if ($fieldrect.css("display") == 'none') {
                $fieldrect = $fieldrect.parent();
            }

            popupcontent.find("#btnquery").show();
            popupcontent.find("#btncheck").show();
            popupcontent.find("#btncancelcheck").show();
            popupcontent.find("#btnfrozen").show();
            popupcontent.find("#btncancelfrozen").show();
            popupcontent.find("#btnlockfield").show();
            popupcontent.find("#btncancellock").show();

            popupcontent.find("#btnquery").next("hr").show();
            popupcontent.find("#btncheck").next("hr").show();
            popupcontent.find("#btncancelcheck").next("hr").show();
            popupcontent.find("#btnfrozen").next("hr").show();
            popupcontent.find("#btncancelfrozen").next("hr").show();
            popupcontent.find("#btnlockfield").next("hr").show();
            popupcontent.find("#btncancellock").next("hr").show();

            $.ajax({
                url: "/Study/QualityMonitor/CheckFieldCheckStatus",
                type: "post",
                async: false,
                data: {
                    studyId: studyid,
                    fielddataId: id
                },
                success: function (data) {
                    var ischeckconfirm = data.IsCheckConfirm;
                    var isfrozenconfirm = data.IsFrozenConfirm;
                    var islockconfirm = data.IsLockConfirm;
                    var issignconfirm = data.IsSign;
                    var isquery = data.IsQuery;
                    var status = data.FielddataStatus;

                    if (ischeckconfirm) {
                        popupcontent.find("#btncheck").hide();
                        popupcontent.find("#btncheck").next("hr").hide();
                    } else {
                        popupcontent.find("#btncancelcheck").hide();
                        popupcontent.find("#btncancelcheck").next("hr").hide();
                    }

                    if (isfrozenconfirm) {
                        popupcontent.find("#btnfrozen").hide();
                        popupcontent.find("#btnfrozen").next("hr").hide();
                    } else {
                        if (isquery) {
                            popupcontent.find("#btnfrozen").hide();
                            popupcontent.find("#btncancelfrozen").hide();

                            popupcontent.find("#btnfrozen").next("hr").hide();
                            popupcontent.find("#btncancelfrozen").next("hr").hide();
                        } else {
                            popupcontent.find("#btncancelfrozen").hide();
                            popupcontent.find("#btncancelfrozen").next("hr").hide();
                            
                        }
                    }

                    if (status!="0") {
                        popupcontent.find("#btncheck").hide();
                        popupcontent.find("#btncancelcheck").hide();
                        popupcontent.find("#btnfrozen").hide();
                        popupcontent.find("#btncancelfrozen").hide();
                        popupcontent.find("#btnlockfield").hide();
                        popupcontent.find("#btncancellock").hide();

                        popupcontent.find("#btncheck").next("hr").hide();
                        popupcontent.find("#btncancelcheck").next("hr").hide();
                        popupcontent.find("#btnfrozen").next("hr").hide();
                        popupcontent.find("#btncancelfrozen").next("hr").hide();
                        popupcontent.find("#btnlockfield").next("hr").hide();
                        popupcontent.find("#btncancellock").next("hr").hide();
                    }

                    if (islockconfirm) {
                        popupcontent.find("#btnquery").hide();
                        popupcontent.find("#btncheck").hide();
                        popupcontent.find("#btncancelcheck").hide();
                        popupcontent.find("#btnfrozen").hide();
                        popupcontent.find("#btncancelfrozen").hide();
                        popupcontent.find("#btnlockfield").hide();


                        popupcontent.find("#btnquery").next("hr").hide();
                        popupcontent.find("#btncheck").next("hr").hide();
                        popupcontent.find("#btncancelcheck").next("hr").hide();
                        popupcontent.find("#btnfrozen").next("hr").hide();
                        popupcontent.find("#btncancelfrozen").next("hr").hide();
                        popupcontent.find("#btnlockfield").next("hr").hide();
                    } else {
                        if (!issignconfirm) {
                            popupcontent.find("#btnlockfield").hide();
                            popupcontent.find("#btncancellock").hide();

                            popupcontent.find("#btnlockfield").next("hr").hide();
                            popupcontent.find("#btncancellock").next("hr").hide();
                        } else {
                            popupcontent.find("#btncancellock").hide();

                            popupcontent.find("#btncancellock").next("hr").hide();
                        }
                    }

                    layer.tips(popupcontent.prop("outerHTML"), $fieldrect.get(0), {
                        tips: [1, "#fff"],
                        maxWidth: 125,//125就不换行了。。。
                        time: 0,
                        closeBtn: true
                    });

                    //crf-tips
                    //核查确认，核查取消，冻结，冻结取消，锁定，锁定取消
                    //$("#btncheck,#btncancelcheck,#btnfrozen,#btncancelfrozen,#btnlockfield,#btncancellock").live("click",function (evt) {
                    $(".crf-tips a").on('click', function (evt) {
                        evt.preventDefault();

                        layer.closeAll();

                        var operatertype = $(this).attr('operatertype');
                        var status = $(this).attr('status');
                        var fielddataid = $(this).attr("data-target");
                        var crf_id = currentinput.closest('.crfroot').attr('data-id');//实际crf_id，父或者子CRF的Id
                        if (!crf_id) {
                            crf_id = $("#Crf_id").val();
                        }
                        var visitid = $("#Visit_id").val();

                        var msg = $(this).attr('op');
                        if (!operatertype || !status) {
                            return false;
                        }
                        else {
                            $.messager.confirm("操作框", "您确定要【" + msg + "】该字段吗？", function (r) {
                                if (r) {
                                    $.ajax({
                                        url: "/Study/QualityMonitor/OperaterCrfField",
                                        type: "post",
                                        async: false,
                                        data: {
                                            studyId: $("#Study_id").val(),
                                            studyPatientId: patientId,
                                            crf_id: crf_id,
                                            fielddateid: fielddataid,
                                            type: operatertype,
                                            status: status,
                                            visit_id: $("#Visit_id").val()
                                        },
                                        success: function (data) {
                                            if (data.Ret == "1") {
                                                $.messager.alert("错误提示", data.Msg, "error");
                                            } else {
                                                /*
                                                    2016-6-13   戴永辉
                                                    操作成功之后，刷新当前状态。（Icon）
                                                    operatertype：操作类型
                                                    status：操作状态
                                                    fielddataid：字段值Id
                    
                                                    var $crf = $(".crfroot[data-id=" + data.Crf_id + "]");
                                                */
                                                var $crf = $(".crfroot[data-id=" + crf_id + "]");
                                                debugger;
                                                //changeIconAndStatus($crf, fielddataid, operatertype, status);
                                                var iframe_id = $("#Crf_id").val() + "_" + visitid;
                                                var href = location.href;
                                                if (href.toLowerCase().indexOf('crfinputrow') == -1) {
                                                    if (parent && parent.parent) {
                                                        if (parent.parent.refreshTab) {
                                                            parent.parent.refreshTab(iframe_id);
                                                        }
                                                    }
                                                }
                                                else {
                                                    location.href = href;
                                                }
                                            }
                                        }
                                    });
                                }
                            })
                        }
                    });

                    //发质疑
                    $("#btnquery").off("click").click(function (evt) {
                        evt.preventDefault();

                        layer.closeAll();

                        var id = $(this).attr("data-target"); //" + crffieldid + "/" + crfid + "/
                        var study_patitent_id = $("#Study_patient_id").val(); //课题病例ID
                        var crfid = $("#Crf_id").val();//crf表ID   
                        var visitid = $("#Visit_id").val();

                        dlg.setSize(800, 580);

                        dlg.setURL("质疑", "/Study/Query/QueryForm/?" + Math.random() + "&c=" + crfid + "&v=" + visitid + "&f=0&fielddataid=" + id);
                        dlg.show();
                    });

                    //看日志
                    $("#btnlog").off("click").click(function (evt) {
                        evt.preventDefault();
                        layer.closeAll();
                        debugger;
                        dlg.setting.width = 800;
                        dlg.setting.height = 600;
                        var id = $(this).attr("data-target");
                        dlg.setURL("CRF字段变更日志", "/Study/Patient/CrfDataFieldChangelog/" + id + "?" + Math.random());
                        dlg.show();
                    });
                }
            });
        });
    });
        $(document).mousedown(function (e) {
            var el = $(".crf-tips");
            var theEvent = window.event || e;
        if (!(
            //currentinput.is(e.target) ||
            //currentinput.find(e.target).size() ||
            el.is(e.target) ||
            el.find(e.target).size())) {
            
            //mend bug 306
            if ($(theEvent.target).hasClass("layui-layer-imgprev")
                || $(theEvent.target).hasClass("layui-layer-imgnext")
                || $(theEvent.target).parent().hasClass("layui-layer-phimg")
                ) {
            }
            else {
                layer.closeAll();
            }
            
        }
    });
}

function allowCrfTableWindowAdd(crf, allow) {
    var $crf = $(crf);

    $crf.find("[data-elementtype=tableandwindow]").each(function () {
        var $table = $(this);
        if (allow) {
            $table.find(".showAddWindow").show();
            $table.find(".editRow").show();
        }
        else {
            $table.find(".showAddWindow").hide();
            $table.find(".editRow").hide();
        }
    });

    $crf.find(".deletebtn").each(function () {
        $(this).hide();
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

    //如果没有权限，则禁用全选按钮
    $crf.find("[check-all=true]").parent().find('input[type=checkbox]').each(function () {
        var $input = $(this);
        setInputDisabled($input, true);
    })  
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
            var tmpval = changebyuser;
            changebyuser = false;
            $input.closest("[data-form=radio],[data-form=checkbox]").change();
            changebyuser = tmpval;
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
function setInputValueNew(input, value, valuestr, changeevent) {
    if (changeevent != null && changeevent != undefined && changeevent == false) logicevent = false;
    var $input = $(input);
    var $parent = $input.parent();
    var dataform = $input.attr("data-form") == undefined ? $parent.attr("data-form") : $input.attr("data-form");

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
        //获取dataid最新的质疑状态
        $.ajax({
            type: "post",
            url: "/Study/Query/GetFielddataQueryStatus",
            data: {
                id: dataid
            },
            success: function (e) {
                //关闭加载层
                if (e.Ret == "0") {
                    status = e.Content;
                    addQueryIcon($target, status);
                } 
            },
            error: function (xhr, ajaxOptions, thrownError) {
                //showError(xhr);
                $.messager.alert("错误", e.Msg, "crabyter_error");
            }
        });
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

    var offset = target.offset();
    var dataid = target.attr("data-data-id");
    if (target.attr("data-form") == "radio" || target.attr("data-form") == "checkbox") {
        dataid = target.find("input[type=hidden]").attr("data-data-id");
    }
    else if (target.attr("data-form") == "datepicker") {
        dataid = target.find("input[type=text]").attr("data-data-id");
    }

    if (typeof (dataid) == "undefined"){
        dataid = target.find("input[type=text]").attr("data-data-id");
    }

    var querylayout = $("[query-target=" + dataid + "]");
    if (!querylayout.size()) {
        //添加Query图标
        var querylayout = $("<label />");
        querylayout.attr("query-target", dataid);
        querylayout.css("position", "absolute");
        if (target.closest(".list-data").size()) {
            querylayout.css("top", 3);
            querylayout.css("margin-left", -5);
        } else {
            querylayout.css("top", 5);
            querylayout.css("margin-left", 2);
        }
        querylayout.css("display", "inline-block");
        querylayout.css("z-index", 1);
        querylayout.attr("data-status", status);

        var queryicon = $("<i class='iconfont' title='查看质疑' />");

        queryicon.html("&#xe73b;");
        /******************************************************************************************************************
        已开放 = 0,
        已回复 = 1,
        已撤销 = 2, 
        未开放 [Draft]= 3,
        已重启 = 5,
        已关闭 = 9


         BUG 1045 【edc数据核查】病例界面关闭状态与撤销状态的两个问号不显示 (sunny提出的需求)
        *******************************************************************************************************************/
        switch (status) {
            case "0": // 已开放
                queryicon.css("color", "#eb3941");
                break;

            case "1": // 已回复
                queryicon.css("color", "#ffbf57");
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
                if (typeof (isDm) != "undefined") {
                    if (isDm) {
                        queryicon.css("color", "#ffbf57");
                    }
                }
                break;

            case "5": // 已重启
                queryicon.css("color", "#eb3941");
                break;

            default:
                queryicon.css("display", "none");
                break;
        }

        queryicon.css("font-size", "20px");
        queryicon.css("width", 14);
        queryicon.appendTo(querylayout);

        querylayout.click(function (e) {
            var crfid = $("#Crf_id").val();//crf表ID
            var status = $(this).attr("data-status");
            var visitid = $("#Visit_id").val();
            dlg.setSize(800, 580);
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
                if (typeof (isDm) != "undefined") {
                    if (isDm) {
                        queryicon.css("color", "#ffbf57");
                    }
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
        } else if (input.attr("disabled") && (input.attr("DisabledSource") == "3" || input.attr("DisabledSource") == "1")) {
            status = "1";
        } else if (input.attr("disabled") && input.attr("DisabledSource") == "2") {
            status = input.attr("DataStatus");
        }
    } else {
        var $target = input.closest("[data-form=radio],[data-form=checkbox],[data-form=datepicker]");
        if ($target.size()) {
            if (!$target.is(":visible")) {
                status = "2";
            }
            else if ($target.attr("disabled") && ($target.attr("DisabledSource") == "3" || $target.attr("DisabledSource") == "1")) {
                status = "1";
            } else if ($target.attr("disabled") && $target.attr("DisabledSource") == "2") {
                status = input.attr("DataStatus");
            }
        } else {
            if (!input.is(":visible")) {
                status = "2";
            } else if (input.attr("disabled") && (input.attr("DisabledSource") == "3" || input.attr("DisabledSource") == "1")) {
                status = "1";
            } else if (input.attr("disabled") && input.attr("DisabledSource") == "2") {
                status = input.attr("DataStatus");
            }
        }
    }

    //如果是关联字段并且状态是隐藏或者不可见，则此状态为不适用
    var refItem = input.parents('[data-ref-fieldcode]');
    if (refItem != undefined && refItem.attr("data-ref-fieldcode") != undefined && refItem.attr("data-ref-fieldcode") != "") {
        if ((!input.is(":visible") || input.attr("disabled")) && !input.parent().is(":visible")) {
            status = "3";
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
            } 
            else {
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

        bindBaselogic(target, fieldkey, fielddata);
        bindDiaglogic(target, fieldkey, fielddata);
        bindChemlogic(target, fieldkey, fielddata);
        bindCtcaelogic(target, fieldkey, fielddata);
        bindInspectlogic(target, fieldkey, fielddata);
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
                        $(this).attr("DisabledSource", 0);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".list-crffield").each(function () {
                        //clearInputValue($(this));
                        setInputDisabled($(this), true);
                        $(this).attr("DisabledSource", 3);
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
                        $(this).attr("DisabledSource", 3);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".list-crffield").each(function () {
                        setInputDisabled($(this), false);
                        $(this).attr("DisabledSource", 0);
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
                $(this).attr("DisabledSource", 0);
            }
            else if ($.inArray(ref_itemvalue, val.split(',')) >= 0) {
                $(this).attr("disabled", false);
                $(this).attr("DisabledSource", 0);
            } else {
                $(this).attr("disabled", true);
                $(this).attr("DisabledSource", 3);
            }
        });
    } else {
        var $root;
        if (isPopup) {
            $root = target.parents(".crftablerow");
        } else {
            $root = target.parents(".crfroot,.crftablerow");
        }
        //var $root = target.parents(".crfroot,.crftablerow");
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
                        $(this).attr("DisabledSource", 0);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".crffield").each(function () {
                        //clearInputValue($(this));
                        setInputDisabled($(this), true);
                        $(this).attr("DisabledSource", 3);
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
                        $(this).attr("DisabledSource", 3);
                    });
                } else if (ref_type == "disable") {
                    $(this).find(".crffield").each(function () {
                        setInputDisabled($(this), false);
                        $(this).attr("DisabledSource", 0);
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
                $(this).attr("DisabledSource", 3);
            }
            else if ($.inArray(ref_itemvalue, val.split(',')) >= 0) {
                $(this).attr("disabled", false);
                $(this).attr("DisabledSource", 0);
            } else {
                $(this).attr("disabled", true);
                $(this).attr("DisabledSource", 3);
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


// #region 【添加核查小图标的代码】

//!++ [Change Status And Icon]
/* 
 * 处理核查，冻结，锁定后的事件【右击Layer菜单，点击，执行之后的操作】
 * 
 * @param {data-data-id} dataid 
 * @param {操作类型} operateType 
 * @param {核查状态} status 
 * 
 * @version :1.0.1
 */
function changeIconAndStatus(crf, dataid, operateType, status) {
    //查看该字段是否有质疑
    var $querytarget = $("[query-target=" + dataid + "]");

    //用来添加icon的
    var $target = $("[data-data-id=" + dataid + "]");

    if ($target.size() && !$querytarget.size()) {
        //核查图标
        var checklayout = $("[check-target=" + dataid + "]");

        //当前字段的某些状态
        var isCheckConfirm = $target.attr("ischeckconfirm") == "false" ? false : true;
        var isFrozenConfirm = $target.attr("isfrozenconfirm") == "false" ? false : true;
        var isLockConfirm = $target.attr("islockconfirm") == "false" ? false : true;
        var isSignConfirm = $target.attr("issignconfirm") == "false" ? false : true;

        // #region 根据操作Layer菜单的点击按钮，修改对应的核查Icon

        if (checklayout.size()) {
            checklayout.remove();
        }

        //此处需要判断，是否需要显示其他的Icon
        //var isAllCheckConfirm = $("[ischeckconfirm='true']").length;
        //var isAllFrozenConfirm = $("[isfrozenconfirm='true']").length;
        //var isAllLockConfirm = $("[ischeckconfirm='true']").length;
        //var isAllSignConfirm = $("[issignconfirm='true']").length;

        switch (operateType) {
            case "1": //【核查确认】或【取消核查】
                switch (status) {
                    case "2": //!++ 核查确认
                        $target.attr("ischeckconfirm", "true");

                        ////checkbox类型控件是存值在一个隐藏域里
                        //var cbCheckLength = $("[ischeckconfirm='true'][type='hidden'][name*=_val]").length;

                        ////说明其他都需要添加Icon
                        //var otherCheckLength = $("[ischeckconfirm='true'][type!='hidden']").length;

                        //if (isAllCheckConfirm) {
                        //    //将其他 ischeckconfirm 属性值为 false 的输入框添加Icon
                        //    for (var i = 0; i < $("[ischeckconfirm='false'][type!='hidden']").length ; i++) {

                        //    }
                        //}


                        if (!isFrozenConfirm) {
                            showCheckIcon($target, "4");
                        } else if (!isLockConfirm) {
                            showCheckIcon($target, "10");
                        }
                        break;
                    case "3": //!++ 取消核查
                        $target.attr("ischeckconfirm", "false");

                        if (!isFrozenConfirm) {
                            showCheckIcon($target, "1");
                        } else if (!isLockConfirm) {
                            showCheckIcon($target, "10");
                        }

                        break;

                    default:

                }
                break;

            case "2": //冻结
                switch (status) {
                    case "5": //!++ 冻结
                        if (isSignConfirm) {
                            showCheckIcon($target, "10");
                        }

                        //更新前台HTML里的状态
                        $target.attr("isfrozenconfirm", "true");

                        setInputDisabled($target, true);
                        break;

                    case "6": //!++ 冻结取消
                        if (!isCheckConfirm) {
                            showCheckIcon($target, "1"); //待核查确认
                        } else {
                            showCheckIcon($target, "4"); //待冻结
                        }

                        //更新前台HTML里的状态
                        $target.attr("isfrozenconfirm", "false");

                        setInputDisabled($target, false);
                        break;
                }
                break;

            case "3": //锁定
                switch (status) {
                    case "11": //!++ 锁定
                        $target.attr("islockconfirm", "true");
                        break;

                    case "12": //!++ 锁定取消
                        showCheckIcon($target, "10");

                        //更新前台HTML里的状态
                        $target.attr("islockconfirm", "false");

                        break;
                }
                break;
        }

        // #endregion

        if (operateType == "2") //冻结
        {
            var isAllFrozen = $("[isfrozenconfirm='false']").length > 0; //页面上至少有一个字段值没有被冻结

            if (isAllFrozen) //冻结
            {
                setCrfButtonDisabled(crf, false); //防止F12修改HTML属性
            } else {
                setCrfButtonDisabled(crf, true); //禁用 添加 删除 和隐藏 按钮
            }
        } //end 冻结

        else if (operateType == "3") //锁定
        {
            var isAllLocked = $("[islockconfirm='false']").length > 0;

            if (isAllLocked) //锁定
            {
                setCrfButtonDisabled(crf, false); //防止F12修改HTML属性
            } else {
                setCrfButtonDisabled(crf, true); //禁用 添加 删除 和隐藏 按钮
            }
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


/*
单个字段赋值
*/
function setInputValue(input, fielddata, changeevent) {
    var $input = $(input);
    var $parent = $input.parent();
    var dataform = $input.attr("data-form") == undefined ? $parent.attr("data-form") : $input.attr("data-form");

    //bug 1522
    if ($input.is("span") && fielddata.Status == "3") {
        $input.html('');
        return;
    }

    setInputValueNew(input, fielddata.Value, fielddata.Valuestr, changeevent);

    if (changeevent != null && changeevent != undefined && changeevent == false) logicevent = false;
    fieldValueChanged(input, fielddata);
    logicevent = true;

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
    } else if (dataform == "file") {
        if (fielddata.Attachfiles != null) {
            $.each(fielddata.Attachfiles, function (n, attachfile) {
                addFile($parent, attachfile);
            });
        }
    }
    $input.attr("IsCheckConfirm", fielddata.IsCheckConfirm);
    $input.attr("IsFrozenConfirm", fielddata.IsFrozenConfirm);
    $input.attr("IsLockConfirm", fielddata.IsLockConfirm);
    $input.attr("IsSignConfirm", fielddata.IsSignConfirm);
    $input.attr("IsHasQuery", fielddata.IsHasQuery);
    $input.attr("DataStatus", fielddata.Status);//记录原本数据的字段Status值
    if (fielddata.Status=="1") {
        $input.attr("DisabledSource", "1");//1表示disabled是由于statsu=1导致
    } else {
        $input.attr("DisabledSource", "0");
    }
    //数据ID
    $input.attr("data-data-id", fielddata.Id);

    if (!$input.is("span")) {

        if (fielddata.Isquery && fielddata.Isquery != "" && !fielddata.IsLockConfirm) {
            addQueryIcon($fieldrect, fielddata.Isquery);
        }
        // #region 图标显示优先顺序   1.质疑与待核查并存，显示质疑  2.待核查确认与待冻结并存,显示待核查确认 3.待核查确认与待锁定并存,显示待锁定
        /*
            没有质疑并且没有锁定，则显示核查ICON
        */
        var showConfirmIcon = typeof (isShowConfirmIcon) != "undefined" ? isShowConfirmIcon : false;
        var showFrozenIcon = typeof (isShowFrozenIcon) != "undefined" ? isShowFrozenIcon : false;
        var showLockIcon = typeof (isShowLockIcon) != "undefined" ? isShowLockIcon : false;

        if ((!fielddata.IsHasQuery && fielddata.Isquery!='3') && isfinished == "1" && (showConfirmIcon || showFrozenIcon || showLockIcon) && fielddata.Status=="0") {
            if (typeof (isDm) != "undefined" && typeof (isMa) != "undefined" && typeof (isCra) != "undefined") {
                if (isProspectiveSubject) //只有前瞻性的课题才能看到
                {
                    var isCheckConfirm = fielddata.IsCheckConfirm;
                    var isFrozenConfirm = fielddata.IsFrozenConfirm;
                    var isLockConfirm = fielddata.IsLockConfirm;
                    var isSign = fielddata.IsSignConfirm;

                    if (!isLockConfirm && fielddata.Status != "1") {
                        if (!isCheckConfirm) {
                            if (!isFrozenConfirm && showConfirmIcon) {
                                showCheckIcon(input, "1"); //待核查确认
                            } else if (!isLockConfirm && isSign && showLockIcon) {
                                showCheckIcon(input, "10"); //10-待锁定
                            }
                        } else {
                            if (!isFrozenConfirm && showFrozenIcon) {
                                showCheckIcon(input, "4"); //待冻结
                            } else if (showLockIcon && !isLockConfirm && isSign) {
                                showCheckIcon(input, "10"); //10-待锁定
                            }
                        }
                    }
                }
            }
        }
    }
    // #region 如果是【冻结】或【锁定】的话,需要将此字段设置为  不可编辑
    if ((fielddata.IsFrozenConfirm
        || fielddata.IsLockConfirm) && fielddata.Status!="1") {

        setInputDisabled($input, true);
        $input.attr("DisabledSource", "2");
    }
}

/*
显示核查的ICON
*/
function showCheckIcon(target, status) {
    var $target = $(target); //

    var dataid = target.attr("data-data-id");

    if (target.attr("data-form") == "radio" || target.attr("data-form") == "checkbox") {
        dataid = target.find("input[type=hidden]").attr("data-data-id");
    } else if (target.attr("data-form") == "datepicker") {
        dataid = target.find("input[type=text]").attr("data-data-id");
    }

    if (typeof (dataid) == "undefined") {
        dataid = target.find("input[type=text]").attr("data-data-id");
    }

    var layout = $("[check-target=" + dataid + "]");

    if (!layout.size()) {
        var checkLayout = $("<label style='color:#FFBF57'/>");
        checkLayout.attr("check-target", dataid);
        checkLayout.css("position", "absolute");

        if (target.closest(".list-data").size()) {
            checkLayout.css("top", 4);
            checkLayout.css("margin-left", -5);
        } else {
            checkLayout.css("top", 5);
            checkLayout.css("margin-left", 2);
        }

        checkLayout.css("display", "inline-block");
        checkLayout.css("z-index", 1);
        checkLayout.attr("data-status", status);

        var checkIcon = $("<i class='iconfont' title='' />");

        // #region 控制ICON显示

        switch (status) {
            case "1": //待核查确认
                checkIcon.html('&#xe739;');
                checkIcon.attr("title", "待核查确认");
                break;

            case "2": //核查确认
                removeCheckIcon(dataid, true);
                break;

            case "3": //核查确认取消
                removeCheckIcon(dataid, true);
                checkIcon.html('&#xe739;');
                checkIcon.attr("title", "待核查确认");
                break;

            case "4": //待冻结
                removeCheckIcon(dataid, true);
                checkIcon.html('&#xe73e;');
                checkIcon.attr("title", "待冻结");
                break;

            case "5": //冻结      
                removeCheckIcon(dataid, true);

                setInputDisabled($target, true);
                break;

            case "6": //冻结取消
                removeCheckIcon(dataid, true);
                checkIcon.html('&#xe73e;');
                checkIcon.attr("title", "待冻结");

                setInputDisabled($target, false);
                break;

            case "10": //待锁定
                removeCheckIcon(dataid, true);
                checkIcon.html('&#xe73a;');
                checkIcon.attr("title", "待锁定");

                break;

            case "11": //锁定
                removeCheckIcon(dataid, true);

                setInputDisabled($target, true);
                break;

            case "12": //锁定取消
                removeCheckIcon(dataid, true);
                checkIcon.html('&#xe73a;');
                checkIcon.attr("title", "待锁定");

                setInputDisabled($target, false);
                break;

            default:
        }


        // #endregion

        checkIcon.css("font-size", "20px");
        checkIcon.css("width", 14);
        checkIcon.appendTo(checkLayout);

        target.closest("td").css("position", "relative");
        checkLayout.appendTo(target.closest("td"));
    }
}

/*
移除核查的ICON
*/
function removeCheckIcon(dataid, flag) {
    var checkLayout = $("[check-target=" + dataid + "]");
    if (flag) {
        if (checkLayout.size()) {
            checkLayout.remove();
        }
    }
}


/*
设置CrfInput页面里按钮不可用
2016-6-29
*/
function setCrfButtonDisabled(crf, isdisabled) {
    var $crf = $(crf);

    $crf.find(".btn").each(function() {
        if (isdisabled) {
            $(this).hide();
        } else {
            $(this).show();
        }
    });
}

// #endregion
