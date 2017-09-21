//$(document).ready(function () {

//});

//字段值变化事件
function bindDiaglogic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        case "t_inhospitalhis.di_principleicd":
            icdChanged(target, fielddata);
            getpathologycode(target);
            getTNM(target, "P");
            getTNM(target, "C");
            break;
        case "t_inhospitalhis.di_disease":
            diseaseChanged(target, fielddata);
            break;
        case "t_inhospitalhis.di_pt":
        case "t_inhospitalhis.di_pn":
        case "t_inhospitalhis.di_pm":
            getTNMPeriod(target, "P");
            break;
        case "t_inhospitalhis.di_ct":
        case "t_inhospitalhis.di_cn":
        case "t_inhospitalhis.di_cm":
            getTNMPeriod(target, "C");
            break;
    }
}
//ICD10
function icdChanged(target, fielddata) {
    if (!changebyuser) return;
    var icdcode = (fielddata.Value == "" || fielddata.Value == undefined) ? fielddata.Valuestr : fielddata.Value;
    if (icdcode == "") return;

    var $crf = $(target).closest(".crfroot,.crftablerow");

    $.ajax({
        type: "post",
        url: "/Public/GetICD10",
        data: {
            icdcode: icdcode
        },
        success: function (data) {
            if (data.Ret == "0") {
                //疾病分类
                var $diseasecode = $crf.find("[data-fieldid=Di_disease]");
                if ($diseasecode.size()) {
                    setInputValueNew($diseasecode, data.Content.Diseasecode, data.Content.Diseasecode, false);
                }
                //器官代码
                var $organcode = $crf.find("[data-fieldid=Di_organ]");
                if ($organcode.size()) {
                    setInputValueNew($organcode, data.Content.Organcode, data.Content.Organcode, false);
                }
            } else {
                $.messager.alert("提醒", data.Msg, "warning");
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
            //showError(xhr);
        }
    });
}

//疾病分类
function diseaseChanged(target, fielddata) {
    //if (!changebyuser) return;
    var diseasecode = (fielddata.Value == "" || fielddata.Value == undefined) ? fielddata.Valuestr : fielddata.Value;
    getpathologycode(target);
    getTNM(target, "P");
    getTNM(target, "C");
}

//病例分类逻辑
function getpathologycode(target) {
    var $crf = $(target).closest(".crfroot,.crftablerow");

    //病理分类
    var $pathologytypecode = $crf.find("[data-fieldid=Di_pathotype]");

    if (!$pathologytypecode.size())
        return;

    //选项来源
    var itemsource = $pathologytypecode.attr("data-itemsource");
    if (itemsource && itemsource == "0")
        return;

    //ICD编码
    var icdcode = $crf.find("[data-fieldid=Di_principleicd]").size() ? $crf.find("[data-fieldid=Di_principleicd]").val() : "";
    var diseasecode = $crf.find("[data-fieldid=Di_disease]").size() ? $crf.find("[data-fieldid=Di_disease]").val() : "";

    if ($pathologytypecode.size() && $pathologytypecode.attr("data-form") == "wycombo") {
        $pathologytypecode.attr("data-params", "{icdcode:'" + icdcode + "',diseasecode:'" + diseasecode + "'}");
    }
    else if ($pathologytypecode.size() && $pathologytypecode.is("select")) {
        $.ajax({
            type: "post",
            url: "/Book/SearchDiseasepathologyJson",
            data: {
                icdcode: icdcode,
                diseasecode: diseasecode,
                id: $("#Study_patient_id").val(),
                studyid: $("#Study_id").val()
            },
            success: function (data) {
                var selectedValue = $pathologytypecode.val();
                $pathologytypecode.find("option").remove();
                //添加一个空白项
                $pathologytypecode.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $pathologytypecode.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                setInputValueNew($pathologytypecode, selectedValue, selectedValue, false);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                showError(xhr);
            }
        });
    }
}

//获取TNM下拉框数据
function getTNM(target, pc) {
    //TNM
    var $t, $n, $m, $period;

    var $crf = $(target).closest(".crfroot,.crftablerow");

    if ("P" == pc) {
        $t = $crf.find("[data-fieldid=Di_pt]");
        $n = $crf.find("[data-fieldid=Di_pn]");
        $m = $crf.find("[data-fieldid=Di_pm]");
        $period = $crf.find("[data-fieldid=Di_ptnmperiod]");
    } else {
        $t = $crf.find("[data-fieldid=Di_ct]");
        $n = $crf.find("[data-fieldid=Di_cn]");
        $m = $crf.find("[data-fieldid=Di_cm]");
        $period = $crf.find("[data-fieldid=Di_ctnmperiod]");
    }

    if (!$t.size() || !$n.size() || !$m.size() || !$period.size())
        return;

    //只有下拉框适用TNM逻辑
    if (!$t.is("select") || !$n.is("select") || !$m.is("select") || !$period.is("select"))
        return;

    var icdcode = $crf.find("[data-fieldid=Di_principleicd]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_principleicd]")) : "";
    var diseasecode = $crf.find("[data-fieldid=Di_disease]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_disease]")) : "";
    var organcode = $crf.find("[data-fieldid=Di_organ]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_organ]")) : "";
    
    var jsondata = {
        Study_id: $("#Study_id").val(),
        Study_patient_id: $("#Study_patient_id").val(),
        Diseasecode: diseasecode,
        Organcode: organcode,
        Icdcode: icdcode,
        T: $t.val(),
        N: $n.val(),
        M: $m.val()
    };

    $.ajax({
        type: "post",
        url: "/Book/SearchTnmJson",
        data: {
            json: JSON.stringify(jsondata)
        },
        success: function (data) {
            var tvalue = $t.val();
            $t.find("option").remove();
            //添加一个空白项
            $t.prepend("<option></option>");
            $.each(data.T, function (index, itemdata) {
                $t.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
            });
            setInputValueNew($t, tvalue, tvalue, false);

            var nvalue = $n.val();
            $n.find("option").remove();
            //添加一个空白项
            $n.prepend("<option></option>");
            $.each(data.N, function (index, itemdata) {
                $n.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
            });
            setInputValueNew($n, nvalue, nvalue, false);

            var mvalue = $m.val();
            $m.find("option").remove();
            //添加一个空白项
            $m.prepend("<option></option>");
            $.each(data.M, function (index, itemdata) {
                $m.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
            });
            setInputValueNew($m, mvalue, mvalue, false);

            var periodvalue = $period.val();
            $period.find("option").remove();
            //添加一个空白项
            $period.prepend("<option></option>");
            $.each(data.Period, function (index, itemdata) {
                $period.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
            });
            setInputValueNew($period, periodvalue, periodvalue, false);
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //showError(xhr);
        }
    });
}

//计算TNM分期
function getTNMPeriod(target, pc) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");

    //TNM
    var $t, $n, $m, $period;

    if ("P" == pc) {
        $t = $crf.find("[data-fieldid=Di_pt]");
        $n = $crf.find("[data-fieldid=Di_pn]");
        $m = $crf.find("[data-fieldid=Di_pm]");
        $period = $crf.find("[data-fieldid=Di_ptnmperiod]");
    } else {
        $t = $crf.find("[data-fieldid=Di_ct]");
        $n = $crf.find("[data-fieldid=Di_cn]");
        $m = $crf.find("[data-fieldid=Di_cm]");
        $period = $crf.find("[data-fieldid=Di_ctnmperiod]");
    }

    if (!$t.size() || !$n.size() || !$m.size() || !$period.size())
        return;

    if ($t.val() == "" || $n.val() == "" || $m.val() == "")
        return;

    var icdcode = $crf.find("[data-fieldid=Di_principleicd]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_principleicd]")) : "";
    var diseasecode = $crf.find("[data-fieldid=Di_disease]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_disease]")) : "";
    var organcode = $crf.find("[data-fieldid=Di_organ]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_organ]")) : "";
    var pathologycode = $crf.find("[data-fieldid=Di_morphologic]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_morphologic]")) : "";
    var organclass = $crf.find("[data-fieldid=Di_differentiation]").size() ? getInputValueValue($crf.find("[data-fieldid=Di_differentiation]")) : "";

    var jsondata = {
        Study_id: $("#Study_id").val(),
        Study_patient_id: $("#Study_patient_id").val(),
        Diseasecode: diseasecode,
        Organcode: organcode,
        Icdcode: icdcode,
        Pathologycode: pathologycode,
        Organclass: organclass,
        T: $t.val(),
        N: $n.val(),
        M: $m.val()
    };

    $.ajax({
        type: "post",
        url: "/Book/GetTnmResult",
        data: {
            json: JSON.stringify(jsondata)
        },
        success: function (data) {
            if (data.Ret == "0") {
                setInputValueNew($period, data.Content, data.Content, false);
            } else {
                //$.messager.alert("消息", data.Msg, "warning");
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //showError(xhr);
        }
    });
}