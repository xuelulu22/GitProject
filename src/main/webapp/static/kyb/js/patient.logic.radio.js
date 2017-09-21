//$(document).ready(function () {
    
//});

//字段值变化事件
function bindRadiologic(target, fieldkey, fielddata) {
    switch (fieldkey) {
        case "t_radio.ra_therapycode":
            radiotherapycodeChanged(target, fielddata);
            break;
    }
}

//方案代码变更
function radiotherapycodeChanged(target, fielddata) {
    if (!changebyuser) return;

    var $crf = $(target).closest(".crfroot,.crftablerow");
    var radiotherapycode = fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value;
    if (radiotherapycode == "") {
        //方案代码
        var $radiotherapycode = $crf.find("[data-fieldid=Ra_therapycode]");
        if ($radiotherapycode.size()) {
            setInputValueNew($radiotherapycode, "", "", false);
        }
        return;
    }

    $.ajax({
        type: "post",
        url: "/Public/GetRadiotherapy",
        data: {
            radiotherapycode: radiotherapycode
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content.Radiotherapy != null) {
                    if ($(target).attr("data-fieldid") != "Ra_therapycode") {
                        //方案代码
                        var $radiotherapycode = $crf.find("[data-fieldid=Ra_therapycode]");
                        if ($radiotherapycode.size()) {
                            setInputValueNew($radiotherapyname, data.Content.Radiotherapy.Radiotherapycode, data.Content.Radiotherapy.Radiotherapycode, false);
                        }
                    }
                    if ($(target).attr("data-fieldid") != "Ra_therapyname") {
                        //方案名称
                        var $radiotherapyname = $crf.find("[data-fieldid=Ra_therapyname]");
                        if ($radiotherapyname.size()) {
                            setInputValueNew($radiotherapyname, data.Content.Radiotherapy.Radiotherapycode, data.Content.Radiotherapy.Radiotherapyname, false);
                        }
                    }
                    
                    //
                    var $shinetype = $crf.find("[data-fieldid=Ra_shinetype]");
                    if ($shinetype.size()) {
                        setInputValueNew($shinetype, data.Content.Radiotherapy.Shinetype, data.Content.Radiotherapy.Shinetype, false);
                    }
                    //
                    var $shinemethod = $crf.find("[data-fieldid=Ra_shinemethod]");
                    if ($shinemethod.size()) {
                        setInputValueNew($shinemethod, data.Content.Radiotherapy.Shinemethod, data.Content.Radiotherapy.Shinemethod, false);
                    }
                    //
                    var $shinesource = $crf.find("[data-fieldid=Ra_shinesource]");
                    if ($shinesource.size()) {
                        setInputValueNew($shinesource, data.Content.Radiotherapy.Shinesource, data.Content.Radiotherapy.Shinesource, false);
                    }
                    //
                    var $shinedose = $crf.find("[data-fieldid=Ra_shinedose]");
                    if ($shinedose.size()) {
                        setInputValueNew($shinedose, data.Content.Radiotherapy.Shinedose, data.Content.Radiotherapy.Shinedose, false);
                    }
                    //
                    var $cuttype = $crf.find("[data-fieldid=Ra_cuttype]");
                    if ($cuttype.size()) {
                        setInputValueNew($cuttype, data.Content.Radiotherapy.Cuttype, data.Content.Radiotherapy.Cuttype, false);
                    }
                    //
                    var $shinenum = $crf.find("[data-fieldid=Ra_shinenum]");
                    if ($shinenum.size()) {
                        setInputValueNew($shinenum, data.Content.Radiotherapy.Shinenum, data.Content.Radiotherapy.Shinenum, false);
                    }
                    //
                    var $shinetime = $crf.find("[data-fieldid=Ra_shinetime]");
                    if ($shinetime.size()) {
                        setInputValueNew($shinetime, data.Content.Radiotherapy.Shinetime, data.Content.Radiotherapy.Shinetime, false);
                    }

                    if (data.Content.RadiotherapyDtlList != null) {
                        //放疗部位
                        var $organtable = $crf.find("[data-tableid=T_radio_dtl]");
                        if ($organtable.size()) {
                            //删除当前行
                            delAllRow($organtable);
                            //添加新行
                            $.each(data.Content.RadiotherapyDtlList, function (index, itemdata) {
                                var $row = addRow($organtable);
                                //器官代码
                                var $organcode = $row.find("[data-fieldid=Rl_organcode]");
                                if ($organcode.size()) {
                                    setInputValueNew($organcode, itemdata.Organcode, itemdata.Organcode, false);
                                }
                                //器官名称
                                var $organname = $row.find("[data-fieldid=Rl_organname]");
                                if ($organname.size()) {
                                    setInputValueNew($organname, itemdata.Organcode, itemdata.Organname, false);
                                }
                                //计划总剂量
                                var $shinedose = $row.find("[data-fieldid=Rl_shinedose]");
                                if ($shinedose.size()) {
                                    setInputValueNew($shinedose, itemdata.Shinedose, itemdata.Shinedose, false);
                                }
                                //计划单次剂量
                                var $shinedose_one = $row.find("[data-fieldid=Rl_shinedose_one]");
                                if ($shinedose_one.size()) {
                                    setInputValueNew($shinedose_one, itemdata.Shinedose_one, itemdata.Shinedose_one, false);
                                }
                                //计划照射次数
                                var $shinenum = $row.find("[data-fieldid=Rl_shinenum]");
                                if ($shinenum.size()) {
                                    setInputValueNew($shinenum, itemdata.Shinenum, itemdata.Shinenum, false);
                                }
                            });
                        }
                    }
                } else {
                    //方案代码
                    var $radiotherapycode = $crf.find("[data-fieldid=Ra_therapycode]");
                    if ($radiotherapycode.size()) {
                        setInputValueNew($radiotherapycode, "", "", false);
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