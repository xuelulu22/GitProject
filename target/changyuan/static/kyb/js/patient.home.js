//编辑对话框
var dlg = new MyAppDialog(900, 600);
var studyId = 0;
var studyPatientId = 0;
var armId = 0;

//关闭对话框
function closeDialog(reload) {
    dlg.close();

    //if (reload)
    //    loadCRFGrid();
}

$(function () {
    studyId = $("#Study_id").val();
    studyPatientId = $("#Study_patient_id").val();
    
    //病例基本资料
    $(".patient-avatar a").click(function (e) {
        e.preventDefault();

        var crfid = $("#Crf_id").val();
        var visitid = $("#Visit_id").val();
        if (crfid != "" && crfid != "0") {
            var url = "/Study/Patient/CrfInput/" + studyId + "/" + crfid + "/" + studyPatientId + "?v=" + visitid;
            var nodeid = crfid + "_" + visitid;
            parent.addTab("tabs", nodeid, "基本资料", url);
        }
    });

    //各模块入口
    $(".study-module-menu").click(function (e) {
        e.preventDefault();

        var moduleid = $(this).attr("data-id");
        var url = "/Study/Patient/PatientModule/" + studyPatientId + "/" + moduleid;
        var nodeid = "module_" + moduleid;
        parent.addTab("tabs", nodeid, $(this).attr("title"), url);
    });
});