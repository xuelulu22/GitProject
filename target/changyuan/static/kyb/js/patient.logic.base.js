//$(document).ready(function () {

//});

//字段值变化事件
function bindBaselogic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        case "p_study_patient.patnumber":
            patnumberChanged(target, fielddata);
            break;
        case "p_study_patient.province":
            provinceChanged(target, fielddata);
            break;
        case "p_study_patient.city":
            cityChanged(target, fielddata);
            break;
        case "t_p_p.p04":
        case "p_study_patient.birthday":
            cardno_birthday();
            getage(target);
            break;
        case "t_inhospitalhis.io_height":
        case "t_inhospitalhis.io_weight":
            getbsabmi(target);
            break
        case "t_inhospitalhis.io_admissiondate":
            getage(target);
            getiodays(target);
            break;
        case "t_inhospitalhis.io_admissiondate":
        case "t_inhospitalhis.io_dischargedate":
            getiodays(target);
            break;
    }
}

//根据病例编号查询分组信息
function patnumberChanged(target, fielddata) {
    if (!changebyuser) return;
    if (fielddata.Valuestr == "") return;

    //病例分组
    var $arm = $("[data-fieldid=Armcode]");
    if ($arm.size()) {
        $.ajax({
            type: "post",
            url: "/Study/Patient/GetRandomByPatnumber",
            data: {
                studyid: studyid,
                study_patient_id: studypatientid,
                patnumber: fielddata.Valuestr
            },
            success: function (data) {
                if (data.Ret == "0") {
                    setInputValueNew($arm, data.Content.Armcode, data.Content.Armname);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
               $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
                //showError(xhr);
            }
        });
    }
}

//省份
function provinceChanged(target, fielddata) {
    var $target = $(target);

    //城市
    var $city = $("[data-fieldid=City]");

    //选项来源
    var itemsource = $city.attr("data-itemsource");
    if (itemsource && itemsource == "0")
        return;

    if ($city.size() && $city.attr("data-form") == "wycombo") {
        $city.attr("data-params", "{province:'" + fielddata.Valuestr + "'}");
    }
    else if ($city.size() && $city.is("select")) {
        $.ajax({
            type: "post",
            url: "/Book/SearchCityJson",
            data: {
                province: fielddata.Valuestr
            },
            success: function (data) {
                var selectedValue = $city.val();
                $city.find("option").remove();
                //添加一个空白项
                $city.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $city.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                $city.val(selectedValue);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                showError(xhr);
            }
        });
    }
}

//城市
function cityChanged(target, fielddata) {
    var $target = $(target);

    //行政区
    var $district = $("[data-fieldid=District]");

    //选项来源
    var itemsource = $district.attr("data-itemsource");
    if (itemsource && itemsource == "0")
        return;

    if ($district.size() && $district.attr("data-form") == "wycombo") {
        $district.attr("data-params", "{city:'" + fielddata.Valuestr + "'}");
    }
    else if ($district.size() && $district.is("select")) {
        $.ajax({
            type: "post",
            url: "/Book/SearchDistrictJson",
            data: {
                city: fielddata.Valuestr
            },
            success: function (data) {
                var selectedValue = $district.val();
                $district.find("option").remove();
                //添加一个空白项
                $district.prepend("<option></option>");
                $.each(data, function (index, itemdata) {
                    $district.append("<option value='" + itemdata.value + "'>" + itemdata.text + "</option>");
                });
                $district.val(selectedValue);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                showError(xhr);
            }
        });
    }
}
//身份证号与出生日期
function cardno_birthday() {
    if (!changebyuser) return;

    var $cardno = $("[data-fieldid=P04]");
    var $birthday = $("[data-fieldid=Birthday]");
    if ($cardno.size() && $birthday.size()) {
        $.ajax({
            type: "post",
            url: "/Public/CheckCardno",
            data: {
                cardno: $cardno.val(),
                birthday: $birthday.val()
            },
            success: function (data) {
                //alert(JSON.stringify(data));
                if (data.Ret == "0") {
                    if ($birthday.val() == "") {
                        setInputValueNew($birthday, "", data.Content, false);
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

//体表面积/体重指数
function getbsabmi(target) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");
    var $height = $crf.find("[data-fieldid=Io_height]");
    var $weight = $crf.find("[data-fieldid=Io_weight]");
    var $bsa = $crf.find("[data-fieldid=Io_bsa]");
    var $bmi = $crf.find("[data-fieldid=Io_bmi]");
    console.log("patient.logic.base");

    if ($height.size() && $weight.size()) {
        var height = parseFloat($height.val());
        var weight = parseFloat($weight.val());

        if (!isNaN(height) && !isNaN(weight)) {
            var bmi = 0;
            bmi = height == 0 ? 0 : weight / ((height / 100) * (height / 100));
            if ($bmi.size()) {
                setInputValueNew($bmi, "", bmi.toFixed(2), false);
            }

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
                    if ($bsa.size())
                        setInputValueNew($bsa, "", data.Content.BSA, false);
                    if ($bmi.size())
                        setInputValueNew($bmi, "", data.Content.BMI, false);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
                //showError(xhr);
            }
        });*/
    }
}
//入院年龄
function getage(target) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");
    var $admissiondate = $crf.find("[data-fieldid=Io_admissiondate]");
    var $admissionage = $crf.find("[data-fieldid=Io_admissionage]");
    // 读取页面上的出生日期 有可能在同一页面也可能在父页面
    var $birthday = $('input[data-fieldid="Birthday"]');
    if (!$birthday.size()) {
        $birthday = $('input[data-fieldid="Birthday"]', parent.document);
    }

    if ($admissiondate.size() && $admissionage.size() && $admissiondate.val() != "") {
        $.ajax({
            type: "post",
            url: "/Public/GetAge",
            data: {
                date: $admissiondate.val(),
                id: $("#Study_patient_id").val(),
                birthday: $birthday.val() 
            },
            success: function (data) {
                if (data.Ret == "0") {
                    setInputValueNew($admissionage, "", data.Content, false);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
                //showError(xhr);
            }
        });
    }
}
//住院天数
function getiodays(target) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");
    var $admissiondate = $crf.find("[data-fieldid=Io_admissiondate]");
    var $dischargedate = $crf.find("[data-fieldid=Io_dischargedate]");
    var $hospitalizationdays = $crf.find("[data-fieldid=Io_hospitalizationdays]");

    if ($admissiondate.size() && $dischargedate.size() && $hospitalizationdays.size() && $admissiondate.val() != "" && $dischargedate.val() != "") {
        var adate = moment($admissiondate.val(), "YYYY-MM-DD");
        var ddate = moment($dischargedate.val(), "YYYY-MM-DD");
        
        var idate = Date.parse(adate);
        var odate = Date.parse(ddate);

        if (!isNaN(idate) && !isNaN(odate)) {
            if (idate <= odate) {
                var days = Math.abs((idate - odate)) / (1000 * 60 * 60 * 24);
                console.log(days);
                console.log(typeof (days));
                setInputValueNew($hospitalizationdays, "", days == 0 ? days + 1 : days, false);
            }
        }
    }
}