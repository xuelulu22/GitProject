$(document).ready(function () {



    $("[data-elementtype='table']").each(function () {
        var target = $(this);
        target.find(".inspectForAE").click(function () {
            var parentwin = getIndexWindow();
            parentwin.currentchildwindow = window;
            parentwin.dlg.setSize(900, 600);
            parentwin.dlg.setURL("添加助手", "/Study/Patient/InspectForAe/" + studypatientid + "?d=0&v=" + $("#Visit_id").val() + "&tid=" + target.attr("id") + "&callback=addAeRow");
            parentwin.dlg.show();
        });
    });

    $("#btnInspectForAE").click(function () {
        var $crf = $(".crftablerow,.crfroot").eq(0);

        var parentwin = getIndexWindow();
        parentwin.currentchildwindow = window;
        parentwin.dlg.setSize(900, 600);
        parentwin.dlg.setURL("添加助手", "/Study/Patient/InspectForAe/" + studypatientid + "?d=1&&v=" + $("#Visit_id").val() + "&tid=" + $crf.attr("id") + "&callback=setCrfAeData");
        parentwin.dlg.show();
    });
});

//字段值变化事件
function bindCtcaelogic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        //case "t_radio.radiotherapycode":
        //    radiotherapycodeChanged(target, fielddata);
        //    break;
    }
}

function getInspectDtlIds() {
    var ids = "";
    $("[data-fieldid=Inspect_dtl_id]").each(function () {
        if ($(this).val() != "" && $(this).val() != "0") {
            ids += $(this).val() + ",";
        }
    });
    return ids;
}

//从异常检查添加不良事件
function addAeRow(json, tid) {
    var $target = $("#" + tid);

    var row = addRow($target, null);
    var jsondata = json;
    if (typeof json === 'string') {
        jsondata = JSON.parse(json);
    }

    //查找Inspect_dtl_id字段
    var $inspect_dtl_id = $(row).find("[data-fieldid=Inspect_dtl_id]");
    if ($inspect_dtl_id.size() == 0) {
        var $aename = $(row).find("[data-fieldid=Ae_decodename],[data-fieldid=Ae_decode]").eq(0);
        if ($aename.size()) {
            $inspect_dtl_id = $("<input />");
            $inspect_dtl_id.attr("type", "hidden");
            $inspect_dtl_id.attr("data-tableid", $aename.attr("data-tableid"));
            $inspect_dtl_id.attr("data-fieldid", "Inspect_dtl_id");
            $inspect_dtl_id.attr("data-recordid", $aename.attr("data-recordid"));
            $inspect_dtl_id.attr("class", $aename.attr("class"));
            $inspect_dtl_id.attr("data-fieldkind", "0");
            $inspect_dtl_id.appendTo($(row).find("td").eq(0));
        }
    }

    //行数据
    $(row).find(".list-crffield").each(function () {
        var $input = $(this);
        var fieldid = $input.attr("data-fieldid");

        var fieldvalue = jsondata[$input.attr("data-fieldid")];
        if (fieldvalue != undefined && fieldvalue != null) {
            setInputValueNew($input, fieldvalue, fieldvalue);
        }

        if (fieldid == "Ae_modify" || fieldid == "Ae_decodename") {
            setInputValueNew($input, jsondata.Ae_name, jsondata.Ae_name);
        }
    });
}

//从异常检查添加不良事件
function setCrfAeData(json, tid) {
    var $crf = $("#" + tid);

    var jsondata = json;
    if (typeof json === 'string') {
        jsondata = JSON.parse(json);
    }

    //查找Inspect_dtl_id字段
    var $inspect_dtl_id = $crf.find("[data-fieldid=Inspect_dtl_id]");
    if ($inspect_dtl_id.size() == 0) {
        var $aename = $crf.find("[data-fieldid=Ae_name],[data-fieldid=Ae_code]").eq(0);
        if ($aename.size()) {
            $inspect_dtl_id = $("<input />");
            $inspect_dtl_id.attr("type", "hidden");
            $inspect_dtl_id.attr("data-tableid", $aename.attr("data-tableid"));
            $inspect_dtl_id.attr("data-fieldid", "Inspect_dtl_id");
            $inspect_dtl_id.attr("data-recordid", $aename.attr("data-recordid"));
            $inspect_dtl_id.attr("class", $aename.attr("class"));
            $inspect_dtl_id.attr("data-fieldkind", "0");
            $inspect_dtl_id.appendTo($crf);
        }
    }

    //行数据
    $crf.find(".crffield").each(function () {
        var $input = $(this);
        var fieldid = $input.attr("data-fieldid");

        var fieldvalue = jsondata[$input.attr("data-fieldid")];
        if (fieldvalue != undefined && fieldvalue != null) {
            setInputValueNew($input, fieldvalue, fieldvalue);
        }

        if (fieldid == "Ae_modify" || fieldid == "Ae_decodename") {
            setInputValueNew($input, jsondata.Ae_name, jsondata.Ae_name);
        }
    });
}
