//var fileids = "";
//var imageids = "";

//layer.photos 扩展配置
layer.config({
    extend: 'extend/layer.ext.js'
});

$(document).ready(function () {
    attachInit();
});

//加载文件 
function attachInit(obj) {
    var objs;
    if (obj == undefined) {
        objs = $('[data-form=file],[data-form=image]');
    } else {
        objs = obj.find('[data-form=file],[data-form=image]');
    }
    objs.each(function () {
        var divObj = $(this);
        var $input = $(this).find("input[type=hidden]");
        var imagewidth = $input.attr("data-thumbwidth");
        var imageheight = $input.attr("data-thumbheight");

        var $container = $(this).find(".wrapper");
        var attachtype = $(this).attr("data-form");
        // var $focus=$(this).find("")
        imageids = $input.val();
        var url = "";
        if (attachtype == "image") {
            if ($input.val() == "") {
                $container.hide();
            }
            else {
                $container.show();
            }
            url = "/Study/Attach/UploadImage/" + studypatientid + "?width=" + imagewidth + "&height=" + imageheight;
        }
        if (attachtype == "file") {
            url = "/Study/Attach/UploadFile/" + studypatientid;;
        }

        $(this).find("input[type=file]").fileupload({
            url: url,
            dataType: 'json',
            //singleFileUploads: false,//单个上传
            //autoUpload: true,
            formData: {},
            maxFileSize: $(this).attr("data-maxsize"),
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
            done: function (e, data) {
                if (data.result.Ret != 0) {
                    $.messager.alert("提示", data.result.Msg, "warning");
                    return;
                }
                //重新加载
                var flag = false;
                var title = "";
                $.each(data.result.Content, function (index, file) {
                    var pids = "";
                    if ($input.attr("data-muiltule") == "1") {
                        pids = $(divObj).find("input[type=hidden]").val();
                    }
                    if (attachtype == "image") {
                        $container.show();
                        pids += file.Id + ",";
                        $input.val(pids);
                        if (file.Id > 0) {
                            addImage(divObj, file);
                        } else {
                            flag = true;
                            title += file.Filename + "<br/>";
                        }
                    }
                    else {
                        pids += file.Id + ",";
                        $input.val(pids);
                        addFile(divObj, file);
                    }
                });
                if (flag) {
                    $.messager.alert("提示", data.result.Msg, "warning");
                }
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress .bar').css(
                    'width',
                    progress + '%'
                );
            },
            failed: function (e, data) {
                $.each(data.files, function (index, file) {

                    alert(file.name);
                });
                $.messager.alert("提示", "上传失败,最大上传1M,", "error");
            }
        });
        //debugger;

        if ($input.attr("data-muiltule") == "1") {
            //var iamgewidth = $input.attr("data-thumbwidth");
            if (imagewidth == "" || imagewidth == "0" || imagewidth == "undefined") {
                imagewidth = 100;
            }
            var pWidth = divObj.parent().width();
            divObj.find("#focus").width(pWidth);
            var sWidth = divObj.find("#focus").width() - 62; //获取焦点图的宽度（显示面积）
            var len = divObj.find("#focus ul li").length; //获取焦点图个数
            var index = 0;

            var btn = "";
            btn += "<div class='preNext pre'><i class='icofont-chevron-left helper-font-24'></i></div><div class='preNext next'><i class='icofont-chevron-right helper-font-24'></i></div>";
            divObj.find("#focus").append(btn);

            //为小按钮添加鼠标滑入事件，以显示相应的内容
            divObj.find("#focus .btn span").css("opacity", 0.3).mouseenter(function () {
                index = divObj.find("#focus .btn span").index(this);
                showPics(index);
            }).eq(0).trigger("mouseenter");

            //上一页、下一页按钮透明度处理
            divObj.find("#focus .preNext").css("opacity", 0.5).hover(function () {
                $(this).stop(true, false).animate({ "opacity": "0.8" }, 300);
            }, function () {
                $(this).stop(true, false).animate({ "opacity": "0.5" }, 300);
            });

            //上一页按钮
            divObj.find("#focus .pre").click(function () {
                index -= sWidth / (imagewidth);
                if (index <= -sWidth / imagewidth) { index = divObj.find("#focus ul li").length - divObj.find("#focus ul li").length % (sWidth / imagewidth - (60 + sWidth / imagewidth)) }
                showPics(divObj, index);
            });

            //下一页按钮
            divObj.find("#focus .next").click(function () {
                index += sWidth / imagewidth;
                if (index > divObj.find("#focus ul li").length) { index = 0; }
                showPics(divObj, index);
            });
            //显示图片函数，根据接收的index值显示相应的内容
            function showPics(divObj, index) { //普通切换
                //debugger;
                var nowLeft = -(index / (sWidth / imagewidth)) * sWidth + (60 + sWidth / imagewidth); //根据index值计算ul元素的left值
                $(divObj).find("#focus ul").stop(true, false).animate({ "left": nowLeft }, 300); //通过animate()调整ul元素滚动到计算出的position
                $(divObj).find("#focus .btn span").stop(true, false).animate({ "opacity": "0.4" }, 300).eq(index).stop(true, false).animate({ "opacity": "1" }, 300); //为当前的按钮切换到选中的效果
            }
        }
    });
}

//预览大图的json格式
var photos = {
    title: "",
    id: "",
    start: 0,
    data: []
};

function addImage(divObj, json) {

    $(divObj).find(".wrapper").show();
    var $obj = $(divObj).find(".image-template").eq(0).clone();
    var $ul = $(divObj).find("#sortable");
    var $input = $(divObj).find("input[type=hidden]");

    $obj.removeClass("hidden");
    $obj.attr("id", json.Id);
    $obj.find(".datasource-image-box img").attr("src", "/Study/Attach/GetImage?id=" + json.Id + "&type=0");
    $obj.find(".datasource-title span").html(json.Filename);
    var imgdata = {
        alt: json.Filename,
        pid: json.Id,
        src: "/Study/Attach/GetImage?id=" + json.Id + "&type=1",
        thumb: "/Study/Attach/GetImage?id=" + json.Id + "&type=0"
    };
    photos.data.push(imgdata);

    //预览大图
    $obj.find(".datasource-image-box img").click(function () {
        //获取图片索引
        var index = 0;
        if ($input.attr("data-muiltule") == "1") {
            //var $images = $(".datasource-image-box img");
            //index = $images.index(this) - 1;
            //在photos中查找当前图片所在的index
            var this_src = $(this).attr("src").toLowerCase();
            $.each(photos.data, function (indexj, val) {
                var each_src = val.thumb.toLowerCase();
                if (this_src == each_src) {
                    index = indexj;
                    return false;
                }
            })
        }
        //alert(index);
        photos.start = index;
        layer.photos({
            photos: photos,
            shift: 0,
            shade: 0.3
        });
    });

    //删除图片
    $obj.find(".deletebtn").click(function () {
        $.messager.confirm("提醒", "确认要删除此图片吗？", function (r) {
            if (r) {
                $.ajax({
                    type: "post",
                    url: "/Study/Attach/Delete",
                    data: { id: json.Id },
                    success: function (e) {
                        if (e.Ret == "0") {
                            $obj.remove();
                            photos.data.pop(imgdata);
                            var imageids = "";
                            $(divObj).find("ul li").each(function (liitem) {
                                if ($(this)[0].id != "" && $(this)[0].id != undefined) {
                                    imageids += $(this)[0].id + ",";
                                }
                            });
                            $(divObj).find("input[type=hidden]").val(imageids);

                            if ($input.attr("data-muiltule") != "1") {
                                $ul.html("<li class=\"datasource-image-container image-template hidden\" style=\"list-style: none\"><div class=\"datasource-image-box\"><img /></div><i class=\"icofont-remove helper-font-16 deletebtn\"></i></li>");
                            }
                        } else {
                            $.messager.alert("删除失败！");
                        }
                    }
                });
            }
        });
    });
    $obj.find(".datasource-image-box").click(function () {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
        } else {
            $(this).addClass("active");
        }
    });

    $obj.find(".datasource-title span").dblclick(function () {
        editTitle(this, json.Id);
    });

    if ($input.attr("data-muiltule") == "1") {
        //alert("2")
        $obj.appendTo($ul);
    }
    else {
        $ul.html($obj);
    }
}

function addFile(divObj, json) {
    var $obj = $(divObj).find(".lii").eq(0).clone();
    var $ull = $(divObj).find(".ull");
    var $input = $(divObj).find("input[type=hidden]");

    $obj.removeClass("hidden");
    $obj.attr("id", json.Id);
    $obj.find(".divd").html(json.Filename);
    $obj.find(".divd").attr("href", "/Study/Attach/DownloadFile/" + json.Id); //下载

    //扩展名图标
    if (json.Fileurl != "" && json.Fileurl != null) {
        var Extension = json.Fileurl.split('.')[1];

        if (Extension == "doc" || Extension == "docx") {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file-doc.png");
        }//icon-file-excel
        else if (Extension == "xls" || Extension == "xlsx") {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file-xls.png");
        }
        else if (Extension == "pdf") {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file-pdf.png");
        }
        else if (Extension == "jpeg" || Extension == "jpg" || Extension == "gif" || Extension == "bmp" || Extension == "png") {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file-image.png");
        }
        else if (Extension == "txt") {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file-txt.png");
        }
        else if (Extension == "zip" || Extension == "rar") {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file-zip.png");
        }
        else {
            $obj.find("#fileicon").attr("src", "/content/themes/icons/ic-file.png");
        }
    }
    $obj.find(".datasource-title span").dblclick(function () {
        editTitle(this, json.Id);
    });

    $obj.mouseenter(function () {
        $obj.find(".icofont-remove").removeClass("hidden");
        $obj.find(".icofont-edit").removeClass("hidden");
    });
    $obj.mouseleave(function () {
        $obj.find(".icofont-remove").addClass("hidden");
        $obj.find(".icofont-edit").addClass("hidden");
    });

    $obj.find(".icofont-remove").click(function () {//删除
        $.messager.confirm("提醒", "确认要删除此文件吗？", function (r) {
            if (r) {
                $.ajax({
                    type: "post",
                    url: "/Study/Attach/Delete",
                    data: { id: json.Id },
                    success: function (e) {
                        if (e.Ret == "0") {
                            $obj.remove();
                            var fileids = "";
                            $(divObj).find("ul li").each(function (liitem) {
                                if ($(this)[0].id != "" && $(this)[0].id != undefined) {
                                    fileids += $(this)[0].id + ",";
                                }
                            });
                            $(divObj).find("input[type=hidden]").val(fileids);
                            if ($input.attr("data-muiltule") != "1") {
                                $ull.html("<li class=\"lii hidden\"><table><tr><td><img id=\"fileicon\"/></td><td><a href=\"#\" class=\"btn-link divd\"></a></td><td style=\"width:20px;\">&nbsp;</td><td><i class=\"icofont-remove color-red hidden\" style=\"cursor: pointer;\"></i></td><td><i class=\"icofont-edit hidden\" style=\"cursor: pointer;\"></i></td></tr></table></li>");
                            }
                        } else {
                            $.messager.alert("删除失败！");
                        }
                    }
                });
            }
        });

    });
    $obj.find(".icofont-edit").click(function () {
        //修改标题
        $obj.find(".icofont-remove").addClass("hidden");
        $obj.find(".icofont-edit").addClass("hidden");
        var $title = $obj.find(".divd")
        editTitle($title, json.Id);
    });

    $obj.find(".datasource-title span").dblclick(function () {
        editTitle(this, json.Id);
    });

    if ($input.attr("data-muiltule") == "1") {
        //alert("2")
        $obj.appendTo($ull);
    }
    else {
        $ull.html($obj);
    }
}

//修改上传文件标题
function editTitle(obj, id) {

    var $input = $("<input/>");
    $input.attr("type", "text");
    $input.attr("value", $(obj).html());
    $input.addClass("tempchange-title");
    $input.blur(function () {
        var title = $(this).val();
        if (title.length > 50 || title.length <= 0) {
            $.messager.alert("提示", "命名有误，最少1个字符，长度不能超过50个字符", "error");
            return false;
        }
        $.ajax({
            type: 'post',
            url: "/Study/Attach/EditTitle",
            data: { id: id, title: title },
            success: function (e) {
                if (e.Ret == "0") {
                    $(obj).show();
                    $(obj).html(title);
                    $input.remove();
                }
            }
        })
    });
    $input.appendTo($(obj).parent());
    $input.focus();
    $(obj).hide();
}