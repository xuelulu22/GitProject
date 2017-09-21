//$(document).ready(function () {

//});

//字段值变化事件
function bindChemlogic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        case "t_chem.ch_startdate":
        case "t_chem.ch_therapycode":
        case "t_chem.ch_therapyname":
            chemotherapycodeChanged(target, fielddata);
            break;
        case "t_chem.ch_mode":
            chmodeChange(target, fielddata);
            break;
        case "t_chem.ch_chemserum":
            chemserumChange(target, fielddata);
            break;
        case "t_chem_medication.me_code":
        case "t_chem_medication.me_name":
            medicationChanged(target, fielddata);
            break;
        case "t_chem_medication.me_standarddose":
        case "t_chem_medication.me_unit":
            standarddoseChange(target, fielddata);
            break;
        case "t_inhospitalhis.io_weight":
        case "t_inhospitalhis.io_height":
        case "t_chem.ch_height":
        case "t_chem.ch_weight":
            getbsa(target);
            bsaChanged(target, fielddata);
            break;
        case "t_chem.ch_bsa":
        case "t_inhospitalhis.io_bsa":
            bsaChanged(target, fielddata);
            break;

    }
}

//体表面积
function getbsa(target) {
    if (!changebyuser) return;
    var $height = findInput(target, "Ch_height");
    var $weight = findInput(target, "Ch_weight");
    var $bsa = findInput(target, "Ch_bsa");

    if ($height.size() && $weight.size() && $bsa.size()) {
        var height = parseFloat($height.val());
        var weight = parseFloat($weight.val());

        if (!isNaN(height) && !isNaN(weight)) {
            var bsa = Math.pow(height, 0.725) * Math.pow(weight, 0.425) * 71.84 / 10000;
            if ($bsa.size()) {
                setInputValueNew($bsa, "", bsa.toFixed(2), false);
            }
        }

        /*
        $.ajax({
            type: "post",
            url: "/Public/GetBSABMI",
            data: {
                height: $height.val(),
                weight: $weight.val()
            },
            success: function (data) {
                if (data.Content && data.Content != "") {
                    setInputValueNew($bsa, "", data.Content.BSA, false);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
              //  showError(xhr);
            }
        });*/
    }
}

//卡珀测算-血清肌酐变更
function chemserumChange(target, fielddata) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");
    //血清肌酐
    var $ch_chemserum = findInput(target, "Ch_chemserum");
    var ch_chemserum = $ch_chemserum.size() ? $ch_chemserum.val() : "";
    //体重
    var $ch_weight = findInput(target, "Ch_weight");

    if (!$ch_weight.size()) {
        $ch_weight = findInput(target, "Io_weight");
    }
    var ch_weight = $ch_weight.size() ? $ch_weight.val() : "";

    if (ch_chemserum == "" && ch_weight == "") {
        var $ch_carboplatindose = findInput(target, "Ch_carboplatindose");
        if ($ch_carboplatindose.size()) {
            setInputValueNew($ch_carboplatindose, "", "0", false);
        }
        return;
    }
    $.ajax({
        type: "post",
        url: "/Public/GetChemCarboplatinDose",
        data: {
            patientid: studypatientid,
            serum: ch_chemserum,
            weight: ch_weight,
        },
        success: function (data) {
            if (data.Ret == "0") {
                var $ch_carboplatindose = findInput(target, "Ch_carboplatindose");
                if ($ch_carboplatindose.size()) {
                    setInputValueNew($ch_carboplatindose, "", data.Content, false);
                }
                //给化疗用药中单位为AUC的药理论剂量赋值
                //方案用药明细
                var $medicationtable = $crf.find("[data-tableid=T_chem_medication]");
                if ($medicationtable.size()) {
                    //bug237
                    $medicationtable.find(".list-data>tr").each(function () {
                    //$medicationtable.find(".list-data tr").each(function () {
                        var $unit = $(this).find("[data-fieldid=Me_unit]");
                        if ($unit.size() && $unit.val() == "AUC") {
                            var $standarddose = $(this).find("[data-fieldid=Me_standarddose]");
                            if ($standarddose.size()) {
                                $standarddose.val(data.Content);
                            }

                            var $thrdose = $(this).find("[data-fieldid=Me_thrdose]");
                            if ($thrdose.size()) {
                                $thrdose.val(data.Content);
                            }
                        }
                    });
                }
            }
        }
    });
}

//化疗类型变更（计算方案类别）
function chmodeChange(target, fielddata) {
    if (!changebyuser) return;

    //化疗类型
    var ch_modevalue = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;
    var $ch_type = findInput(target, "Ch_type");
    if (!$ch_type.size()) {
        return;
    }
    //开始日期
    var $startdate = findInput(target, "Ch_startdate");
    var startdate = $startdate.size() ? $startdate.val() : "";
    if (ch_modevalue == "2" || ch_modevalue == "晚期/进展期化疗") {
        $ch_type.show();
    }
    else {
        setInputValueNew($ch_type, "", "", false);
        return;
    }

    //方案编码
    var $chemotherapycode = findInput(target, "Ch_therapycode");
    var chemotherapycode = $chemotherapycode.size() ? $chemotherapycode.val() : "";

    //当前化疗ID
    var chem_id = "0";
    if ($startdate.size()) {
        chem_id = $startdate.attr("data-data-id") ? $startdate.attr("data-data-id") : "0";
    }

    $.ajax({
        type: "post",
        url: "/Public/GetChemtype",
        data: {
            study_patient_id: studypatientid,
            chem_id: chem_id,
            startdate: startdate,
            chemerapycode: chemotherapycode,
            chemmode: ch_modevalue,
        },
        success: function (data) {
            if (data.Ret == "0") {
                setInputValueNew($ch_type, data.Content, data.Content, false);
            }
        }
    });
}

//方案代码变更
function chemotherapycodeChanged(target, fielddata) {
    if (!changebyuser) return;
    var $crf = $(target).closest(".crfroot,.crftablerow");
    //开始日期
    var $startdate = findInput(target, "Ch_startdate");
    //方案编码
    var $chemotherapycode = findInput(target, "Ch_therapycode");
    //方案名称
    var $chemotherapyname = findInput(target, "Ch_therapyname");

    //方案类别
    var $chmode = findInput(target, "Ch_mode");
    var chmode = $chmode.size() ? $chmode.val() : "";

    //化疗类型
    var $chtype = findInput(target, "Ch_type");
    var chtype = $chtype.size() ? $chtype.val() : "";

    //方案名称
    if (!$chemotherapycode.size() && !$chemotherapyname.size()) {
        return;
    }
    //血清肌酐
    var $ch_chemserum = findInput(target, "Ch_chemserum");
    var ch_chemserum = $ch_chemserum.size() ? $ch_chemserum.val() : "";

    //体重
    var $weight = findInput(target, "Ch_weight");
    if (!$weight.size()) {
        $weight = $crf.find("[data-fieldid=Io_weight]");
    }
    var weight = $weight.size() ? $weight.val() : "";

    // 体表面积
    var $bsa = findInput(target, "Ch_bsa");
    if (!$bsa.size()) {
        $bsa = $crf.find("[data-fieldid=Io_bsa]");
    }
    var bsa = $bsa.size() ? $bsa.val() : "";


    //身高
    var $height = findInput(target, "Ch_height");
    if (!$height.size()) {
        $height = $crf.find("[data-fieldid=Io_height]");
    }
    var height = $height.size() ? $height.val() : "";

    var startdate = $startdate.size() ? $startdate.val() : "";
    var chemotherapycode = $chemotherapycode.val();

    if (fielddata.Df_fieldid == "Ch_startdate") {
        startdate = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;
    }
    if (fielddata.Df_fieldid == "Ch_therapyname" || fielddata.Df_fieldid == "Ch_therapycode") {
        chemotherapycode = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;
    }

    //当前化疗ID
    var chem_id = "0";
    if ($startdate.size()) {
        chem_id = $startdate.attr("data-data-id") ? $startdate.attr("data-data-id") : 0;
    }

    //int patientid, string startdate, string chemotherapycode, string height, string weight, string bsa   
    $.ajax({
        type: "post",
        url: "/Public/GetChemotherapy",
        data: {
            target: fielddata.Df_fieldid ,
            study_patient_id: studypatientid,
            chem_id: chem_id,
            startdate: startdate,
            chemotherapycode: chemotherapycode,
            height: height,
            weight: weight,
            bsa: bsa,
            chmode: chmode,
            chtype: chtype,
            serum: ch_chemserum
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content.Chemotherapy != null) {
                    if ($(target).attr("data-fieldid") != "Ch_therapycode") {
                        //方案代码
                        var $chemotherapycode = findInput(target, "Ch_therapycode");
                        if ($chemotherapycode.size()) {
                            setInputValueNew($chemotherapycode, data.Content.Chemotherapy.Ch_therapycode, data.Content.Chemotherapy.Ch_therapycode, false);
                        }
                    }
                    if ($(target).attr("data-fieldid") != "Ch_therapyname") {
                        //方案名称
                        var $chemotherapyname = findInput(target, "Ch_therapyname");
                        if ($chemotherapyname.size()) {
                            setInputValueNew($chemotherapyname, data.Content.Chemotherapy.Ch_therapycode, data.Content.Chemotherapy.Ch_therapyname, false);
                        }
                    }
                    //结束日期
                    var $ch_enddate = findInput(target, "Ch_enddate");
                    var enddate = $.trim($ch_enddate.val());
                    //如果结束日期中已经手工填写，则不需要自动计算结束日期
                    if ($ch_enddate.size() && enddate.length <= 0) {
                        setInputValueNew($ch_enddate, "", data.Content.Chemotherapy.Ch_enddate, false);
                    }
                    //化疗类型
                    var $ch_mode = findInput(target, "Ch_mode");
                    if ($ch_mode.size()) {
                        setInputValueNew($ch_mode, data.Content.Chemotherapy.Ch_mode, data.Content.Chemotherapy.Ch_mode, false);
                    }
                    //方案类别（一线、二线。。。）
                    var $ch_type = findInput(target, "Ch_type");
                    if ($ch_type.size()) {
                        setInputValueNew($ch_type, data.Content.Chemotherapy.Ch_type, data.Content.Chemotherapy.Ch_type, false);
                    }
                    //期数
                    var $ch_period = findInput(target, "Ch_period");
                    if ($ch_period.size()) {
                        setInputValueNew($ch_period, "", data.Content.Chemotherapy.Ch_period, false);
                    }
                    //方案间隔天数
                    var $ch_intervaldays = findInput(target, "Ch_intervaldays");
                    if ($ch_intervaldays.size()) {
                        setInputValueNew($ch_intervaldays, "", data.Content.Chemotherapy.Ch_intervaldays, false);
                    }
                    //实际间隔天数
                    var $ch_actintervaldays = findInput(target, "Ch_actintervaldays");
                    if ($ch_actintervaldays.size()) {
                        setInputValueNew($ch_actintervaldays, "", data.Content.Chemotherapy.Ch_actintervaldays, false);
                    }

                    if (data.Content.ChemotherapyMedicationList != null) {
                        //方案用药明细
                        var $medicationtable = $crf.find("[data-tableid=T_chem_medication]");
                        if ($medicationtable.size()) {
                            //删除当前行
                            delAllRow($medicationtable);
                            //添加新行
                            $.each(data.Content.ChemotherapyMedicationList, function (index, itemdata) {
                                var $row = addRow($medicationtable);
                                //药物代码
                                var $medicationcode = $row.find("[data-fieldid=Me_code]");
                                if ($medicationcode.size()) {
                                    setInputValueNew($medicationcode, itemdata.Medicationcode, itemdata.Medicationcode, false);
                                }
                                //药物名称
                                var $medicationname = $row.find("[data-fieldid=Me_name]");
                                if ($medicationname.size()) {
                                    setInputValueNew($medicationname, itemdata.Medicationcode, itemdata.Medicationname, false);
                                }
                                //初始化商品名下拉框数据
                                var $productcode = $row.find("[data-fieldid=Me_productcode]");
                                var $productname = $row.find("[data-fieldid=Me_productname]");
                                if ($productcode.size() || $productname.size()) {
                                    var $medication = $medicationcode.size() ? $medicationcode : $medicationname;
                                    getMedicationProduct($medication, itemdata.Medicationcode);
                                }

                                //单位
                                var $unit = $row.find("[data-fieldid=Me_unit]");
                                if ($unit.size()) {
                                    //debugger;
                                    setInputValueNew($unit, itemdata.Unit, itemdata.Unit, false);
                                }
                                //计算标准
                                var $calculaterule = $row.find("[data-fieldid=Me_calculaterule]");
                                if ($calculaterule.size()) {
                                    setInputValueNew($calculaterule, itemdata.Calculaterule, itemdata.Calculaterule, false);
                                }
                                //标准剂量
                                var $standarddose = $row.find("[data-fieldid=Me_standarddose]");
                                if ($standarddose.size()) {
                                    setInputValueNew($standarddose, "", itemdata.Standarddose, false);
                                }
                                //理论剂量
                                var $thrdose = $row.find("[data-fieldid=Me_thrdose]");
                                if ($thrdose.size()) {
                                    setInputValueNew($thrdose, "", itemdata.Thrdose, false);
                                }
                                //使用方法
                                var $usemethod = $row.find("[data-fieldid=Me_usemethod]");
                                if ($usemethod.size()) {
                                    setInputValueNew($usemethod, "", itemdata.Usemethod, false);
                                }
                                //计划使用日期
                                var $usedays = $row.find("[data-fieldid=Me_usedays]");
                                if ($usedays.size()) {
                                    setInputValueNew($usedays, "", itemdata.Usedays, false);
                                }
                            });
                        }
                    }
                } else {
                    //方案代码
                    var $chemotherapycode = findInput(target, "Ch_therapycode");
                    if ($chemotherapycode.size()) {
                        setInputValueNew($chemotherapycode, "", "", false);
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

//选择药物时触发
function medicationChanged(target, fielddata) {
    var medicationcode = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;

    //根据药物初始化商品名下拉框
    getMedicationProduct(target, medicationcode);

    if (!changebyuser) return;

    if (medicationcode == "") {
        //药物代码
        var $itemcode = findInput(target, "Me_code");
        if ($itemcode.size()) {
            setInputValueNew($itemcode, "", "", false);
        }
        return;
    }

    $.ajax({
        type: "post",
        url: "/Public/GetMedication",
        data: {
            medicationcode: medicationcode
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content.Medication != null) {
                    var itemdata = data.Content.Medication;
                    //药物
                    //药物代码
                    if ($(target).attr("data-fieldid") != "Me_code") {
                        var $itemcode = findInput(target, "Me_code");
                        if ($itemcode.size()) {
                            setInputValueNew($itemcode, itemdata.Medicationcode, itemdata.Medicationcode, false);
                        }
                    }
                    //通用名
                    if ($(target).attr("data-fieldid") != "Me_name") {
                        var $itemname = findInput(target, "Me_name");
                        if ($itemname.size()) {
                            setInputValueNew($itemname, itemdata.Medicationcode, itemdata.Medicationname_cn, false);
                        }
                    }
                    ////单位
                    //if ($(target).attr("data-fieldid") != "Me_unit") {
                    //    debugger;
                    //    var $unit = findInput(target, "Me_unit");
                    //    if ($unit.size()) {
                    //        setInputValueNew($unit, itemdata.Unit, itemdata.Unit, false);
                    //    }
                    //}
                } else {
                    //药物代码
                    var $itemcode = findInput(target, "Me_code");
                    if ($itemcode.size()) {
                        setInputValueNew($itemcode, "", "", false);
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

//根据药物代码初始化商品名下拉框
function getMedicationProduct(target, medicationcode) {
    var $productcode = findInput(target, "Me_productcode");
    var $productname = findInput(target, "Me_productname");
    if ($productcode.size() && $productcode.attr("data-form") == "wycombo") {
        $productcode.attr("data-params", "{medicatoin:'" + medicationcode + "'}");
    }
    if ($productname.size() && $productname.attr("data-form") == "wycombo") {
        $productname.attr("data-params", "{medicatoin:'" + medicationcode + "'}");
    }
    if (($productcode.size() && $productcode.is("select")) || ($productname.size() && $productname.is("select"))) {
        $.ajax({
            type: "post",
            url: "/Book/SearchMedicationProductJson",
            data: {
                medicatoin: medicationcode
            },
            success: function (data) {
                var selectedValue = $productcode.val();

                //加载检查代码项
                $productcode.find("option").remove();
                //添加一个空白项
                $productcode.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $productcode.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                $productcode.val(selectedValue);

                //加载检查检查名字项
                $productname.find("option").remove();
                //添加一个空白项
                $productname.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $productname.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                $productname.val(selectedValue);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                showError(xhr);
            }
        });
    }
}

//单个药物标准剂量变更更新理论剂量
function standarddoseChange(target, fielddata) {
    if (!changebyuser) return;
    var $crf = $(target).closest(".crfroot,.crftablerow");

    //体重
    var $weight = findInput(target, "Ch_weight");
    if (!$weight.size()) {
        $weight = findInput(target, "Io_weight");
    }
    var weight = $weight.size() ? $weight.val() : "";

    //体表面积
    var $bsa = findInput(target, "Ch_bsa");
    if (!$bsa.size()) {
        $bsa = findInput(target, "Io_bsa");
    }
    var bsa = $bsa.size() ? $bsa.val() : "";

    //身高
    var $height = findInput(target, "Ch_height");
    if ($height.size()) {
        $height = findInput(target, "Io_height");
    }
    var height = $height.size() ? $height.val() : "";

    //剂量单位
    var $me_unit = findInput(target, "Me_unit");
    var me_unit = $me_unit.size() ? $me_unit.val() : "";

    //标准剂量
    var $me_standarddose = findInput(target, "Me_standarddose");
    var me_standarddose = $me_standarddose.size() ? $me_standarddose.val() : "0";

    //药物代码
    var $medicationcode = findInput(target, "Me_code");
    var medicationcode = $medicationcode.size() ? $medicationcode.val() : "";

    if (me_unit == "AUC") {
        //卡铂理论剂量=标准剂量
        var $thrdose = findInput(target, "Me_thrdose");
        if ($thrdose.size()) {
            setInputValueNew($thrdose, me_standarddose, me_standarddose, false);
        }
    } else if (me_unit != "") {
        //单位不为空时，重新计算
        $.ajax({
            type: "post",
            url: "/Public/GetThrdose",
            data: {
                medicationcode: medicationcode,
                unit: me_unit,
                standarddose: me_standarddose,
                bsa: bsa,
                weight: weight,
                height: height
            },
            success: function (data) {
                if (data.Ret == "0") {
                    //理论剂量
                    var $thrdose = findInput(target, "Me_thrdose");
                    if ($thrdose.size()) {
                        setInputValueNew($thrdose, data.Content, data.Content, false);
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
}

//获取上次化疗方案
function getLastChem(target) {
    var $target = target ? $(target) : $(event.target);
    if ($target == null || $target == undefined) {
        $target = $(".crfroot,.crftablerow");
    }

    var $ch_startdate = findInput($target, "Ch_startdate");
    var $chemotherapycode = findInput($target, "Ch_therapycode");
    var $chemotherapyname = findInput($target, "Ch_therapyname");
    
    if ($chemotherapycode.size() || $chemotherapyname.size()) {
        
        //患者和访视Id
        var study_patient_id = $("#Study_patient_id").val();
        var visit_id = $("#Visit_id").val();
        if ($ch_startdate.size() && $ch_startdate.val() != "") {
            //当前化疗记录的ID
            var chem_id = $ch_startdate.attr("data-data-id") ? $ch_startdate.attr("data-data-id") : "0";

            layer.load(2);

            $.ajax({
                type: "post",
                url: "/Study/Patient/GetLastChem",
                data:{
                    study_patient_id: study_patient_id,
                    chem_id: chem_id,
                    startdate: $ch_startdate.val(),
                },
                success: function (e) {
                    layer.closeAll();

                    if (e.Ret == "1") {
                        $.messager.alert("提示", "无既往化疗方案！", "info");
                    } else {
                        if ($chemotherapycode.size()) {
                            setInputValueNew($chemotherapycode, e.Content.Ch_therapycode, e.Content.Ch_therapycode, true);
                        } else if ($chemotherapyname.size()) {
                            setInputValueNew($chemotherapyname, e.Content.Ch_therapycode, e.Content.Ch_therapyname, true);
                        }
                    }
                }, error: function () {
                    layer.closeAll();
                }
            })
        } else {
            $.messager.alert("提示", "请选择治疗开始日期！", "warning");
        }
    }
}

//体表面积变更计算理论剂量
function bsaChanged(target, fielddata) {
    if (!changebyuser) return;
    var $crf = $(target).closest(".crfroot,.crftablerow");

    //血清肌酐
    var $ch_chemserum = findInput(target, "Ch_chemserum");
    var ch_chemserum = $ch_chemserum.size() ? $ch_chemserum.val() : "";

    //体重
    var $weight = findInput(target, "Ch_weight");
    if (!$weight.size()) {
        $weight = $crf.find("[data-fieldid=Io_weight]");
    }
    var weight = $weight.size() ? $weight.val() : "";

    var $height = findInput(target, "Ch_height");
    if (!$height.size()) {
        $height = $crf.find("[data-fieldid=Io_height]");
    }
    var height = $height.size() ? $height.val() : "";

    // 体表面积
    var $bsa = findInput(target, "Ch_bsa");
    if (!$bsa.size()) {
        $bsa = $crf.find("[data-fieldid=Io_bsa]");
    }
    var bsa = $bsa.size() ? $bsa.val() : "";

    //药物清单
    var medicationlist = getChemMedicationJson(target);

    $.ajax({
        type: "post",
        url: "/Public/GetThrdoseChangeBsa",
        data: {
            study_patient_id: studypatientid,
            serum: ch_chemserum,
            bsa: bsa,
            weight: weight,
            height: height,
            medicationjson: JSON.stringify(medicationlist)
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content.ChemotherapyMedicationList != null) {
                    //方案用药明细
                    var $medicationtable = $crf.find("[data-tableid=T_chem_medication]");
                    if ($medicationtable.size()) {
                        //bug237
                        var rows = $medicationtable.find(".list-data>tr");
                        //var rows = $medicationtable.find(".list-data tr");

                        $.each(data.Content.ChemotherapyMedicationList, function (index, rowdata) {
                            var $row = rows.eq(index);
                            if ($row != null && $row != undefined) {
                                //标准剂量
                                var $standarddose = $row.find("[data-fieldid=Me_standarddose]");
                                if ($standarddose.size()) {
                                    setInputValueNew($standarddose, "", rowdata.Standarddose, false);
                                }
                                //理论剂量
                                var $thrdose = $row.find("[data-fieldid=Me_thrdose]");
                                if ($thrdose.size()) {
                                    setInputValueNew($thrdose, "", rowdata.Thrdose, false);
                                }
                            }
                        });
                    }
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {

            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
            //showError(xhr);
        }
    });
}

//获取化疗用药（用于重新计算理论剂量）
function getChemMedicationJson(target) {
    var $crf = $(target).closest(".crfroot,.crftablerow");
    var medicationdata = [];

    //方案用药明细
    var $medicationtable = $crf.find("[data-tableid=T_chem_medication]");
    if ($medicationtable.size()) {
        //bug237
        $medicationtable.find(".list-data>tr").each(function (index) {
        //$medicationtable.find(".list-data tr").each(function (index) {
            var row = $(this);
            var rowdata = {
                Row: index,
                Medicationcode: "",
                Standarddose: 0,
                Unit: "",
                Thrdose: 0
            };

            //药物代码
            var $medicationcode = row.find("[data-fieldid=Me_code]");
            if ($medicationcode.size()) {
                rowdata.Medicationcode = $medicationcode.val();
            }
            //标准剂量
            var $standarddose = row.find("[data-fieldid=Me_standarddose]");
            if ($standarddose.size()) {
                rowdata.Standarddose = $standarddose.val();
            }
            //理论剂量
            var $thrdose = row.find("[data-fieldid=Me_thrdose]");
            if ($thrdose.size()) {
                rowdata.Thrdose = $thrdose.val();
            }
            //计算单位
            var $unit = row.find("[data-fieldid=Me_unit]");
            if ($unit.size()) {
                rowdata.Unit = $unit.val();
            }

            medicationdata.push(rowdata);
        });
    }

    return medicationdata;
}