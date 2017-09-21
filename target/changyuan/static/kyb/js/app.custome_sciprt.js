/******************************************************************************
*
*
*
******************************************************************************/

var g_table = '<div id="findNormalOrAbnormal" style="position:relative;margin:0;padding:0;">' +
                '<div class="dialog-content">' +
                    '<table class="table table-bordered" id="normalTable">' +
                        '<thead><tr><td>症状名称</td><td>症状描述</td></tr></thead>' +
                        '{0}' +
                        '<tbody class="list-data"></tbody>' +
                    '</table>' +
                '</div>' +
              '</div>';

var CustomeCommon = {
    getSelectedValue: function (obj, notInclude, mustHave, normalText) {
        var result = "";
        if (typeof obj === "object") {
            $.each(obj, function (i, item) {
                var display = $(item).parent().css("display");
                //console.log(display);
                if (display === "none") {
                    return;
                }
                var labelText = $(item).parent().parent().children("td").children('span').text();
                if (labelText.length <= 0) {
                    return;
                }
                if (notInclude.indexOf(labelText) > -1) {
                    return;  //continue
                }

                var textValue = $(item).attr("data-text");
                if ((textValue === undefined || textValue === "")) {
                    return;
                }

                if (normalText.indexOf(textValue) > -1) {
                    return;
                }

                if (textValue === undefined) {
                    textValue = "";
                }

                result += "<tr><td>" + labelText + "</td><td>" + textValue + "</td></tr>";
            });
        }

        return result;
    }
}

var ShuguangDomain = {
    mustHave: "腹痛,腹胀,苔质,苔色,脉诊",
    scopeText: "局部症状,全身症状,饮食口味,望、切诊",
    normalText: "0,无,正常,否,无偏好,无关,",
    showSymptom: function () {
        var mh = this.mustHave;
        var st = this.scopeText;
        var nt = this.normalText;
        var notInclude = "病位辩证,病性辨证";
        var result = "";

        //var $radioList = $(".radio-container");
        //var $checkList = $(".checkbox-container");
        var $selectedList = $("div[data-text]");
        //result = CustomeCommon.getSelectedValue($radioList, notInclude, mh, nt);
        //result = result + CustomeCommon.getSelectedValue($checkList, notInclude, mh, nt);
        result = CustomeCommon.getSelectedValue($selectedList, notInclude, mh, nt);
        return g_table.replace("{0}", result);
    }
}

var SelectedWindow = {
    showShuguangSymptom: function () {
        layer.open({
            type: 1,
            title: "阳性症状",
            skin: 'layui-layer-rim', //加上边框
            area: ['420px', '500px'], //宽高
            content: ShuguangDomain.showSymptom()
        });
    }
}

