//$(document).ready(function () {
    
//});

//字段值变化事件
function bindInspectlogic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        case "t_inspect.te_code":
        case "t_inspect.te_name":
            inspectcodeChanged(target, fielddata);
            break;
        case "t_inspect.te_type":
            inspecttypeChanged(target,fielddata);
            break;
        case "t_inspect_dtl.ti_code":
        case "t_inspect_dtl.ti_name":
            inspectitemcodeChanged(target, fielddata);
            break;
        case "t_inspect_dtl.ti_datatype":
        case "t_inspect_dtl.ti_combostr":
            itemtypeChanged(target, fielddata);
            break;
        case "t_inspect_dtl.ti_value":
            inspectresultChanged(target, fielddata);
            break;
    }
}

//选择套餐类型加载检查套餐
function inspecttypeChanged(target, fielddata) {
    if (!changebyuser) return;
    //检查套餐代码
    var $inspectcode = findInput(target, "Te_code");
    var $inspectname = findInput(target, "Te_name");
    var inspecttypevalue = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;

    if ($inspectname.size() && $inspectname.attr("data-form") == "wycombo") {
        $inspectname.attr("data-params", "{inspecttype:'" + inspecttypevalue + "'}");
    }    
    if ($inspectcode.size() && $inspectcode.attr("data-form") == "wycombo") {
        $inspectcode.attr("data-params", "{inspecttype:'" + inspecttypevalue + "'}");
    }
    else if (($inspectcode.size() && $inspectcode.is("select")) || ($inspectname.size() && $inspectname.is("select"))) {
        $.ajax({
            type: "post",
            url: "/Book/SearchInspectJson",
            data: {
                inspecttype: inspecttypevalue
            },
            success: function (data) {
                var selectedValue = $inspectcode.val();

                //加载检查代码项
                $inspectcode.find("option").remove();
                //添加一个空白项
                $inspectcode.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $inspectcode.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                $inspectcode.val(selectedValue);

                //加载检查检查名字项
                $inspectname.find("option").remove();
                //添加一个空白项
                $inspectname.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $inspectname.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                $inspectname.val(selectedValue);

            },
            error: function (xhr, ajaxOptions, thrownError) {
                showError(xhr);
            }
        });
    }
}


//选择检查套餐
function inspectcodeChanged(target, fielddata) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");
    var inspectcode = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;
    if (inspectcode == "") {
        //检查套餐代码
        var $inspectcode = findInput(target, "Te_code");
        if ($inspectcode.size()) {
            setInputValueNew($inspectcode, "", "", false);
        }
        return;
    }

    $.ajax({
        type: "post",
        url: "/Public/GetInspect",
        data: {
            inspectcode: inspectcode
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content.Inspect != null) {
                    //检查类别
                    var $inspecttype = findInput(target, "Te_type");
                    if ($inspecttype.size()) {
                        setInputValueNew($inspecttype, data.Content.Inspect.Inspecttype, data.Content.Inspect.Inspecttype, false);
                    }
                    if ($(target).attr("data-fieldid") != "Te_code") {
                        //检查套餐代码
                        var $inspectcode = findInput(target, "Te_code");
                        if ($inspectcode.size()) {
                            setInputValueNew($inspectcode, data.Content.Inspect.Inspectcode, data.Content.Inspect.Inspectcode, false);
                        }
                    }
                    if ($(target).attr("data-fieldid") != "Te_name") {
                        //检查套餐名称
                        var $inspectname = findInput(target, "Te_name");
                        if ($inspectname.size()) {
                            setInputValueNew($inspectname, data.Content.Inspect.Inspectcode, data.Content.Inspect.Inspectname_cn, false);
                        }
                    }

                    if (data.Content.InspectDtlList != null) {
                        //检查子项目明细
                        var $inspectdtltable = $crf.find("[data-tableid=T_inspect_dtl]");
                        if ($inspectdtltable.size()) {
                            //删除当前行
                            delAllRow($inspectdtltable);
                            //添加新行
                            $.each(data.Content.InspectDtlList, function (index, itemdata) {
                                var $row = addRow($inspectdtltable);
                                //项目代码
                                var $itemcode = $row.find("[data-fieldid=Ti_code]");
                                if ($itemcode.size()) {
                                    setInputValueNew($itemcode, itemdata.Inspectitemcode, itemdata.Inspectitemcode, false);
                                }
                                //项目名称
                                var $itemname = $row.find("[data-fieldid=Ti_name]");
                                if ($itemname.size()) {
                                    setInputValueNew($itemname, itemdata.Inspectitemcode, itemdata.Inspectitemname_cn, false);
                                }
                                //单位
                                var $unit = $row.find("[data-fieldid=Ti_unit]");
                                if ($unit.size()) {
                                    setInputValueNew($unit, itemdata.Unit, itemdata.Unit, false);
                                }
                                //最小值
                                var $minval = $row.find("[data-fieldid=Ti_minval]");
                                if ($minval.size()) {
                                    setInputValueNew($minval, "", itemdata.Minval, false);
                                }
                                //最大值
                                var $maxval = $row.find("[data-fieldid=Ti_maxval]");
                                if ($maxval.size()) {
                                    setInputValueNew($maxval, "", itemdata.Maxval, false);
                                }
                                //正常值范围
                                var $referencerange = $row.find("[data-fieldid=Ti_referencerange]");
                                if ($referencerange.size()) {
                                    setInputValueNew($referencerange, "", itemdata.Referencerange, false);
                                }
                                //序列值
                                var $combostr = $row.find("[data-fieldid=Ti_combostr]");
                                if ($combostr.size()) {
                                    setInputValueNew($combostr, "", itemdata.Combostr, true);
                                }
                                //字段类型
                                var $itemtype = $row.find("[data-fieldid=Ti_datatype]");
                                if ($itemtype.size()) {
                                    setInputValueNew($itemtype, itemdata.Itemtype, itemdata.Itemtype, true);
                                }
                            });
                        }
                    }
                } else {
                    //检查套餐代码
                    var $inspectcode = findInput(target, "Te_code");
                    if ($inspectcode.size()) {
                        setInputValueNew($inspectcode, "", "", false);
                    }
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

//选择检查子项目
function inspectitemcodeChanged(target, fielddata) {
    if (!changebyuser) return;
    if (setdefaultval) return;
    var inspectitemcode = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;
    if (inspectitemcode == "") return;

    //检查套餐代码
    var inspectcode = "";
    var $crf = $(target).closest(".crfroot,.crftablerow");
    var $inspectcode = findInput(target, "Te_code");
    if ($inspectcode.size()) {
        inspectcode = $inspectcode.val();
    }

    $.ajax({
        type: "post",
        url: "/Public/GetInspectItem",
        data: {
            inspectcode: inspectcode,
            itemcode: inspectitemcode
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content != null) {
                    var itemdata = data.Content;
                    //检查子项目明细
                    if ($(target).attr("data-fieldid") != "Ti_code") {
                        //子项目代码
                        var $itemcode = findInput(target, "Ti_code");
                        if ($itemcode.size()) {
                            setInputValueNew($itemcode, itemdata.Inspectitemcode, itemdata.Inspectitemcode, false);
                        }
                    }
                    if ($(target).attr("data-fieldid") != "Ti_name") {
                        //子项目名称
                        var $itemname = findInput(target, "Ti_name");
                        if ($itemname.size()) {
                            setInputValueNew($itemname, itemdata.Inspectitemcode, itemdata.Inspectitemname_cn, false);
                        }
                    }
                    //单位
                    var $unit = findInput(target, "Ti_unit");
                    if ($unit.size()) {
                        setInputValueNew($unit, itemdata.Unit, itemdata.Unit, false);
                    }
                    //最小值
                    var $minval = findInput(target, "Ti_minval");
                    if ($minval.size()) {
                        setInputValueNew($minval, "", itemdata.Minval, false);
                    }
                    //最大值
                    var $maxval = findInput(target, "Ti_maxval");
                    if ($maxval.size()) {
                        setInputValueNew($maxval, "", itemdata.Maxval, false);
                    }
                    //正常值范围
                    var $referencerange = findInput(target, "Ti_referencerange");
                    if ($referencerange.size()) {
                        setInputValueNew($referencerange, "", itemdata.Referencerange, false);
                    }
                    //序列值
                    var $combostr = findInput(target, "Ti_combostr");
                    if ($combostr.size()) {
                        setInputValueNew($combostr, "", itemdata.Combostr, true);
                    }
                    //字段类型
                    var $itemtype = findInput(target, "Ti_datatype");
                    if ($itemtype.size()) {
                        setInputValueNew($itemtype, itemdata.Itemtype, itemdata.Itemtype, true);
                    }
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

//判断结果高低
function inspectresultChanged(target, fielddata) {
    if (!changebyuser) return;

    //检查套餐代码
    var inspectcode = "";
    var $inspectcode = findInput(target, "Te_code");
    if ($inspectcode.size()) {
        inspectcode = $inspectcode.val();
    }
    //检查子项目代码
    var inspectitemcode = "";
    var $inspectitemcode = findInputByRecordid(target, "Ti_code");
    if ($inspectitemcode.size()) {
        inspectitemcode = $inspectitemcode.val();
    }

    $.ajax({
        type: "post",
        url: "/Public/GetInspectItemResult",
        data: {
            inspectcode: inspectcode,
            itemcode: inspectitemcode,
            value: fielddata.Valuestr
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content != null) {
                    if (data.Content.highlowflag != "NA") {
                        //结果判断
                        var $highlowflag = findInputByRecordid(target, "Ti_indicator");
                        if ($highlowflag.size()) {
                            setInputValueNew($highlowflag, data.Content.highlowflag, data.Content.highlowflag, false);
                        }
                        //临床意义
                        var $clinicalmeaning = findInputByRecordid(target, "Ti_clinicalmeaning");
                        if ($clinicalmeaning.size()) {
                            if (data.Content.outflag == "0") {
                                setInputValueNew($clinicalmeaning, "1", "正常", false);
                            } else {
                                clearInputValue($clinicalmeaning, false);
                            }
                        }
                    }
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

//检查结果序列值
function itemtypeChanged(target, fielddata) {
    target = target ? target : this;
    var $row = $(target).closest("tr");

    //字段类型
    var $itemtype = $row.find("[data-fieldid=Ti_datatype]");
    //序列值
    var $combostr = $row.find("[data-fieldid=Ti_combostr]");
    //结果
    var $result = $row.find("[data-fieldid=Ti_value]");
    if ($itemtype.size() && $combostr.size() && $result.size()) {
        var id = $result.attr("id")

        if ($itemtype.val() == "1" && $combostr.val() != "") {
            var datalist = $combostr.val().split(',');

            var $input = $row.find("[rel-input=" + id + "]");
            if (!$input.size()) {
                $input = $("<select />");
                $input.addClass("form-control crfform-input");
                $input.attr("rel-input", id);
                $input.css("width", "auto");
            }
            $input.find("option").remove();
            //添加一个空白项
            $input.prepend("<option></option>");
            $.each(datalist, function (index, value) {
                $input.append("<option>" + value + "</option>");
            });
            setInputValueNew($input, $result.val(), $result.val(), false);

            $result.hide();
            $input.appendTo($result.parent());
            $input.change(function () {
                setInputValueNew($result, $(this).val(), $(this).val(), true);
            });
        } else {
            var $input = $row.find("[rel-input=" + id + "]");
            if ($input.size()) {
                $input.remove();
                $result.show();
            }
        }
    }
}
