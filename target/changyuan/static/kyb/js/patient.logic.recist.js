$(document).ready(function () {
    $("[data-elementtype='table']").each(function () {
        var target = $(this);

        //从检查病灶选择
        target.find(".selectLesion").click(function (e) {
            var parentwin = getIndexWindow();
            parentwin.currentchildwindow = window;
            parentwin.dlg.setSize(900, 520);
            parentwin.dlg.setURL("从检查病灶中选择", "/Study/Patient/LesionDialog/" + studypatientid + "?v=" + $("#Visit_id").val() + "&tid=" + target.attr("id") + "&callback=addLesionRow");
            parentwin.dlg.show();
        });
        //获取上次评估病灶
        target.find(".getLastLesion").click(function (e) {
            getLastLesions(target);
        });
        //自动计算靶病灶评估结果
        target.find(".getTresult").click(function (e) {
            getTRecistResult(target);
        });
    });

    if (afterDeleteRow != null && afterDeleteRow != undefined) {
        afterDeleteRow.add("deletelesions", function (row) {
            if ($(row).closest("[data-tableid=T_assessment_lesions]")) {
                //病灶删除行时，重新计算直径总和
                getLesionSumLd();
            }
        });
    }
});

//字段值变化事件
function bindRecistlogic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        case "t_assessment_lesions.tu_ld":
            getLesionSumLd();
            break;
        case "t_assessment_dtl.rs_evaluationdate":
            break;
        case "t_assessment_dtl.rs_target":
        case "t_assessment_dtl.rs_nontarget":
        case "t_assessment_dtl.rs_newlesion":
        case "t_assessment_dtl.rs_tm":
            getRecistResult(target);
            break;
        case "t_assessment_dtl.rs_baseflag":
            if (fielddata.Value == "1" || fielddata.Valuestr == "1") {
                //基线
                $(".getLastLesion").hide();
                $(".getTresult").hide();
            } else {
                $(".getLastLesion").show();
                $(".getTresult").show();
            }
            break;
    }
}

//计算总评估结果
function getRecistResult(target) {
    if (!changebyuser) return;

    var $tresult = findInput(target, "Rs_target");
    var $nresult = findInput(target, "Rs_nontarget");
    var $mresult = findInput(target, "Rs_newlesion");
    var $zresult = findInput(target, "Rs_tm");
    var $result = findInput(target, "Rs_overall");

    $.ajax({
        type: "post",
        url: "/Study/Patient/GetRecistResult",
        data: {
            tresult: tryGetval($tresult),
            nresult: tryGetval($nresult),
            xresult: tryGetval($mresult),
            zresult: tryGetval($zresult)
        },
        success: function (data) {
            if (data.Ret == "0" && data.Content != "") {
                setInputValueNew($result, data.Content, data.Content, true);
            }
        }
    })
}

//计算靶病灶评估结果
function getTRecistResult(target) {
    if (!changebyuser) return;

    var $date = findInput(target, "Rs_evaluationdate");
    //if ($date.size() == 0 || $date.val() == "") {
    //    //没有评估日期不需要计算
    //    $.messager.alert("提示", "请先填写评估日期！", "warning");
    //    return;
    //}

    var jsondata = getRecistJson(target);

    if (jsondata.Baseflag == "1") {
        return;
    }
    if (jsondata.Lesions.length == 0) {
        $.messager.alert("提示", "请填写病灶信息！", "warning");
        return;
    }

    layer.load(2);

    var $tresult = findInput(target, "Rs_target");
    var $nresult = findInput(target, "Rs_nontarget");
    var $mresult = findInput(target, "Rs_newlesion");
    var $zresult = findInput(target, "Rs_tm");
    var $result = findInput(target, "Rs_overall");
    //获取计算结果
    $.ajax({
        type: "post",
        url: "/Study/Patient/GetAssessmentResult",
        data: {
            json: JSON.stringify(jsondata)
        },
        success: function (data) {
            layer.closeAll();

            if (data.Ret == "0") {
                if ($tresult.size() && data.Content.Tresult != "") {//靶病灶赋值
                    setInputValueNew($tresult, data.Content.Tresult, data.Content.Tresult, false);
                }
                //if ($nresult.size() && data.Content.Nresult != "") {//非靶病灶赋值
                //    setInputValueNew($nresult, data.Content.Nresult, data.Content.Nresult, false);
                //}
                //if ($mresult.size() && data.Content.Mresult != "") {//新靶病灶赋值
                //    setInputValueNew($mresult, data.Content.Mresult, data.Content.Mresult, false);
                //}
                if ($zresult.size() && data.Content.Zresult != "") {//肿瘤标志物赋值
                    setInputValueNew($zresult, data.Content.Zresult, data.Content.Zresult, false);
                }
                if ($result.size() && data.Content.Result != "") {//总体疗效评估赋值
                    setInputValueNew($result, data.Content.Result, data.Content.Result, false);
                }
            }
        },
        error: function () {
            layer.closeAll();
        }
    })
}

//计算病灶总直径
function getLesionSumLd() {
    if (!changebyuser) return;

    var sum_t_ld = 0;
    var sum_n_ld = 0;

    $(".crftable-edit[data-tableid=T_assessment_lesions]").each(function () {
        //bug237
        $(this).find(".list-data>tr").each(function () {
        //$(this).find(".list-data tr").each(function () {
            var $row = $(this);
            var $type = $row.find("[data-fieldid=Tu_lesionsasstype]");
            var $ld = $row.find("[data-fieldid=Tu_ld]");

            if ($type.size() && $ld.size()) {
                if (!isNaN(parseFloat($ld.val()))) {
                    if ($type.val() == "1") {
                        //靶病灶
                        sum_t_ld += parseFloat($ld.val());
                    } else if ($type.val() == "2") {
                        //非靶病灶
                        sum_n_ld += parseFloat($ld.val());
                    }
                }
            }
        });
    });

    var $sum_ld = findInput(null, "Rs_sumld");
    if ($sum_ld.size() && sum_t_ld > 0) {
        setInputValueNew($sum_ld, "", sum_t_ld, false);
    }
}

//获取疗效评估JSON数据
function getRecistJson(target) {
    var $date = findInput(target, "Rs_evaluationdate");
    var $tresult = findInput(target, "Rs_target");
    var $nresult = findInput(target, "Rs_nontarget");
    var $mresult = findInput(target, "Rs_newlesion");
    var $zresult = findInput(target, "Rs_tm");
    var $result = findInput(target, "Rs_overall");
    var irow_id = 0;
    if ($date.size()) {
        if ($date.attr("data-data-id") != undefined) {
            irow_id = $date.attr("data-data-id");
        }
    }
    var $tmethod = findInput(target, "Rs_targetmethod");

    var jsondata = {
        Irow_id: irow_id,
        Study_patient_id: $("#Study_patient_id").val(),
        Visit_id: $("#Visit_id").val(),
        Evaluationdate: $date.val(),
        Baseflag: tryGetval(findInput(target, "Rs_baseflag")),
        Tresult: tryGetval($tresult),
        Nresult: tryGetval($nresult),
        Mresult: tryGetval($mresult),
        Zresult: tryGetval($zresult),
        Result: tryGetval($result),
        Sum_ld: tryGetval(findInput(target, "Rs_sumld")),
        Tmethod: tryGetval($tmethod),
        Lesions: getLesionsJson()
    };

    return jsondata;
}
function getRecistJsonOfCheck(target) {
    //包含有自动计算靶病灶结果按钮时，触发疗效评估逻辑核查
    if ($(".getTresult").size()) {
        return getRecistJson(target);
    } else {
        return null;
    }
}

//获取病灶JSON数据
function getLesionsJson() {
    var lesionsdata = [];
    
    $(".crftable-edit[data-tableid=T_assessment_lesions]").each(function () {
        //bug237
        $(this).find(".list-data>tr").each(function () {
        //$(this).find(".list-data tr").each(function () {
            var $row = $(this);
            if ($row.find("[data-fieldid=Tu_lesionsasstype]").size()) {
                var type = $row.find("[data-fieldid=Tu_lesionsasstype]").val();
                if (type == ""){
                    type = $row.find("[data-fieldid=Tu_lesionsasstype]").attr("data-defaultval");
                }
                var rowdata = {
                    Tu_lesionsasstype: type
                };

                //病灶编号
                rowdata.Tu_lesionsno = tryGetval($row.find("[data-fieldid=Tu_lesionsno]"));
                //器官代码
                rowdata.Tu_organcode = tryGetval($row.find("[data-fieldid=Tu_organcode]"));
                //器官名称
                rowdata.Tu_organname = tryGetval($row.find("[data-fieldid=Tu_organname]"));
                //最长直径
                rowdata.Tu_ld = tryGetval($row.find("[data-fieldid=Tu_ld]"));
                //单位
                rowdata.Tu_unit = tryGetval($row.find("[data-fieldid=Tu_unit]"));
                //测量方法
                rowdata.Tu_method = tryGetval($row.find("[data-fieldid=Tu_method]"));

                lesionsdata.push(rowdata);
            }
        });
    });

    return lesionsdata;
}

//从上次病灶中选择
function getLastLesions(target) {
    var $table = $(target);
    var irow_id = 0;
    var $date = findInput(target, "Rs_evaluationdate");
    var study_patient_id = $("#Study_patient_id").val();
    var assessmentdate = findInput(null, "Rs_evaluationdate").size() ? findInput(null, "Rs_evaluationdate").val() : "";

    var $lesionsasstype = $table.find("[data-fieldid=Tu_lesionsasstype]");
    var lesionsasstype = $lesionsasstype.size() ? $lesionsasstype.val() : "";
    if ($date.size()) {
        if ($date.attr("data-data-id") != undefined) {
            irow_id = $date.attr("data-data-id");
        }
    }

    layer.load(2);
    $.ajax({
        type: "post",
        url: "/Study/Patient/LastAssessmentJson",
        data: {
            study_patient_id: $("#Study_patient_id").val(),
            Irow_id: irow_id,
            evaluationdate: assessmentdate,
            lesionsasstype: lesionsasstype
        },
        success: function (data) {
            layer.closeAll();
            if (data.length > 0) {
                //$table.find(".list-data").html("");
                addLesionRow(data, $table.attr("id"))
            } else {
                $.messager.alert("提示", "无既往评估记录！", "info");
            }
        },
        error: function () {
            layer.closeAll();
        }
    });
}
//从检查病灶中选择addLesionRow 
function addLesionRow(json, tid) {
    var $target = $("#" + tid);
    //循环json数组
    if (typeof json === 'string') {
        json = JSON.parse(json);
    }
    $.each(json, function (index, jsondata) {
        var row = addRow($target, null);
        if (typeof jsondata === 'string') {
            jsondata = JSON.parse(jsondata);
        }
        //行数据
        $(row).find(".list-crffield").each(function () {
            var $input = $(this);
            var fieldid = $input.attr("data-fieldid");

            var fieldvalue = jsondata[$input.attr("data-fieldid")];

            if (fieldvalue != undefined && fieldvalue != null) {
                setInputValueNew($input, fieldvalue, fieldvalue);
            }
        });
    })
}

function tryGetval(target) {
    if ($(target).size()) {
        return $(target).val();
    } else {
        return "";
    }
}