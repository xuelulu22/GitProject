/* 基于jQuery UI - v1.11.2 
*
*/

//对AutoComplete插件的二次封装
(function ($) {
    //plugin definition
    $.fn.wyautocomplete = function (options) {
        var defaults = {
            minLength: 0,
            width: 0,
            height: 261,
            url: null,
            valueField: 'Id',
            textField: 'Name',
            max: 4,
            //{ field: 'Inspectitemcode', width: 80 }
            columns: null,
            onSelected: null
        };
        //Extends out defaults options with those privided 扩展我们默认的设置
        $.extend(defaults, options);
        var $that = this;
        if (defaults.width == 0) {
            defaults.width = $that.width();
        }

        $that.autocomplete({
            minLength: defaults.minLength,
            source: function (request, response) {
                _getRemoteData(defaults.url, request, response)
            },
            focus: function (event, ui) {
                //$that.val(ui.item[defaults.textField]);
                return false;
            },
            select: function (event, ui) {
                $that.val(ui.item[defaults.textField]);

                if (defaults.onSelected != null) {
                    defaults.onSelected(ui.item);
                }

                return false;                
            }
        });

        $that.autocomplete("instance")._renderMenu = function (ul, items) {
            var that = this;
            $.each(items, function (index, item) {
                that._renderItemData(ul, item);
            });
        };

        $that.autocomplete("instance")._renderItem = function (ul, item) {
            //设置弹出框的宽、高
            ul.width(defaults.width).height(defaults.height).css("overflow-x", "hidden").css("overflow-y", "auto");

            if (defaults.columns == null || defaults.columns.length < 2) {
                var cnt = ul.find("li").length + 1;
                if (cnt > 10) cnt = 10;
                ul.height(cnt * 26);

                return $("<li>")
                  .append(item[defaults.textField])
                  .appendTo(ul);
            }
            else {
                var colcnt = defaults.columns.length;
                var li = $("<li/>");
                var html = '';
                var width = 0;
                for (var colidx = 0; colidx < colcnt; colidx++) {
                    var colobj = defaults.columns[colidx];

                    if (!colobj.field) {
                        throw new Error("columns define invalid,need field property");
                    }

                    if (colidx == 0) {
                        html += '<span class="column-first"';
                    }
                    else if (colidx == 1 && colcnt == 2) {
                        html += '<span class="column-last"';
                    }
                    else {
                        html += '<span class="column-middle"';
                    }

                    //默认100宽
                    if (!colobj.width) {
                        colobj.width = 100;
                    }

                    width += colobj.width + 8;

                    html += ' style="width:' + colobj.width.toString() + 'px;">' + item[colobj.field] + '</span>';
                }

                li.width(width);
                ul.width(width + 20);

                var cnt = ul.find("li").length + 1;
                if (cnt > 10) cnt = 10;
                ul.height(cnt * 26);

                $(html).appendTo(li);
                return li.appendTo(ul);
            }
        };
    };

    //private function
    function _debug(obj) {
        if (obj && window.console && window.console.log) {
            window.console.log(obj.toString());
        }
    }

    function _getRemoteData(url, request, response) {
        $.ajax({
            url: url,
            method: "post",
            dataType: "json",
            data: {
                q: request.term
            },
            success: function (data) {
                response(data);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                var msg = "Http status: " + xhr.status + " " + xhr.statusText
                    + "\najaxOptions: " + ajaxOptions + "\nthrownError:" + thrownError
                    + "\n" + xhr.responseText;

                throw new Error(msg);
            }
        });
    }
})(jQuery);

///<summary>可输入的Combo</summary>
/*
    使用：html里这样写
    <input id="project" data-form="wycombo" data-source ="[{value:'jquery',text:'jquery'},{value:'sizzlejs' ,text:'sizzle js'}]">
    其中 data-form="wycombo"是为了控件自动初始化，不写的话手动初始化 $("#xxx").wycombo();
    data-source:combo的数据源，默认是[{value:xx,text:xx},{value:xx,text:xx}]的格式，也可以用其他格式，但是得手动初始化（并注明Id\Name的属性名）

*/
!function ($) {
    //plugin definition
    var WYCombo = function (element, options) {
        var defaults = {
            minLength: 0,
            width: 0,
            height: 261,
            valueField: 'value',
            textField: 'text',
            url: null,
            data: null,
            queryParams: { q: "" },
            max: 4,
            //{ field: 'Inspectitemcode', width: 80 }
            columns: null,
            onSelected: null
        };
        //Extends out defaults options with those privided 扩展我们默认的设置
        $.extend(defaults, options);
        var $that = $(element);
        var handler = null;

        $that.parent().find(".dropdown-btn").click(function (e) {
            if ($that.hasClass("ui-autocomplete-loading")) return;

            if (!$that.attr("disabled") && !$that.attr("readonly")) {
                if (handler != null) clearTimeout(handler);

                $that.autocomplete("instance").cancelSearch = false;
                $that.autocomplete("instance").__response(["loading"]);

                handler = setTimeout(function () {
                    $that.focus();
                    $that.autocomplete("instance")._search("");
                }, 100);
            }
        });

        if (defaults.width == 0) {
            defaults.width = $that.width();
        }

        if ($that.attr("data-valuefield")) {
            defaults.textField = $that.attr("data-valuefield");
        }
        if ($that.attr("data-textfield")) {
            defaults.textField = $that.attr("data-textfield");
        }
        if ($that.attr("data-cols")) {
            eval("var cols = " + $that.attr("data-cols"));
            defaults.columns = cols;
        }
        //if (defaults.columns != null && defaults.columns.length == 1) {
        //    defaults.valueField = defaults.columns[0].field;
        //    defaults.textField = defaults.columns[0].field;
        //}

        if (defaults.url == null) {
            if ($that.attr("data-url")) {
                defaults.url = $that.attr("data-url");
            }
        }
        eval("var datasource = " + $that.attr("data-datas"));
        if (defaults.data == null) {
            if ($that.attr("data-datas")) {
                defaults.data = datasource;
            }
        }

        if (defaults.url != null) {
            //通过ajax加载数据源
            $that = $that.autocomplete({
                minLength: defaults.minLength,
                source: function (request, response) {
                    if ($that.attr("data-params")) {
                        eval("var params = " + $that.attr("data-params"));
                        defaults.queryParams = params;
                    }
                    defaults.queryParams.q = request.term;
                    _getRemoteData(defaults.url, defaults.queryParams, response)
                },
                focus: function (event, ui) {
                    return false;
                },
                select: function (event, ui) {
                    $that.val(ui.item[defaults.textField]);
                    $that.attr("data-value", ui.item[defaults.valueField]);
                    $that.attr("data-text", ui.item[defaults.textField]);
                    if (defaults.onSelected != null) {
                        defaults.onSelected(ui.item);
                    }
                    $that.change();
                    return false;
                }
            });
        }
        else if (defaults.data != null) {
            //通过固定的json数据源加载
            $that = $that.autocomplete({
                minLength: defaults.minLength,
                source: defaults.data,
                focus: function (event, ui) {
                    return false;
                },
                select: function (event, ui) {
                    $that.val(ui.item[defaults.textField]);
                    $that.attr("data-value", ui.item[defaults.valueField]);
                    $that.attr("data-text", ui.item[defaults.textField]);
                    if (defaults.onSelected != null) {
                        defaults.onSelected(ui.item);
                    }
                    $that.change();
                    return false;
                }
            });
        }
        $that.autocomplete("instance")._beforSearch = function () {
            //按键时，清空value和text值
            $that.attr("data-value", "");
            $that.attr("data-text", "");
        };
        $that.autocomplete("instance")._renderItem = function (ul, item) {
            //设置弹出框的宽、高
            ul.width(defaults.width).height(defaults.height).css("overflow-x", "hidden").css("overflow-y", "auto");

            if (item.value == "loading") {
                ul.height(26);
                return $("<li>")
                    .css("border", 0)
                    .append("<img src='/content/images/ajax-loader2.gif' />")
                    .appendTo(ul);
            }

            if (defaults.columns == null || defaults.columns.length == 0) {
                var cnt = ul.find("li").length + 1;
                if (cnt > 10) cnt = 10;
                ul.height(cnt * 26);

                return $("<li>")
                  .append(item[defaults.textField])
                  .appendTo(ul);
            }
            else {
                var totalwidth = ul.width();
                var colcnt = defaults.columns.length;
                var li = $("<li/>");
                var html = '';
                var width = 0;
                for (var colidx = 0; colidx < colcnt; colidx++) {
                    var colobj = defaults.columns[colidx];

                    if (!colobj.field) {
                        throw new Error("columns define invalid,need field property");
                    }

                    if (colidx == 0) {
                        html += '<span class="column-first"';
                    }
                    else if (colidx == 1 && colcnt == 2) {
                        html += '<span class="column-last"';
                    }
                    else {
                        html += '<span class="column-middle"';
                    }

                    //默认100宽
                    if (!colobj.width) {
                        colobj.width = 100;
                    }

                    width += colobj.width + 8;

                    if (colidx == colcnt - 1 && width < totalwidth) {
                        colobj.width += totalwidth - width;
                        width = totalwidth;
                    }

                    html += ' style="width:' + colobj.width.toString() + 'px;">' + item[colobj.field] + '</span>';
                }

                li.width(width);
                ul.width(width + 20);

                var cnt = ul.find("li").length + 1;
                if (cnt > 10) cnt = 10;
                ul.height(cnt * 26);

                $(html).appendTo(li);
                return li.appendTo(ul);
            }
        };
    };

    function _getRemoteData(url, queryParams, response) {
        $.ajax({
            url: url,
            method: "post",
            dataType: "json",
            data: queryParams,
            success: function (data) {
                response(data);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                var msg = "Http status: " + xhr.status + " " + xhr.statusText
                    + "\najaxOptions: " + ajaxOptions + "\nthrownError:" + thrownError
                    + "\n" + xhr.responseText;

                throw new Error(msg);
            }
        });
    }

    WYCombo.prototype = {
        constructor: WYCombo,

        change: function (e) {
        }
    };

    $.fn.wycombo = function (option, params) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('wycombo'),
				options = typeof option === 'object' && option;
            if (!data) {
                $this.data('wycombo', (data = new WYCombo(this, $.extend({}, $.fn.wycombo.defaults, options))));
            }
            if (typeof option === 'string') data[option](params);
        });
    };

    $.fn.wycombo.defaults = {
    };

    $.fn.wycombo.Constructor = WYCombo;
}(window.jQuery);

//radio和checkbox插件
!function ($) {
    var Radio = function (element, options) {
        this.element = $(element);

        this.element.find("input[type=radio]:checked,input[type=checkbox]:checked").parent("label").addClass("checked");

        this.element.find("input[type='radio'],input[type='checkbox']").on('change', $.proxy(this.change, this));

        //默认值
        if (this.element.attr("data-defaultval"))
            this.setValue(this.element.attr("data-defaultval"));

        //只读
        if (this.element.attr("disabled") == "disabled")
            this.element.find("input[type='radio'],input[type='checkbox']").prop("disabled", true);
    };

    Radio.prototype = {
        constructor: Radio,

        change: function (e) {
            var target = $(e.target);

            ////设置备注字段
            //this.setRemark(this.element.find("label.checked input[type=radio]"));
            //this.setRemark(target);

            if (target.prop("checked")) {
                this.element.find("input[type=radio]:checked,input[type=checkbox]:checked").each(function () {
                    if (!$(this).is(target)) {
                        $(this).prop("checked", false);
                    }
                });

                this.element.find("label.checked").removeClass("checked");
                target.parent("label").addClass("checked");
            } else {
                target.parent("label").removeClass("checked");
            }

            //隐藏控件赋值
            this.element.find("input[type='hidden']").val(this.getValue());
            this.element.attr("data-value", this.getValue());
            this.element.attr("data-text", this.getValuestr());
        },
        getValue: function () {
            var obj = this.element.find("input[type=radio]:checked,input[type=checkbox]:checked");
            return obj.size() ? obj.val() : "";
        },
        getValuestr: function () {
            return this.element.find("input[type=radio]:checked,input[type=checkbox]:checked").parent().text();
        },
        setValue: function (value) {
            if (value == undefined || value == null || value == "") {
                this.element.find("input[type=radio],input[type=checkbox]").each(function (e) {
                    $(this).prop("checked", false);
                    $(this).change();
                });
            } else {
                this.element.find("input[type=radio],input[type=checkbox]").each(function (e) {
                    if (($(this).val() == value || $(this).attr("data-value") == value) && !$(this).prop("checked")) {
                        $(this).prop("checked", true);
                        $(this).change();
                    }
                });
            }
        },
        setDisabled: function (isdisabled) {
            this.element.find("input[type=radio],input[type=checkbox]").attr("disabled", isdisabled);
        }
    };

    $.fn.radio = function (option, params) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('radio'),
				options = typeof option === 'object' && option;
            if (!data) {
                $this.data('radio', (data = new Radio(this, $.extend({}, $.fn.radio.defaults, options))));
            }
            if (typeof option === 'string') data[option](params);
        });
    };

    $.fn.radio.defaults = {
    };

    $.fn.radio.Constructor = Radio;

    var Checkbox = function (element, options) {
        this.element = $(element);

        this.element.find("input[type=checkbox]:checked").parent("label").addClass("checked");

        this.element.find("input[type=checkbox]").on('change', $.proxy(this.change, this));

        //默认值
        if (this.element.attr("data-defaultval"))
            this.setValue(this.element.attr("data-defaultval"));

        //只读
        if (this.element.attr("disabled") == "disabled")
            this.element.find("input[type=checkbox]").prop("disabled", true);
    };

    Checkbox.prototype = {
        constructor: Checkbox,

        change: function (e) {
            var target = $(e.target);
            if (target.prop("checked"))
                target.parent("label").addClass("checked");
            else
                target.parent("label").removeClass("checked");

            ////设置备注是否可用
            //this.setRemark(target);

            //隐藏控件赋值
            this.element.find("input[type='hidden']").val(this.getValue());
            this.element.attr("data-value", this.getValue());
            this.element.attr("data-text", this.getValuestr());
        },
        getValue: function () {
            var arr = [];
            this.element.find("input[type=checkbox]:checked").each(function () {
                arr.push($(this).val());
            });
            return arr.join(',');
        },
        getValuestr: function () {
            var arr = [];
            this.element.find("input[type=checkbox]:checked").each(function () {
                arr.push($(this).parent().text());
            });
            return arr.join(',');
        },
        setValue: function (value) {
            if (value == undefined || value == null || value == "") {
                this.element.find("input[type=checkbox]").each(function (e) {
                    $(this).prop("checked", false);
                    $(this).change();
                });
            }
            else {
                var arr = value.split(",");

                this.element.find("input[type=checkbox]").each(function (e) {
                    if ($.inArray($(this).val(), arr) >= 0 || $.inArray($(this).attr("data-value"), arr) >= 0) {
                        $(this).prop("checked", true);
                        $(this).parent("label").addClass("checked");
                        $(this).change();
                    }
                    else {
                        $(this).prop("checked", false);
                        $(this).parent("label").removeClass("checked");
                        $(this).change();
                    }
                });
            }

            //隐藏控件赋值
            this.element.find("input[type='hidden']").val(value);
        },
        setDisabled: function (isdisabled) {
            this.element.find("input[type=radio]").attr("disabled", isdisabled);
        }
    };

    $.fn.checkbox = function (option, params) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('checkbox'),
				options = typeof option === 'object' && option;
            if (!data) {
                $this.data('checkbox', (data = new Checkbox(this, $.extend({}, $.fn.checkbox.defaults, options))));
            }
            if (typeof option === 'string') data[option](params);
        });
    };

    $.fn.checkbox.defaults = {
    };

    $.fn.checkbox.Constructor = Checkbox;


    var WYUpload = function (element, options) {
        this.element = $(element);
        var $element = $(element);
        var $progress = $(element).find(".upload-progress");
        var $filename = $(element).find(".upload-filename");
        var $fileurl = $(element).find("input[type=hidden]");

        var defaults = {
            url: '/Public/UploadFile/',
            dataType: 'json',
            maxFileSize: 5242880,   //默认5M
            formData: {
                path: window.location.href,
                allowex: '*'
            },
            submit: function () {

            },
            complete: function (e, data) {
                if ($progress) $progress.html("");

                var ret = data.result;
                if (ret) {
                    if (ret.Ret == "1") {
                        $.messager.alert('错误', '文件上传失败！' + ret.Msg, 'error');
                    } else {
                        $element.attr("data-filename", ret.Filename);
                        $element.attr("data-fileurl", ret.Fileurl);
                        if ($filename) $filename.html(ret.Filename);
                        if ($fileurl) $fileurl.val(ret.Fileurl);
                    }
                }
            },
            done: function (e, data) {
                if ($progress) $progress.html("");

                var ret = data.result;
                if (ret.Ret == "1") {
                    $.messager.alert('错误', '文件上传失败！' + ret.Msg, 'error');
                } else {
                    $element.attr("data-filename", ret.Filename);
                    $element.attr("data-fileurl", ret.Fileurl);
                    if ($filename) $filename.html(ret.Filename);
                    if ($fileurl) $fileurl.val(ret.Fileurl);
                }
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                if ($progress) $progress.html(progress + '%');
            },
            fail: function (xhr, ajaxOptions, thrownError) {
                $.messager.alert('错误', '文件上传失败！', 'error');
            }
        };


        if (this.element.attr("data-filepath")) {
            defaults.formData.path = this.element.attr("data-filepath");
        }
        if (this.element.attr("data-allowex")) {
            defaults.formData.allowex = this.element.attr("data-allowex");
        }
        if (this.element.attr("data-maxfilesize")) {
            defaults.maxFileSize = this.element.attr("data-maxfilesize");
        }
        $.extend(defaults, options);
        this.element.find("[type=file]").fileupload(defaults);
    };

    WYUpload.prototype = {
        constructor: WYUpload,
        setValue: function (value) {
            this.element.attr("data-fileurl", value);
            this.element.find("input[type=hidden]").val(value);
        },
        setDisabled: function (isdisabled) {
            this.element.find(".btn").attr("disabled", isdisabled);
            this.element.find("input[type=file]").attr("disabled", isdisabled);
        }
    };

    $.fn.wyupload = function (option, params) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('wyupload'),
				options = typeof option === 'object' && option;
            if (!data) {
                $this.data('wyupload', (data = new WYUpload(this, $.extend({}, $.fn.wyupload.defaults, options))));
            }
            if (typeof option === 'string') data[option](params);
        });
    };

    $.fn.wyupload.defaults = {
    };

    $.fn.wyupload.Constructor = WYUpload;




    //时间控件
    var DateYMD = function (element, options) {
        var defaults = {
            minYear: 1900,
            maxYear: 2099,
            yearUK: '',
            monthUK: '',
            dayUK: '',
            format: 'yyyy-MM-dd',
            separtor: '-'
        };
        this.defaults = defaults;
        //Extends out defaults options with those privided 扩展我们默认的设置
        $.extend(defaults, options);

        this.element = $(element);

        try {
            if (this.element.attr("data-options") != undefined) {
                eval("var opt = " + this.element.attr("data-options") + ";");
                $.extend(defaults, opt);
            }
        } catch (e) { }

        var $year = this.element.find(".year");
        var $month = this.element.find(".month");
        var $day = this.element.find(".day");
        //初始化
        // 添加空白项
        $year.append('<option></option>');
        $month.append('<option></option>');
        $day.append('<option></option>');

        //判断是否支持NK
        if (defaults.yearUK != "") {
            $year.append('<option>' + defaults.yearUK + '</option>');
        }
        if (defaults.monthUK != "") {
            $month.append('<option>' + defaults.monthUK + '</option>');
        }
        if (defaults.dayUK != "") {
            $day.append('<option>' + defaults.dayUK + '</option>');
        }
        //初始化年份（最大年份和最小年份）
        for (var i = defaults.minYear; i <= defaults.maxYear; i++) {
            $year.append('<option>' + i + '</option>');
        }
        //初始化月份
        for (var i = 1; i <= 12; i++) {
            $month.append('<option>' + i + '</option>');
        }
        //初始化日期
        for (var i = 1; i <= 31; i++) {
            $day.append('<option>' + i + '</option>');
        }

        //年月日的改动
        $year.on('change', $.proxy(this.change, this));
        $month.on('change', $.proxy(this.change, this));
        $day.on('change', $.proxy(this.change, this));

    };
    DateYMD.prototype = {
        constructor: DateYMD,
        change: function (e) {
            var $year = this.element.find(".year");
            var $month = this.element.find(".month");
            var $day = this.element.find(".day");
            var year = $year.val();
            var month = $month.val();
            var day = $day.val();
            var target = $(e.target);
            var d = 1;
            var dayUK = this.defaults.dayUK;
            //日期天数
            function daytime(d) {
                $day.empty();
                $day.append('<option></option>');
                if (0 == year % 4 && (year % 100 != 0 || year % 400 == 0)) {
                    if (month == 2) {
                        for (var i = 1; i <= 29 ; i++) {
                            $day.append('<option>' + i + '</option>');
                        }
                    }
                    else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
                        for (var i = 1; i <= 31; i++) {
                            $day.append('<option>' + i + '</option>');
                        }
                    }
                    else {
                        for (var i = 1; i <= 30 ; i++) {
                            $day.append('<option>' + i + '</option>');
                        }
                    }
                }
                else if (month == 2) {
                    for (var i = 1; i <= 28 ; i++) {
                        $day.append('<option>' + i + '</option>');
                    }
                }
                else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
                    for (var i = 1; i <= 31; i++) {
                        $day.append('<option>' + i + '</option>');
                    }
                }
                else {
                    for (var i = 1; i <= 30 ; i++) {
                        $day.append('<option>' + i + '</option>');
                    }
                }
                if (dayUK != "") {
                    $day.append('<option>' + dayUK + '</option>');
                }
                $day.val(d);
                return this;
            };
            //月份变化
            if (target.attr("class") == $month.attr("class")) {
              var temp=  $day.val();
              if (($month.val() == 4 || $month.val() == 6 || $month.val() == 9 || $month.val() == 11) && $day.val() == 31)
              {
                  temp = 30;
              }
              if ((0 == year % 4 && (year % 100 != 0 || year % 400 == 0)) && $month.val() == 2 && $day.val()>29) {
                  
                  temp = 29;
              }
              if ( $month.val() == 2 && $day.val() > 28) {

                  temp = 28;
              }
              daytime(temp);
            }
            //年份变化
            if (target.attr("class") == $year.attr("class")) {
                var temp = $day.val();
                if (($month.val() == 4 || $month.val() == 6 || $month.val() == 9 || $month.val() == 11) && $day.val() == 31) {
                    temp = 30;
                }
                if ((0 == year % 4 && (year % 100 != 0 || year % 400 == 0)) && $month.val() == 2 && $day.val() > 29) {

                    temp = 29;
                }
                if ($month.val() == 2 && $day.val() > 28) {

                    temp = 28;
                }
                daytime(temp);
            }

            var val = $year.val() + this.defaults.separtor + $month.val() + this.defaults.separtor + $day.val();
            this.element.find("input[type='hidden']").val(val);
        },
        //取值
        getValue: function () {
            var $year = this.element.find(".year");
            var $month = this.element.find(".month");
            var $day = this.element.find(".day");
            return ($year.val() + this.defaults.separtor + $month.val() + this.defaults.separtor + $day.val()).toString();
            this.element.find("input[type='hidden']").val(($year.val() + this.defaults.separtor + $month.val() + this.defaults.separtor + $day.val()).toString());
        },
        //设置值
        setValue: function (value) {
            var $year = this.element.find(".year");
            var $month = this.element.find(".month");
            var $day = this.element.find(".day");
            if (value == undefined || value == "") {
                $year.empty();
                $month.empty();
                $day.empty();
            } else {
                try {
                    var date = value.split(this.defaults.separtor);
                    if (date.length > 0) $year.val(date[0]);
                    if (date.length > 1) $month.val(date[1]);
                    if (date.length > 2) $day.val(date[2]);
                } catch (e) { }
            }
            this.element.find("input[type='hidden']").val(value);
        },
        setDisabled: function (isdisabled) {
            this.element.find(".year").attr("disabled", isdisabled);
            this.element.find(".month").attr("disabled", isdisabled);
            this.element.find(".day").attr("disabled", isdisabled);
        }
    };

    $.fn.dateymd = function (option, params) {
        return this.each(function () {
            var $this = $(this),
                data = $this.data('dateymd'),
                options = typeof option === 'object' && option;
            if (!data) {
                $this.data('dateymd', (data = new DateYMD(this, $.extend({}, $.fn.dateymd.defaults, options))));
            }
            if (typeof option === 'string') data[option](params);
        });
    };

    $.fn.dateymd.Constructor = DateYMD;


}(window.jQuery);

