//编辑对话框
var dlg = new MyAppDialog(700, 480, { modal: true });
var reasondlg = new MyAppDialog(700, 480, { modal: true });
var layoutreason = '<div id="modifyreason" style="position:relative;height:434px;margin:0;padding:0;">' +
        '<div class="dialog-content">' +
        '<form action="" class="form-horizontal form-inline crfform" id="reasonform" method="post" novalidate="novalidate">' +
        '<table class="table table-bordered" id="modifyreason_table">' +
        '<thead>' +
        '<tr>' +
        '<td class="hidden">模块</td>' +
        '<td>字段名</td>' +
        '<td>修改前</td>' +
        '<td>修改后</td>' +
        '<td width="200">修改原因</td>' +
        '</tr>' +
        '</thead>' +
        '<tbody class="list-template hidden">' +
        '<tr>' +
        '<td style="text-align:center" class="hidden"><span id="CrfIndex"></span></td>' +
        '<td style="text-align:center"><span id="Fieldnamestr"></span></td>' +
        '<td style="text-align:center"><span id="Oldvalue"></span></td>' +
        '<td style="text-align:center"><span id="Newvalue"></span></td>' +
        '<td><input class="form-control crfform-input list-datafield" data-fieldname="Comments" id="Comments" name="Comments" type="text" value=""></td>' +
        '</tr>' +
        '</tbody>' +
        '<tbody class="list-data"></tbody>' +
        '</table><br/><br/>' +
'</form>        </div>' +
        '<div class="dialog-footer" style="position:absolute;">' +
            '<a id="btncancelreason" class="btn btn-small btn-default">取消</a>&nbsp;' +
            '<a id="btnsavereason" class="btn btn-small btn-primary">确定</a>' +
        '</div>' +
    '</div>';

//关闭对话框
function closeDialog() {
    dlg.close();
}

beforeFrameHtmlUnload.add("crfform", function () {
    if (ischanged && !setdefaultval) {
        return "数据还没有保存，确认要离开吗？";
    }
});
//task:rownumberindex
var rowNumbIndexCode = "R000000";
$(document).ready(function () {
    $("#cc").show();
    studyid = $("#Study_id").val();
    studypatientid = $("#Study_patient_id").val();

    $("[data-elementtype='table']").each(function () {
        var target = $(this);

        target.find(".addRow").click(function () {
            addRow(target);
        });

        target.find(".resetToDefault").click(function () {
            //重置为默认行
            $.messager.confirm("消息", "确认要将当期列表数据重置为默认行吗？", function (r) {
                if (r) {
                    //删除当前数据
                    delAllRow(target);
                    //重新初始化默认值
                    initTableDefaultData(target);
                }
            });
        });
    });
    //刷新数据源
    if (parent.tabsRefresh) {
        parent.tabsRefresh($("#Visit_id").val());
    }
    $("[data-elementtype='tableandwindow']").each(function () {
        var $target = $(this);

        //在窗口中添加
        if (browserIpad.versions.iPad) {
            $target.find(".showAddWindow").attr('disabled', "true");
            $target.find(".showAddWindow").removeAttr('href');
            $target.find(".showAddWindow").click(function (e) {
                e.preventDefault();
            });
            $target.find(".showAddWindow").parent().click(function () {
                var crfid = $target.closest(".crfroot").attr("data-id");
                var width = $target.attr("data-width");
                var height = $target.attr("data-height");
                var fieldid = $target.attr("data-id");
                var visitid = $("#Visit_id").val();

                dlg.setSize(width, height);
                dlg.setURL("添加", "/Study/Patient/CrfInputRow/" + studyid + "/" + crfid + "/0?p=" + studypatientid + "&f=" + fieldid + "&fromid=" + fromid + "&v=" + visitid + "&callback=addRow");

                dlg.show();
            });
        }
        else {
            //在窗口中添加
            $target.find(".showAddWindow").click(function () {
                var crfid = $target.closest(".crfroot").attr("data-id");
                var width = $target.attr("data-width");
                var height = $target.attr("data-height");
                var fieldid = $target.attr("data-id");
                var visitid = $("#Visit_id").val();

                dlg.setSize(width, height);
                dlg.setURL("添加", "/Study/Patient/CrfInputRow/" + studyid + "/" + crfid + "/0?p=" + studypatientid + "&f=" + fieldid + "&fromid=" + fromid + "&v=" + visitid + "&callback=addRow");

                dlg.show();
            });
        }
    });

    //上一步
    $("#btnprev").click(function (evt) {
        evt.preventDefault();

        if (!checkRandom()) {
            return;
        }

        save($(this), true, true);
    });
    //下一步
    $("#btnnext").click(function (evt) {
        evt.preventDefault();

        if (!checkRandom()) {
            return;
        }

        //入排标准check
        checkIe($(this));
    });
    //保存
    $("#btnsave, #btnfinish").click(function (evt) {
        evt.preventDefault();

        if (!checkRandom()) {
            return;
        }

        //入排标准check
        checkIe($(this));
    });
    //临时保存
    $("#btntempsave").click(function (evt) {
        evt.preventDefault();

        if (!checkRandom()) {
            return;
        }

        save($(this), true, true);
    });
    //取消
    $("#btncancel").click(function (evt) { parent.closeDialog(); return false; });
    //锁定
    $("#btnlock").click(function (evt) {
        evt.preventDefault();
        $.messager.confirm("确认", "确认要锁定当前CRF表吗？", function (result) {
            if (result) {
                crfLock($(this), true);
            }
        });
    });
    //解锁
    $("#btnunlock").click(function (evt) {
        evt.preventDefault();
        $.messager.confirm("确认", "确认要解锁当前CRF表吗？", function (result) {
            if (result) {
                crfLock($(this), false);
            }
        });
    });
    
    //加载数据
    loadCrfData();
    // 弹窗改成内嵌不上，先注释掉
    //TableRowDomain.loadCrfData();

    //根据模板新增计划外访视时，判断入院日期
    if ($("#Iswizard").size() && $("#Iswizard").val() == "1") {
        //访视类型是住院时才启用逻辑
        if ($("[data-fieldid=Io_type]").size() && $("[data-fieldid=Io_type]").val() == "1") {
            $("[data-fieldid=Io_admissiondate]").change(function () {
                if (oprt != "N") return;
                if (!changebyuser) return;

                checkAdmissiondate(this);
            });
        }
    }

    var initCRFLayout = function ($content) {
        var iheight = $(window).height();

        $("body").css("height", iheight - 40);
    };

    //调整浏览器大小时
    $(window).resize(function () {
        initCRFLayout();
    });

    //页面初始化时
    setTimeout(function () {
        initCRFLayout();
    }, 10);
});

//验证入院日期
function checkAdmissiondate(obj) {
    if ($("#Visitguid").size() == 0 || $("#Visitguid").val() == "")
        return;

    $.ajax({
        type: "post",
        url: "/Study/Patient/CheckAdmissiondate",
        data: {
            id: studypatientid,
            visitguid: $("#Visitguid").val(),
            value: $(obj).val()
        },
        success: function (data) {
            if (data.Ret == "0") {
                if (data.Content != null || data.Content != undefined) {
                    $.messager.confirm("提醒", data.Msg, function (r) {
                        if (r) {
                            //补录
                            this.UpdateVisit(data.Content.Visit_id);
                        }
                    });
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
            //showError(xhr);
        }
    });
}

//补录上次访视
function UpdateVisit(newvisitid) {
    $.ajax({
        type: "post",
        url: "/Study/Patient/UpdateVisit",
        data: {
            id: studypatientid,
            visitid: newvisitid,
            visitguid: $("#Visitguid").val()
        },
        success: function (data) {
            if (data.Ret == "0") {
                $("#Visit_id").val(data.Content);
                loadCrfData();
            } else {
                //$.messager.alert("错误", data.Msg, "error");
                $.messager.alert("错误", data.Msg, "crabyter_error");

            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
            //showError(xhr);
        }
    });
}

//获取行数据
function getRowData(row) {
    var $row = $(row);

    if ($row.attr("data-datas")) {
        return JSON.parse($row.attr("data-datas"));
    } else {
        return null;
    }
}

//更新行数据
function updateRow(target, row, data) {
    var $target = $(target);
    var $row = $(row);

    //行数据
    if (data) {
        if (typeof data === "string") {
            data = JSON.parse(data);
        }

        ////
        //if ($target.attr("data-elementtype") == "tableandwindow") {
        //    $(row).attr("data-datas", JSON.stringify(data));
        //}

        //行ID
        $row.attr("data-id", data.Irow_id);
        //行数据
        $row.find(".list-crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            $.each(data.FieldDatas, function (i, fielddata) {
                if (fielddata.Fieldcode == fieldcode) {
                    setInputValue($input, fielddata);
                    return false;
                }
            });
        });
    }
}

//添加行
function addRow(target, data) {
   
    var $target = $(target);
    //在列表中添加一行
    var row = $target.find(".list-template tr").eq(0).clone();
    var listdataBody = $target.find(".list-data");

    //task:rownumberindex手动添加行时候计算临时行号
    var maxRow = 0;
    var trTdFirst = listdataBody.find("tr").find("td:eq(0)");
    if (trTdFirst.length == 0) {
        maxRow = 1;
    } else {
        var rowIndexArr = [];
        $.each(trTdFirst, function (k, v) {
            var r = $(v).children().html() || $(v).children().val();
            if (r.length > 0) {
                var index = parseInt(r);
                rowIndexArr.push(index);
            }
        });

        rowIndexArr = rowIndexArr.sort(function (a, b) {
            return a - b;
        });

        maxRow = rowIndexArr[rowIndexArr.length - 1];
    }

    row.appendTo(listdataBody);

    //行ID
    $(row).attr("data-id", "0");
    //为每个控件生成动态id和name，否则表单验证会有问题
    var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
    $(row).attr("id", "row_" + newid);
    $(row).find("input").each(function () {
        $(this).attr("id", $(this).attr("id") + "_" + newid);
        $(this).attr("name", $(this).attr("name") + "_" + newid);
    });

    $(row).find("[data-form=radio]").radio();
    $(row).find("[data-form=checkbox]").checkbox();
    $(row).find("[data-form=datepicker]").datepicker({ clearBtn: true });
    $(row).find("[data-form=colorpicker]").colorpicker();
    $(row).find("[data-form=wycombo]").wycombo();

    //回车不关闭对话框
    handlerKeydown(row);

    //字段逻辑
    bindLogicEvent(row);

    //数据核查
    bindCheckrule(row);
    //行数据
    if (data) {
        if (typeof data === "string") {
            data = JSON.parse(data);
        }

        //行ID
        $(row).attr("data-id", data.Irow_id);
        //行数据
        $(row).find(".list-crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            $.each(data.FieldDatas, function (i, fielddata) {
                if (fielddata.Fieldcode == fieldcode) {
                    setInputValue($input, fielddata);
                    return false;
                }
            });
        });

        if (data.Isview == "1") {
            //$(row).find(".editRow").hide();
            $(row).find(".delRow").hide();
        }
    } else {
        $(row).find(".list-crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            //添加一行，显示一行序号
            if (fieldcode == rowNumbIndexCode) {
                var rowNumber = (trTdFirst.length==0) ? maxRow : maxRow + 1;
                if (!$input.is("input")) {
                    $input.html(rowNumber);
                } else {
                    $input.val(rowNumber);
                }

                return false;
            }
        });
    }

    //修改行
    $(row).find(".editRow").click(function () {
        var rowId = $(row).attr("id");
        var rowDataId = $(row).attr("data-id");
        var $table = $(row).closest(".crftable");
        var width = $table.attr("data-width");
        var height = $table.attr("data-height");
        var id = $table.attr("data-id");
        var visitid = $("#Visit_id").val();
        var crfid = $table.closest(".crfroot").attr("data-id");
        var title = ((oprt == "V" || oprt == "VE" || oprt === "NV") ? '查看' : '查看/修改');
        dlg.setSize(width, height);

        dlg.setURL(title, "/Study/Patient/CrfInputRow/" + studyid + "/" + crfid + "/" + rowDataId + "?p=" + studypatientid + "&fromid=" + fromid + "&f=" + id + "&v=" + visitid + "&row=" + rowId + "&callback=addRow");

        dlg.show();
    });

    //删除行事件
    $(row).find(".delRow").click(function () {
        $.messager.confirm("确认", "确认要删除该行吗？", function (result) {
            if (result) {
                delRow($target, $(row));
            }
        });
    });

    //上移、下移
    $(row).find(".moveUp").click(function () {
        if (row.prev()) {
            row.insertBefore(row.prev());
        }
    });
    $(row).find(".moveDown").click(function () {
        if (row.next()) {
            row.insertAfter(row.next());
        }
    });

    return row;
}

//添加默认行
function addDefaultRow(target, data, temprowNumberIndex) {
    var $target = $(target);

    //在列表中添加一行
    var row = $target.find(".list-template tr").eq(0).clone();
    row.appendTo($target.find(".list-data"));
    //行ID
    $(row).attr("data-id", "0");
    //为每个控件生成动态id和name，否则表单验证会有问题
    var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
    $(row).attr("id", "row_" + newid);
    $(row).find("input").each(function () {
        $(this).attr("id", $(this).attr("id") + "_" + newid);
        $(this).attr("name", $(this).attr("name") + "_" + newid);
    });

    $(row).find("[data-form=radio]").radio();
    $(row).find("[data-form=checkbox]").checkbox();
    $(row).find("[data-form=datepicker]").datepicker({ clearBtn: true });
    $(row).find("[data-form=colorpicker]").colorpicker();
    $(row).find("[data-form=wycombo]").wycombo();

    //回车不关闭对话框
    handlerKeydown(row);

    //字段逻辑
    bindLogicEvent(row);

    //数据核查
    bindCheckrule(row);

    //行数据

    if (data) {
        if (typeof data === "string") {
            data = JSON.parse(data);
        }

        //行ID
        $(row).attr("data-id", data.Irow_id);

        //行数据
        $(row).find(".list-crffield").each(function () {
            var fielddata = data.FieldDatas[$(this).attr("data-fieldid")];

            //task:rownumberindex
            var fieldcode = $(this).attr("data-fieldcode");
            if (fieldcode == rowNumbIndexCode) {
                //有fielddata，取fielddata.Value
                if (fielddata != undefined && fielddata.Value != undefined && fielddata.Valuestr != undefined) {
                    temprowNumberIndex = fielddata.Valuestr;
                }
                else if (data.Rowindex)
                {
                    temprowNumberIndex = data.Rowindex;
                } else {
                    temprowNumberIndex = 0;
                }

                if (!$(this).is("input")) {
                    $(this).html(temprowNumberIndex);
                } else {
                    $(this).val(temprowNumberIndex);
                }

            } else {
                if (fielddata != undefined && fielddata.Value != undefined && fielddata.Valuestr != undefined) {
                    setInputValueNew($(this), fielddata.Value, fielddata.Valuestr);
                } else {
                    setInputValueNew($(this), fielddata, fielddata);
                }
            }

            //setInputValueNew($(this), data.FieldDatas[$(this).attr("data-fieldid")], data.FieldDatas[$(this).attr("data-fieldid")]);
        });
    }

    //删除行事件
    $(row).find(".delRow").click(function () {
        $.messager.confirm("确认", "确认要删除该行吗？", function (result) {
            if (result) {
                delRow($target, $(row));
            }
        });
    });

    return row;
}

function delAllRow(target) {
    //bug237
    $(target).find(".list-data>tr").each(function () {
        //$(target).find(".list-data tr").each(function () {
        var row = $(this);
        delRow(target, row);
    });
}

function delRow(target, row) {
    var rowId = $(row).attr("data-id");
    var inputLength = $(row).find('input').length;

    if (rowId == "0") {
        //如果是新加的行，则直接移除
        $(row).remove();

        if (afterDeleteRow != undefined && afterDeleteRow != null) {
            afterDeleteRow(row);
        }

        return false;
    }

    if (inputLength<=0) {
        //表示是弹窗列表，列表删除
        $.post("/Study/QualityMonitor/CanDel", {
            studyPatientId: patientId,//y
            crfId: $(row).closest(".crfroot").attr("data-id"),//y
            visitId: $("#Visit_id").val(),//y
            tableFieldId: $(row).closest(".crftable").attr("data-id"),
            irowId: $(row).attr("data-id")//y
        }, function (data) {
            if (data == "Fail") {
                var tip = $(row).find('.delRow');
                if (tip) {
                    layer.tips('该行有冻结或者锁定字段，不能删除。', tip, {
                        tips: [2, '#c00'],
                        time: 5000
                    });
                }
            } else {
                $(row).appendTo($(target).find(".list-deleted"));

                if (afterDeleteRow != undefined && afterDeleteRow != null) {
                    afterDeleteRow(row);
                }
            }
        })
    } else {
        var frozenCount = $(row).find('input[isfrozenconfirm="true"]').length;
        var lockCount = $(row).find('input[islockconfirm="true"]').length;
        if (frozenCount > 0 || lockCount > 0) {
            var tip = $(row).find('.delRow');
            if (tip) {
                layer.tips('该行有冻结或者锁定字段，不能删除。', tip, {
                    tips: [2, '#c00'],
                    time: 5000
                });
            }
            return false;
        } else {
            $(row).appendTo($(target).find(".list-deleted"));

            if (afterDeleteRow != undefined && afterDeleteRow != null) {
                afterDeleteRow(row);
            }
        }
    }
}

function initTableDefaultData(target) {
    var $target = $(target);

    //默认值部分不允许删除
    var allowdeldefault = $target.attr("data-allowdeldefault");

    //task:rownumberindex默认空的行
    var defaultval = JSON.parse($target.attr("data-defaultval"));
    if (defaultval != undefined && defaultval.length > 0) {
        var temprowNumberIndex = 1;//保存之后不会取data-defultvalue
        for (var i = 0; i < defaultval.length; i++) {
            debugger;
            //addRow($target, defaultval[i]);
            var $row = addDefaultRow($target, defaultval[i], temprowNumberIndex);
            temprowNumberIndex++;
            if (allowdeldefault != "1") {
                if ($row) {
                    //禁止删除
                    $row.find(".delRow").hide();

                    //设置了默认值的字段不允许修改
                    for (var fieldid in defaultval[i].FieldDatas) {
                        var $input = $row.find("[data-fieldid=" + fieldid + "]");
                        if ($input.size()) {
                            setInputDisabled($input, true);
                        }
                    }
                }
            }
        }
    } else {
        //测试代码，默认添加一行
        addRow($target);
    }
}

function loadCrfData() {
    var crfid = $(".crfroot").eq(0).attr("data-id");

    //显示加载层
    layer.load(2);

    $.ajax({
        type: "post",
        url: "/Study/Patient/GetCrfData",
        data: {
            id: studypatientid,
            crf_id: crfid,
            visit_id: $("#Visit_id").val()
        },
        success: function (data) {
            debugger;
            //关闭加载层
            layer.closeAll();
            changebyuser = false;
            $.each(data, function (index, crfdata) {
                setCrfData(crfdata);
            });
            changebyuser = true;

            //默认值
            setdefaultval = true;
            $.each(data, function (index, crfdata) {
                setCrfDefaultData(crfdata.Crf_id);
            });
            setdefaultval = false;

            //清除修改标识
            ischanged = false;

            if (oprt != "N" && $.inArray("Study.Patient.Query", actions) >= 0) {
                bindCrfTips();
            }
            disableDlg();

            // 双击行事件
            DbClickRowEvent();
            //如果有随机分组的情况时，判断是否已经分组过，如果是就禁用随机骰子
            var $randombtn = $(".randombutton");
            var $armcode = $("[data-fieldid=Armcode]");
            if ($randombtn.length > 0 && $armcode.length > 0) {
                if ($armcode.val() != "") {
                    setInputDisabled($randombtn, true);
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //关闭加载层
            layer.closeAll();

            showError(xhr);
        }
    });
}

function setCrfData(data) {
    var $crf = $(".crfroot[data-id=" + data.Crf_id + "]");

    $crf.find(".crffield").each(function () {
        var $input = $(this);
        var fieldcode = $input.attr("data-fieldcode");
        $.each(data.FieldDatas, function (i, fielddata) {
            if (fielddata.Fieldcode == fieldcode) {
                setInputValue($input, fielddata);
                return false;
            }
        });
    });

    $.each(data.TableDatas, function (i, tabledata) {
        var $table = $("#" + tabledata.Fieldcode);

        if (tabledata.Rows != null && tabledata.Rows != undefined) {
            //$table.find(".list-data").addClass("datasaved");
            $table.find(".list-data").html("");

            $.each(tabledata.Rows, function (row, rowdata) {
                addRow($table, rowdata);
            });
        }
    });

    $.each(data.CrfTableRowDatas, function (i, tablerowdata) {
        var $tablerow = $("#" + tablerowdata.Fieldcode);

        $tablerow.find(".crffield").each(function () {
            var $input = $(this);
            var fieldcode = $input.attr("data-fieldcode");
            $.each(tablerowdata.FieldDatas, function (i, fielddata) {
                if (fielddata.Fieldcode == fieldcode) {
                    setInputValue($input, fielddata);
                    return false;
                }
            });
        });

        $.each(tablerowdata.TableDatas, function (i, tabledata) {
            var $table = $("#" + tabledata.Fieldcode);

            if (tabledata.Rows != null && tabledata.Rows != undefined) {
                $table.find(".list-data").html("");

                $.each(tabledata.Rows, function (row, rowdata) {
                    addRow($table, rowdata);
                });
            }
        });
    });

    if (oprt == "V" || oprt == "VE" || oprt === "NV") {
        //不可编辑
        setCrfDisabled($crf, true);
    }
    if (oprt == "VE") {
        //允许跳出窗口录入行
        allowCrfTableWindowAdd($crf, true);
    }

     if (typeof (isAllLock) != "undefined" && isAllLock) {
        setCrfButtonDisabled($crf, true);
    }
}

// 双击行事件
function DbClickRowEvent() {
    $('.crftable').each(function () {
        $(this).find('table tbody.list-data tr').each(function () {
            $(this).dblclick(function () {
                $(this).find('.editRow').click();
            });
        });
    });
}

//CRF表默认值
function setCrfDefaultData(crfid) {
    var $crf = $(".crfroot[data-id=" + crfid + "]");
    if (oprt == "N" || oprt === "NV") {
        //未录入时，加载列表默认数据
        $crf.find("[data-elementtype=table]").each(function () {
            if ($(this).find(".list-data").hasClass("datasaved")) {
                return true;
            }

            $(this).find(".list-data").html("");

            initTableDefaultData($(this));
        });

        //控件默认值
        $crf.find(".crffield").each(function () {
            var $input = $(this);
            if ($input.attr("data-defaultval") && $input.attr("data-defaultval") != "") {
                setInputValueNew($input, $input.attr("data-defaultval"), $input.attr("data-defaultval"));
                //$input.change();
            }
        });
    }

    //默认值部分不允许删除
    $crf.find("[data-elementtype=table]").each(function () {
        var allowdeldefault = $(this).attr("data-allowdeldefault");
        if (allowdeldefault != "1") {
            var defaultval = JSON.parse($(this).attr("data-defaultval"));
            if (defaultval != undefined && defaultval.length > 0) {
                for (var i = 0; i < defaultval.length; i++) {
                    //在列表中添加一行
                    //bug237
                    var $row = $(this).find(".list-data>tr").eq(i);
                    //var $row = $(this).find(".list-data tr").eq(i);
                    if ($row) {
                        //禁止删除
                        $row.find(".delRow").hide();

                        //设置了默认值的字段不允许修改
                        for (var fieldid in defaultval[i].FieldDatas) {
                            var $input = $row.find("[data-fieldid=" + fieldid + "]");
                            if ($input.size()) {
                                setInputDisabled($input, true);
                            }
                        }
                    }
                }
            }
        }
    });
}

//获取列表一行数据
function getRowValue(index, row) {
    var $row = $(row);
    var rowdata = {
        Rowindex: index + 1,
        Irow_id: $row.attr("data-id"),
        //Irow_id: $row.attr("Irow_id"),
        FieldDatas: []
    };
    //rownumberindex行号赋真值
    var trTdFirstArr = getRowNumberIndexArr($row);
    rowdata.Rowindex = trTdFirstArr[0];

    $row.find(".list-crffield").each(function () {
        //task:rownumberindex
        var fieldcode = $(this).attr("data-fieldcode");
        if (fieldcode == rowNumbIndexCode) {
            return true; //序号列不保存
        }

        rowdata.FieldDatas.push(getInputValue($(this)));
    });

    return rowdata;
}

//返回排序好的行号数组
function getRowNumberIndexArr(trrow) {
    var rowIndexArr = [];

    var trTdFirst = trrow.find("td:eq(0)");
    if (trTdFirst.length == 0) {
        rowIndexArr.push(0);
        return rowIndexArr;
    } else {
        $.each(trTdFirst, function (k, v) {
            var r = $(v).children().html() || $(v).children().val();
            if (r.length > 0) {
                var index = parseInt(r);
                rowIndexArr.push(index);
            }
        });

        rowIndexArr = rowIndexArr.sort(function (a, b) {
            return a - b;
        });
    }

    return rowIndexArr;
}

//获取列表单行数据
function getCrfTablerowData(table) {
    var $table = $(table);
    var crfid = $table.closest(".crfroot").attr("data-id");
    var fieldid = $table.attr("data-fieldid");
    var crfdata = {
        Crf_id: crfid,
        Table_field_id: fieldid,
        Irow_id: $table.attr('Irow_id'), //irow_id,
        Rowindex: $table.attr('RowIndex'), //rowindex,
        Fieldcode: $table.attr("id"),
        FieldDatas: [],
        TableDatas: [],
        CrfTableRowDatas: []
    };

    $table.find(".crffield").each(function () {
        crfdata.FieldDatas.push(getInputValue($(this)));
    });

    //直接编辑列表数据
    $table.find("[data-elementtype=table]").each(function () {
        var tabledata = {
            Table_field_id: $(this).attr("data-id"),
            Df_tableid: $(this).attr("data-tableid"),
            Fieldcode: $(this).attr("id"),
            Rows: [],
            DeletedRows: []
        };

        //bug237
        $(this).find(".list-data>tr").each(function (index) {
            //$(this).find(".list-data tr").each(function (index) {
            tabledata.Rows.push(getRowValue(index, $(this)));
        });

        //bug237
        $(this).find(".list-deleted>tr").each(function (index) {
            //$(this).find(".list-deleted tr").each(function (index) {
            tabledata.DeletedRows.push(getRowValue(index, $(this)));
        });

        crfdata.TableDatas.push(tabledata);
    });

    return crfdata;
}

//获取界面数据
function getInputDataJson(tempsave) {
    var jsondata = [];

    //主表数据
    $(".crfroot").each(function () {
        var $crf = $(this);
        var crfid = $crf.attr("data-id");
        var crfdata = {
            Crf_id: crfid,
            Visit_id: $("#Visit_id").val(),
            Isfinished: tempsave ? "0" : "1",
            Islocked: "0",
            FieldDatas: [],
            TableDatas: [],
            CrfTableRowDatas: []//,
            //IsDeletedTableDataRows: []
        };

        //随机信息
        var $randombtn = $(".randombutton");
        if ($randombtn.size()) {
            if ($randombtn.attr("data-randomid") != undefined) {
                crfdata.Random_id = $randombtn.attr("data-randomid");
            }
            if ($randombtn.attr("data-expiretime") != undefined) {
                crfdata.Random_expiretime = $randombtn.attr("data-expiretime");
            }
        }

        $crf.find(".crffield").each(function () {
            if ($(this).closest(".crftablerow").get(0))
                return true;

            crfdata.FieldDatas.push(getInputValue($(this)));
        });

        //直接编辑列表数据
        $crf.find("[data-elementtype=table]").each(function () {
            if ($(this).closest(".crftablerow").get(0))
                return true;

            var tabledata = {
                Crf_id: crfid,
                Table_field_id: $(this).attr("data-id"),
                Df_tableid: $(this).attr("data-tableid"),
                Fieldcode: $(this).attr("id"),
                Rows: [],
                DeletedRows: []
            };

            $(this).find(".list-data>tr").each(function (index) {
                tabledata.Rows.push(getRowValue(index, $(this)));
            });

            $(this).find(".list-deleted>tr").each(function (index) {
                tabledata.DeletedRows.push(getRowValue(index, $(this)));
            });

            crfdata.TableDatas.push(tabledata);
        });

        //弹窗编辑列表数据
        $crf.find("[data-elementtype=tableandwindow]").each(function () {
            if ($(this).closest(".crftablerow").get(0))
                return true;

            var tabledata = {
                Crf_id: crfid,
                Table_field_id: $(this).attr("data-id"),
                Df_tableid: $(this).attr("data-tableid"),
                Fieldcode: $(this).attr("id"),
                Rows: null,
                DeletedRows: []
            };

            //$(this).find(".list-data tr").each(function (index) {
            //    var rowdata = getRowData($(this));

            //    if (rowdata != null) {
            //        if (rowdata.Isview != "1") {
            //            tabledata.Rows.push(rowdata);
            //        }
            //    }
            //});
            //bug237
            $(this).find(".list-deleted>tr").each(function (index) {
                //$(this).find(".list-deleted tr").each(function (index) {
                tabledata.DeletedRows.push(getRowValue(index, $(this)));
            });

            crfdata.TableDatas.push(tabledata);
        });

        // 弹窗改成当前页面显示的数据
        if ($crf.find('.crflist').length > 0) {
            var tabledata = {
                Crf_id: crfid,
                Table_field_id: '',
                Df_tableid: '',
                Fieldcode: '',
                Rows: null,
                DeletedRows: []
            };
            $crf.find('.crflist').find('.crftablerow').each(function () {
                var crf = $(this);
                tabledata.Table_field_id = $(crf).attr("data-fieldid");
                tabledata.Df_tableid = $(crf).attr("data-tableid");
                tabledata.Fieldcode = $(crf).attr("id");
                if ($(crf).hasClass('list-deleted-row')) {
                    var rowdata = {
                        Rowindex: $(crf).attr('Rowindex') + 1,
                        Irow_id: $(this).attr("Irow_id"),
                        FieldDatas: []
                    };

                    $(this).find(".list-crffield").each(function () {
                        rowdata.FieldDatas.push(getInputValue($(this)));
                    });

                    tabledata.DeletedRows.push(rowdata);
                }
            });
            crfdata.TableDatas.push(tabledata);
        }

        //获取列表单行数据
        $crf.find(".crftablerow").not('.template').not('.list-deleted-row').each(function () {
            crfdata.CrfTableRowDatas.push(getCrfTablerowData($(this)));
        });

        jsondata.push(crfdata);
    });

    return jsondata;
}

//保存
function save(obj, tempsave, showalert, comments) {
    layer.load(2);

    var jsondata = getInputDataJson(tempsave);

    ////禁用保存按钮，防止重复提交
    //$(obj).attr("disabled", true);

    $.ajax({
        type: "post",
        url: "/Study/Patient/SaveCrfData",
        data: {
            id: studypatientid,
            json: JSON.stringify(jsondata),
            comments: comments ? JSON.stringify(comments) : ""
        },
        success: function (e) {
            //$(obj).attr("disabled", false);
            layer.closeAll();
            if (e.Ret == "Invalid") {
                //验证失败
                setFieldErrorList(e.Content);
            }
            else if (e.Ret == "0") {
                oprt = "E";

                //保存成功
                dataSaved();

                //刷新SVOP
                if (parent.refreshSVOP) {
                    parent.refreshSVOP();
                }

                //如果是在窗口中打开，则保存后直接关闭窗口
                if ($("#Isdialog").size() && $("#Isdialog").val() == "true") {
                    if (parent.refreshDatagrid) {
                        parent.refreshDatagrid();
                    }
                    parent.closeDialog(true);
                    return;
                }

                //如果点击的是上一步
                if ($(obj).attr("id") == "btnprev") {
                    if (prevurl != undefined && prevurl != "") {
                        location.href = prevurl;
                    }
                    return;
                }
                //如果点击的是下一步
                if ($(obj).attr("id") == "btnnext") {
                    if (nexturl != undefined && nexturl != "") {
                        location.href = nexturl;
                    }
                    return;
                }
                //如果是完成录入（向导最后一步）
                if ($(obj).attr("id") == "btnfinish") {
                    $('<div class="easyui-dialog">').dialog({
                        title: "消息",
                        width: "260px",
                        content: '<div style="margin:20px;"><div class="messager-icon messager-info"></div><div>录入已完成！</div></div>',
                        buttons: [{
                            text: '关闭窗口',
                            handler: function () {
                                if (window.parent) {
                                    window.parent.close();
                                } else {
                                    window.close();
                                }
                            }
                        }, {
                            text: '查看病例',
                            handler: function () {
                                window.parent.location.href = "/Study/Patient/PatientIndex/" + studypatientid;
                            }
                        }, {
                            text: '继续录入',
                            handler: function () {
                                if ($("#Datasource_id").size() && $("#Datasource_id").val() != "0") {
                                    if (window.parent) {
                                        window.parent.close();
                                    } else {
                                        window.close();
                                    }
                                } else {
                                    window.parent.location.href = "/Study/Patient/NewPatientMerge/" + studyid;
                                }
                            }
                        }]
                    });
                    return;
                }

                //刷新CRF表状态
                $(".crf-status").attr("class", "crf-status crf-status-" + e.Content.Status);
                $(".crf-statusname").text(e.Content.Statusstr);
                //刷新病例首页CRF状态
                if (window.parent && window.parent.refreshCRF) {
                    if (e.Content.Armcode != window.parent.armcode) {
                        //换组后需刷新所有CRF表
                        window.parent.armcode = e.Content.Armcode;
                        window.parent.reloadCRF();
                    } else {
                        window.parent.refreshCRF($("#Crf_id").val(), $("#Visit_id").val(), e.Content.Status);
                    }
                }
                //刷新病例状态
                if (window.parent && window.parent.refreshPatient) {
                    window.parent.refreshPatient();
                }

                //如果不是临时保存，直接关闭当前CRF表
                if (!tempsave) {
                    layer.closeAll();

                    //点击随机分组骰子时的判断，如果是点击骰子的保存就不执行关闭窗口的操作
                    if ($("#isCloseTab") != undefined && $("#isCloseTab").val() != undefined && $("#isCloseTab").val() == 1) {
                        //保存成功后重新加载数据
                        if (showalert) {
                            $.messager.alert("消息", "保存成功！", "info", function () {
                                //关闭Tab
                                if (window.parent && window.parent.closeTab) {
                                    window.parent.closeTab($("#Crf_id").val(), $("#Visit_id").val());
                                }
                            });
                        } else {
                            //关闭Tab
                            if (window.parent && window.parent.closeTab) {
                                window.parent.closeTab($("#Crf_id").val(), $("#Visit_id").val());
                            }
                        }
                    }

                    return;
                }

                //刷新数据
                var crfdatalist = e.Content.CrfData;
                changebyuser = false;
                $.each(crfdatalist, function (index, crfdata) {
                    setCrfData(crfdata);
                });
                changebyuser = true;

                layer.closeAll();

                //保存成功后重新加载数据
                if (showalert) {
                    $.messager.alert("消息", "保存成功！", "info");
                }
            } else {
                layer.closeAll();

                //$.messager.alert("错误", e.Msg, "error");
                $.messager.alert("错误", e.Msg, "crabyter_error");
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            layer.closeAll();

            //showError(xhr);
            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
        }
    });
}

//锁定与解锁
function crfLock(obj, islock) {
    var jsondata = [];
    //主表数据
    $(".crfroot").each(function () {
        var $crf = $(this);
        var crfid = $crf.attr("data-id");
        var crfdata = {
            Crf_id: crfid,
            Visit_id: $("#Visit_id").val(),
            Islocked: islock ? "1" : "0",
            FieldDatas: null,
            TableDatas: null,
            CrfTableRowDatas: null
        };

        jsondata.push(crfdata);
    });

    //禁用保存按钮，防止重复提交
    $(obj).attr("disabled", true);

    $.ajax({
        type: "post",
        url: "/Study/Patient/SaveCrfLocked",
        data: {
            id: studypatientid,
            json: JSON.stringify(jsondata)
        },
        success: function (e) {
            $(obj).attr("disabled", false);
            if (e.Ret == "0") {
                //保存成功后刷新试验流程图CRF表状态
                if (window.parent && window.parent.refreshCRF) {
                    window.parent.refreshCRF($("#Crf_id").val(), $("#Visit_id").val(), e.Content);
                }
                //保存成功后重新加载数据
                location.href = location.href;
            } else {
                //$.messager.alert("错误", e.Msg, "error");
                $.messager.alert("错误", e.Msg, "crabyter_error");
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            //showError(xhr);
            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
        }
    });
}

//数据核查
function inputDataCheck(obj) {
    ////禁用保存按钮，防止重复提交
    $(obj).attr("disabled", true);

    var jsondata = getInputDataJson(false);
    var recistdata = getRecistJsonOfCheck($(".crftablerow"));

    $.ajax({
        type: "post",
        url: "/Study/Patient/CheckCrfData",
        data: {
            id: studypatientid,
            json: JSON.stringify(jsondata),
            recistjson: recistdata == null ? "" : JSON.stringify(recistdata)
        },
        success: function (e) {
            $(obj).attr("disabled", false);

            if (e.Ret == "Invalid") {
                //验证失败
                setFieldErrorList(e.Content);
                //报错
                $.messager.alert("错误", e.Msg, "warning");
            } else if (e.Ret == "0") {
                if (e.Content && e.Content.length > 0) {
                    //验证失败
                    setFieldErrorList(e.Content);
                }
                if (e.Msg == "") {
                    save(obj, false, true);
                } else {
                    //提醒是否需要保存
                    var win = $.messager.confirm("提醒", e.Msg, function (r) {
                        if (r) {
                            save(obj, false, true);
                        }
                    });
                    win.find(".messager-icon").addClass("messager-warning");
                }
            } else {
                $.messager.alert("错误", e.Msg, "error");
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            $(obj).attr("disabled", false);

            showError(xhr);
        }
    });
}

//获取修改数据差异
function getDataDiff(obj) {
    ////禁用保存按钮，防止重复提交
    $(obj).attr("disabled", true);

    var jsondata = getInputDataJson(false);

    $.ajax({
        type: "post",
        url: "/Study/Patient/GetCrfDataDiff",
        data: {
            id: studypatientid,
            json: JSON.stringify(jsondata)
        },
        success: function (e) {
            $(obj).attr("disabled", false);

            if (e.Ret == "Invalid") {
                //验证失败
                setFieldErrorList(e.Content);
                //保存
                $.messager.alert("错误", e.Msg, "warning");
            } else if (e.Ret == "0") {
                if (e.Content.Error && e.Content.Error.length > 0) {
                    //验证失败
                    setFieldErrorList(e.Content.Error);
                    //提醒是否需要保存
                    $.messager.confirm("提醒", e.Msg, function (r) {
                        if (r) {
                            showDiffReason(obj, e.Content.Diff);
                        }
                    });
                } else {
                    showDiffReason(obj, e.Content.Diff);
                }
            } else {
                //$.messager.alert("错误", e.Msg, "error");
                $.messager.alert("错误", e.Msg, "crabyter_error");
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            $(obj).attr("disabled", false);
            $.messager.alert("错误", e.Msg, "crabyter_error");
            //showError(xhr);
        }
    });
}

//显示数据差异并填写修改原因
function showDiffReason(obj, diffdata) {
    if (diffdata.length == 0) {
        save(obj, false, true);
    }
    else {
        var content = $(layoutreason);//$("#layout_modifyreason");
        //bug237
        content.find(".list-data>tr").remove();
        //content.find(".list-data tr").remove();
        $.each(diffdata, function (i, item) {
            addReasonRow(content, item);
        });

        if (diffdata[0].IrowId > 0) {
            content.find('thead td.hidden').removeClass('hidden');
        }

        reasondlg.setContent("请填写修改原因", content.html());
        reasondlg.show();

        //初始化验证
        $('#reasonform').validate();
        $('#reasonform').find("[data-fieldname=Comments]").each(function () {
            $(this).rules("remove");
            $(this).rules("add", { required: true });
        });
        //修改原因确定
        $("#btnsavereason").click(function (evt) {
            evt.preventDefault();
            if (!$("#reasonform").valid()) {
                return;
            }

            var comments = [];
            //bug237
            $("#modifyreason_table").find(".list-data>tr").each(function () {
                //$("#modifyreason_table").find(".list-data tr").each(function () {
                var $target = $(this);
                comments.push({
                    Id: $target.attr("data-id"),
                    Comments: $target.find("[data-fieldname=Comments]").val()
                });
            });

            reasondlg.close();
            save(obj, false, true, comments);
        });
        //修改原因取消
        $("#btncancelreason").click(function (evt) { evt.preventDefault(); reasondlg.close(); });
    }
}

//入排标准CHECK
function checkIe(obj) {
    var result = true;

    if (iecheck != "") {
        //bug237
        $("div[data-tableid=T_ie] .list-data>tr").each(function () {
            //$("div[data-tableid=T_ie] .list-data tr").each(function () {
            var $row = $(this);
            var ietype = $row.find("[data-fieldid=Ie_type]");
            var ieresult = $row.find("[data-fieldid=Ie_result]");
            if (ietype.size() && ieresult.size()) {
                if (ietype.val() == "1" && ieresult.val() == "0") {
                    //入选标准
                    result = false;
                    return false;
                } else if (ietype.val() == "2" && ieresult.val() == "1") {
                    //排除标准
                    result = false;
                    return false;
                }
            }
        });
    }

    if (!result) {
        if (iecheck == "error") {
            $.messager.alert("警告", "该受试病例不符合入排标准！不能保存？", "warning");
        } else {
            $.messager.confirm("警告", "该受试病例不符合入排标准！是否继续保存？", function (r) {
                if (r) {
                    if (modifyreasonflag == "1" && isfinished == "1") {
                        getDataDiff($(obj));
                    } else {
                        inputDataCheck($(obj));
                    }
                }
            });
        }
    } else {
        if (modifyreasonflag == "1" && isfinished == "1") {
            getDataDiff($(obj));
        } else {
            inputDataCheck($(obj));
        }
    }
}

//添加行
function addReasonRow(target, data) {
    var $target = $(target);

    $("#cc").show();

    //在列表中添加一行
    var row = $target.find(".list-template tr").eq(0).clone();
    row.appendTo($target.find(".list-data"));

    //行ID
    $(row).attr("data-id", "0");
    //为每个控件生成动态id和name，否则表单验证会有问题
    var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
    $(row).attr("id", "row_" + newid);
    $(row).find("input").each(function () {
        $(this).attr("id", $(this).attr("id") + "_" + newid);
        $(this).attr("name", $(this).attr("name") + "_" + newid);
    });

    //回车不关闭对话框
    handlerKeydown(row);

    if (data.IrowId > 0) {
        $(row).find('td.hidden').removeClass('hidden');
        var c = $('[irow_id="' + data.IrowId + '"]').attr('rowindex');
        if (typeof (c) != "undefined") {
            $(row).find('#CrfIndex').html(title + c);
        } else {
            $(row).find('#CrfIndex').html(title);
        }
    }

    //行数据
    if (data) {
        if (typeof data === "string") {
            data = JSON.parse(data);
        }

        //行ID
        $(row).attr("data-id", data.Id);
        $(row).find("#Fieldnamestr").html(data.Fieldnamestr);
        $(row).find("#Oldvalue").html(data.Oldvalue);
        $(row).find("#Newvalue").html(data.Newvalue);
        $(row).find("[data-fieldname=Comments]").val(data.Comments);
    }
}

//empi那边不能编辑
function disableDlg() {
    var isreadonly = GetQueryString('readonly');
    if (isreadonly == "true") {
        $('.crfroot a').unbind();
        $('.crfroot').find('.btn').not('#btncancel').attr('disabled', 'disabled');
        $('.crfroot').find('input,select,textarea').not(type = 'hidden').attr('disabled', 'disabled');
    }
}

function GetQueryString(arg) {
    var reg = new RegExp("(^|&)" + arg + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) {
        return unescape(r[2]);
    }
    return null;
}

//由crf.edit.core.js调用
function saveDynamicRandomArm(obj) {


    var $armcode = $("[data-fieldid=Armcode]");
    var $patnumber = $("[data-fieldid=Patnumber]");

    if ($armcode.val() != "") {
        $.messager.alert("操作失败", "该受试病例已分组，不能再次分组！", "warning");
        return;
    }

    //此处判断需要讨论

    if ($patnumber.size() && $patnumber.val() != "") {

    }
    else {
        $.messager.alert("操作失败", "请先给该受试病例设置病例编号！", "warning");
        return;
    }

    //TODO 退出 剔除 状态的不能分组
    var patient_status = $("#Patient_Status").val();
    if (patient_status == "7" || patient_status == "8") {
        //退出 剔除 状态的不能分组
        $.messager.alert("操作失败", "退出或剔除状态不能分组！", "warning");
        return;
    }
    //TODO 关于 入组标准 和 排除标准 的 iecheck 校验
    var result = true;
    if (iecheck != "") {
        //bug237
        $("div[data-tableid=T_ie] .list-data>tr").each(function () {
            //$("div[data-tableid=T_ie] .list-data tr").each(function () {
            var $row = $(this);
            var ietype = $row.find("[data-fieldid=Ie_type]");
            var ieresult = $row.find("[data-fieldid=Ie_result]");
            if (ietype.size() && ieresult.size()) {
                if (ietype.val() == "1" && ieresult.val() == "0") {
                    //入选标准
                    result = false;
                    return false;
                } else if (ietype.val() == "2" && ieresult.val() == "1") {
                    //排除标准
                    result = false;
                    return false;
                }
            }
        });
    }
    //筛选未通过
    if (!result) {
        if (iecheck == "error") {
            $.messager.alert("警告", "该受试病例不符合入排标准！不能保存！", "warning");
        } else {
            $.messager.confirm("警告", "该受试病例不符合入排标准！是否继续？", function (r) {
                if (r) {
                    $.messager.confirm("提醒", "分组后随机结果将不得修改！", function (r) {
                        if (r) {
                            startDynamicRandom();
                        }
                    });
                }
            });
        }
    } else {
        $.messager.confirm("提醒", "分组后随机结果将不得修改！", function (r) {
            if (r) {
                startDynamicRandom();
            }
        });
    }
}

function startDynamicRandom() {
    var randomkey = "";
    $(".randomfield").each(function () {
        randomkey += $(this).val() + "/";
    });

    var jsondata = {
        Study_id: studyid,
        Study_patient_id: studypatientid,
        Randomkey: randomkey
    };

    layer.msg("正在分配随机结果...", { icon: 16, time: 0 });

    $.ajax({
        type: "post",
        url: "/Study/Patient/SavePatientDynamicRandom",
        data: {
            json: JSON.stringify(jsondata)
        },
        success: function (e) {
            //关闭加载层
            layer.closeAll();

            if (e.Ret == "0") {
                //界面显示分配结果
                setRandomResult(e);

                //获取结果后保存随机分组结果
                save($(this), false, false);
                setInputDisabled($(".randombutton"), true);
                $.messager.alert("操作提示", "分组成功,随机结果已保存！", "info");
            } else {
                //$.messager.alert("操作失败", e.Msg, "warning");
                $.messager.alert("操作失败", e.Msg, "crabyter_error");
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //关闭加载层
            layer.closeAll();
            $.messager.alert("操作失败", xhr.responseText, "crabyter_error");
            //showError(xhr);
        }
    });
}

// 控制【列表+弹窗】改成在当前列表Crf页面显示
var TableRowDomain = {

    CrfRowIndex: 1,

    btnAdd: $('<div style="font-family: Microsoft YaHei;margin-top: 10px;"> \
                  <a class="btn btn-mini btn-default" style="font-family: Microsoft YaHei;" href="#none">添加</a> \
             </div>'),
    btnRemove: $('<div style="font-family: Microsoft YaHei; float:right"> \
                    <a class="btn btn-mini btn-default" style="font-family: Microsoft YaHei;" href="#none">删除</a> \
                </div><div style="clear:both;"></div>'),

    RemoveClick: function (obj) {
        $.messager.confirm('提示', '确定要删除该条记录吗？', function (r) {
            if (r) {
                var row = $(obj).parents('.easyui-fluid').find('.crftablerow');
                var rowId = $(row).attr('irow_id');
                if (rowId == '0' || rowId == undefined) {
                    $(row).parents('.easyui-fluid').remove();
                } else {
                    $(row).parents('.easyui-fluid').addClass('hidden');
                    $(row).addClass('list-deleted-row');
                }
            }
        });
    },

    loadCrfData: function () {
        TableRowDomain.btnRemove.click(function () {
            TableRowDomain.RemoveClick($(this));
        });

        $(".crftablerow").each(function () {
            var $crf = $(this);
            var crfid = $crf.attr("data-id");
            var fieldid = $crf.attr("data-fieldid");

            layer.load(2);

            $.ajax({
                type: "POST",
                url: "/Study/Patient/GetCrfTableRowsData",
                data: {
                    id: studypatientid,
                    crf_id: crfid,
                    visit_id: $("#Visit_id").val(),
                    table_field_id: fieldid
                },
                success: function (data) {
                    layer.closeAll();

                    //if (data.length > 0) {
                    isPopup = true;
                    TableRowDomain.SetCrfData(data, $crf);
                    //}

                    //rowindex = data.Rowindex;

                    //changebyuser = false;
                    //SetCrfData(data);
                    //changebyuser = true;

                    //默认值
                    //setdefaultval = true;
                    //setCrfDefaultData(data.Crf_id);
                    //setdefaultval = false;

                    ////清除修改标识
                    //ischanged = false;

                    //if (oprt != "N" && $.inArray("Study.Patient.Query", actions) > 0) {
                    //    bindCrfTips();
                    //}
                },
                error: function (xhr, textStatus, errorThrown) {
                    layer.closeAll();

                    showError(xhr);
                }
            });
        });
    },

    SetCrfData: function (datas, crf) {
        var $crf = crf;
        var template = $crf[0].outerHTML;
        var $div = $('<div class="crflist"></div>');
        $crf.addClass('hidden');
        $crf.addClass('template');
        $crf.parent().append($div, TableRowDomain.btnAdd);

        //$div.append(TableRowDomain.btnAdd);
        TableRowDomain.btnAdd.find('a').click(function () {
            var child = $('<div class="panel easyui-fluid" style="font-family: Microsoft YaHei; margin-top:15px;"></div>');
            $crf.parent().find('.crflist').append(child);

            var childheader = $('<div class="panel-header" style="font-family: Microsoft YaHei;" ></div>');
            var htitle = $('<div class="panel-title panel-with-icon" style="font-family: Microsoft YaHei;">' + (title + TableRowDomain.CrfRowIndex) + '</div>');
            var hicon = $('<div class="panel-icon icon-cancel" title="删除" style="font-family: Microsoft YaHei; right:30px;left:auto;"></div>');
            var htool = $('<div class="panel-tool" style="font-family: Microsoft YaHei;"><a class="panel-tool-collapse" href="javascript:void(0)" style="font-family: Microsoft YaHei;"></a></div>');
            htool.click(function () {
                if (childbody.hasClass('Ishidden')) {
                    childbody.hide();
                    childbody.removeClass('Ishidden');
                } else {
                    childbody.show();
                    childbody.addClass('Ishidden');
                }
            });
            hicon.click(function () {
                TableRowDomain.RemoveClick($(this));
            });
            childheader.append(htitle, hicon, htool);

            var childbody = $('<div class="easyui-panel panel-body" title="" style="padding: 10px; font-family: Microsoft YaHei; display: block;" data-options="iconCls:\'icon-save\',collapsible:true"></div>');
            //childbody.append(template, TableRowDomain.btnAdd.clone(true));
            childbody.append(template);

            child.append(childheader, childbody);
            TableRowDomain.CrfRowIndex++;
            child.find("[data-form=radio]").radio();
            child.find("[data-form=checkbox]").checkbox();
            child.find("[data-form=datepicker]").datepicker({ clearBtn: true });
            child.find("[data-form=colorpicker]").colorpicker();
            child.find("[data-form=wycombo]").wycombo();

            // 附件
            attachInit(child);

            //字段逻辑
            bindLogicEvent(child);

            child.find("[data-elementtype='table']").each(function () {
                var target = $(this);

                target.find(".addRow").click(function () {
                    addRow(target);
                });

                target.find(".resetToDefault").click(function () {
                    //重置为默认行
                    $.messager.confirm("消息", "确认要将当期列表数据重置为默认行吗？", function (r) {
                        if (r) {
                            //删除当前数据
                            delAllRow(target);
                            //重新初始化默认值
                            initTableDefaultData(target);
                        }
                    });
                });
            });

            TableRowDomain.SetCrfDefaultData(child);

            //$crf.parent().find('.crflist').append(child);
            // 锚到页面底部
            $(this).focus();
        });

        $.each(datas, function (i, data) {
            var child = $('<div class="panel easyui-fluid" style="font-family: Microsoft YaHei; margin-top:15px;"></div>');

            var childheader = $('<div class="panel-header" style="font-family: Microsoft YaHei;" ></div>');
            var htitle = $('<div class="panel-title panel-with-icon" style="font-family: Microsoft YaHei;">' + (title + TableRowDomain.CrfRowIndex) + '</div>');
            var hicon = $('<div class="panel-icon icon-cancel" title="删除" style="font-family: Microsoft YaHei; right:30px;left:auto;"></div>');
            var htool = $('<div class="panel-tool" style="font-family: Microsoft YaHei;"><a class="panel-tool-collapse" href="javascript:void(0)" style="font-family: Microsoft YaHei;"></a></div>');
            htool.click(function () {
                if (childbody.hasClass('Ishidden')) {
                    childbody.hide();
                    childbody.removeClass('Ishidden');
                } else {
                    childbody.show();
                    childbody.addClass('Ishidden');
                }
            });
            hicon.click(function () {
                TableRowDomain.RemoveClick($(this));
            });
            childheader.append(htitle, hicon, htool);

            var childbody = $('<div class="easyui-panel panel-body" title="" style="padding: 10px; font-family: Microsoft YaHei; display: block;" data-options="iconCls:\'icon-save\',collapsible:true"></div>');
            //childbody.append(template, TableRowDomain.btnAdd.clone(true));
            childbody.append(template);

            child.append(childheader, childbody);

            //var child = $('<div style="border:1px solid #dddddd; border-radius:5px; padding:2px; margin:5px;"></div>');
            //var childtitle = $('<div class="crf-title" style="font-family: Microsoft YaHei;">' + title + TableRowDomain.CrfRowIndex + '</div>');
            //child.append(childtitle, template, TableRowDomain.btnRemove.clone(true));
            TableRowDomain.CrfRowIndex++;
            child.find('.crftablerow').attr('Irow_id', data.Irow_id);
            child.find('.crftablerow').attr('RowIndex', data.Rowindex);
            child.find("[data-form=radio]").radio();
            child.find("[data-form=checkbox]").checkbox();
            child.find("[data-form=datepicker]").datepicker({ clearBtn: true });
            child.find("[data-form=colorpicker]").colorpicker();
            child.find("[data-form=wycombo]").wycombo();

            // 附件
            attachInit(child);

            // 字段逻辑
            bindLogicEvent(child);

            child.find("[data-elementtype='table']").each(function () {
                var target = $(this);

                target.find(".addRow").click(function () {
                    addRow(target);
                });

                target.find(".resetToDefault").click(function () {
                    //重置为默认行
                    $.messager.confirm("消息", "确认要将当期列表数据重置为默认行吗？", function (r) {
                        if (r) {
                            //删除当前数据
                            delAllRow(target);
                            //重新初始化默认值
                            initTableDefaultData(target);
                        }
                    });
                });
            });

            child.find('.crffield').each(function () {
                var $input = $(this);
                var fieldcode = $input.attr('data-fieldcode');
                $.each(data.FieldDatas, function (k, fielddata) {
                    if (fielddata.Fieldcode == fieldcode) {
                        setInputValue($input, fielddata, false);
                        //setInputValueNew($input, fielddata.Value, fielddata.Valuestr, false);
                        return false;
                    }
                });
            });

            $div.append(child);

            $.each(data.TableDatas, function (j, tabledata) {
                var $table = child.find('#' + tabledata.Fieldcode);
                $table.find(".list-data").html('');
                $.each(tabledata.Rows, function (row, rowdata) {
                    TableRowDomain.AddRow($table, rowdata);
                    //addRow($table, rowdata);
                });
            });

            //$div.append(child);
        });

        //$crf.parent().append($div);
    },

    // 添加行
    AddRow: function (target, data) {
        var $target = $(target);

        //在列表中添加一行
        var row = $target.find(".list-template tr").eq(0).clone();
        row.appendTo($target.find(".list-data"));

        //行ID
        $(row).attr("data-id", "0");
        //为每个控件生成动态id和name，否则表单验证会有问题
        var newid = (new Date()).getMilliseconds() + "_" + getRandomString(8);
        $(row).attr("id", "row_" + newid);
        $(row).find("input").each(function () {
            $(this).attr("id", $(this).attr("id") + "_" + newid);
            $(this).attr("name", $(this).attr("name") + "_" + newid);
        });

        $(row).find("[data-form=radio]").radio();
        $(row).find("[data-form=checkbox]").checkbox();
        $(row).find("[data-form=datepicker]").datepicker({ clearBtn: true });
        $(row).find("[data-form=colorpicker]").colorpicker();
        $(row).find("[data-form=wycombo]").wycombo();

        //回车不关闭对话框
        handlerKeydown(row);

        //字段逻辑
        bindLogicEvent(row);

        //数据核查
        bindCheckrule(row);

        //行数据
        if (data) {
            if (typeof data === "string") {
                data = JSON.parse(data);
            }

            //行ID
            $(row).attr("data-id", data.Irow_id);
            //行数据
            $(row).find(".list-crffield").each(function () {
                var $input = $(this);
                var fieldcode = $input.attr("data-fieldcode");
                $.each(data.FieldDatas, function (i, fielddata) {
                    if (fielddata.Fieldcode == fieldcode) {
                        changebyuser = false;
                        setInputValue($input, fielddata, false);
                        changebyuser = true;
                        return false;
                    }
                });
            });

            if (data.Isview == "1") {
                //$(row).find(".editRow").hide();
                $(row).find(".delRow").hide();
            }
        }

        //修改行
        $(row).find(".editRow").click(function () {
            var rowId = $(row).attr("id");
            var rowDataId = $(row).attr("data-id");
            var $table = $(row).closest(".crftable");
            var width = $table.attr("data-width");
            var height = $table.attr("data-height");
            var id = $table.attr("data-id");
            var visitid = $("#Visit_id").val();
            var crfid = $table.closest(".crfroot").attr("data-id");
            dlg.setSize(width, height);

            dlg.setURL("查看/修改", "/Study/Patient/CrfInputRow/" + studyid + "/" + crfid + "/" + rowDataId + "?p=" + studypatientid + "&fromid=" + fromid + "&f=" + id + "&v=" + visitid + "&row=" + rowId + "&callback=addRow");

            dlg.show();
        });

        //删除行事件
        $(row).find(".delRow").click(function () {
            $.messager.confirm("确认", "确认要删除该行吗？", function (result) {
                if (result) {
                    delRow($target, $(row));
                }
            });
        });

        //上移、下移
        $(row).find(".moveUp").click(function () {
            if (row.prev()) {
                row.insertBefore(row.prev());
            }
        });
        $(row).find(".moveDown").click(function () {
            if (row.next()) {
                row.insertAfter(row.next());
            }
        });

        return row;
    },

    //CRF表默认值
    SetCrfDefaultData: function (crf) {
        var $crf = crf;//$(".crftablerow[data-id=" + crfid + "]");

        //if (oprt == "N") {
        //未录入时，加载列表默认数据
        $crf.find("[data-elementtype=table]").each(function () {
            if ($(this).find(".list-data").hasClass("datasaved")) {
                return true;
            }

            $(this).find(".list-data").html("");

            initTableDefaultData($(this));
        });

        //控件默认值
        $crf.find(".crffield").each(function () {
            var $input = $(this);
            if ($input.attr("data-defaultval") && $input.attr("data-defaultval") != "") {
                setInputValueNew($input, $input.attr("data-defaultval"), $input.attr("data-defaultval"), false);
                //$input.change();
            }
        });
        //}

        //默认值部分不允许删除
        $crf.find("[data-elementtype=table]").each(function () {
            var allowdeldefault = $(this).attr("data-allowdeldefault");
            if (allowdeldefault != "1") {
                var defaultval = JSON.parse($(this).attr("data-defaultval"));
                if (defaultval != undefined && defaultval.length > 0) {
                    for (var i = 0; i < defaultval.length; i++) {
                        //在列表中添加一行
                        //bug237
                        var $row = $(this).find(".list-data>tr").eq(i);
                        //var $row = $(this).find(".list-data tr").eq(i);
                        if ($row) {
                            //禁止删除
                            $row.find(".delRow").hide();

                            //设置了默认值的字段不允许修改
                            for (var fieldid in defaultval[i].FieldDatas) {
                                var $input = $row.find("[data-fieldid=" + fieldid + "]");
                                if ($input.size()) {
                                    setInputDisabled($input, true);
                                }
                            }
                        }
                    }
                }
            }
        });
    },

    // 获取列表多行数据
    GetCrfTableRowsData: function () {
        var crfdataarr = [];
        $(".crftablerow").not('.template').each(function () {
            var crfdata = TableRowDomain.getCrfTablerowData($(this));
            crfdataarr.push(crfdata);
        });
        return crfdataarr;
    },

    // 获取列表单行数据
    getCrfTablerowData: function (table) {
        var $table = $(table);
        var crfid = $table.closest(".crftablerow").attr("data-id");
        var fieldid = $table.attr("data-fieldid");
        var crfdata = {
            Crf_id: crfid,
            CrfSectionId: $table.attr("crfsectionid"),
            Visit_id: $("#Visit_id").val(),
            Table_field_id: fieldid,
            Irow_id: $table.attr('Irow_id'), //irow_id,
            Rowindex: $table.attr('RowIndex'), //rowindex,
            Fieldcode: $table.attr("id"),
            FieldDatas: [],
            TableDatas: [],
            CrfTableRowDatas: [],
            IsDeletedTableDataRows: []//更新标识为已替换掉的检查类型所对应病灶
        };

        $table.find(".crffield").each(function () {
            crfdata.FieldDatas.push(getInputValue($(this)));
        });

        // 直接编辑列表数据
        $table.find("[data-elementtype=table]").each(function () {
            var tabledata = {
                Table_field_id: $(this).attr("data-id"),
                Df_tableid: $(this).attr("data-tableid"),
                Fieldcode: $(this).attr("id"),
                Rows: [],
                DeletedRows: []
            };

            $(this).find(".list-data>tr").each(function (index) {
                var pushElement = $(this);
                tabledata.Rows.push(getRowValue(index, pushElement));

                var data_ref_itemvalue_parent = pushElement.parent().parent().parent().parent().parent().parent().parent().parent().parent();
                if (data_ref_itemvalue_parent) {
                    var windowParent = $(".table-crfform");
                    windowParent.find(".crffield[data-fieldid='Te_type']").each(function () {
                        var $input = $(this);
                        var $region = windowParent.find(".list-data");

                        if ($input.is("select")) {
                            var fielddata = getInputValue($input);
                            var data_ref_itemvalue = data_ref_itemvalue_parent.attr("data-ref-itemvalue");
                            if (data_ref_itemvalue !== undefined) {
                                var ref_itemvalue = data_ref_itemvalue.split(',');
                                var fieldval = (fielddata.Value == "" ? fielddata.Valuestr : fielddata.Value);
                                if (fieldval != null && fieldval != undefined) {
                                    $.each(fieldval.split(','), function (index, val) {
                                        if (val != "" && $.inArray(val, ref_itemvalue) < 0) {
                                            crfdata.IsDeletedTableDataRows.push(getRowValue(index, pushElement));
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            });

            $(this).find(".list-deleted>tr").each(function (index) {
                tabledata.DeletedRows.push(getRowValue(index, $(this)));
            });

            crfdata.TableDatas.push(tabledata);
        });

        return crfdata;
    }
}

/*
设置CrfInput页面里按钮不可用
2016-6-29
*/
function setCrfButtonDisabled(crf, isdisabled) {
    var $crf = $(crf);

    $crf.find(".btn").each(function () {
        if (isdisabled) {
            $(this).hide();
        } else {
            $(this).show();
        }
    });
}