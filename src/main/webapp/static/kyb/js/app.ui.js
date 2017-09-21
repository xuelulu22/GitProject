
//只支持页面上有一个div.layoutH,且里面只有一个datagrid
$(document).ready(function () {

    var initLayout = function ($content) {
        var iheight = $(window).height();

        $("[data-autosize=true]").each(function () {
            //$(document.body).css("overflow-y", "hidden");

            var top = $(this).offset().top;
            var paddingTop = parseInt($(this).css("padding-top"));
            var paddingBottom = parseInt($(this).css("padding-bottom"));
            //var marginTop = parseInt($(this).css("margin-top"));
            //var marginBottom = parseInt($(this).css("margin-bottom"));

            var height = iheight - top - paddingTop - paddingBottom;
            if ($(this).closest(".iframe-content").size() == 0) {
                height = height - 10;
            }
            if (height < 50) height = 50;

            $(this).css("height", height);
            
            if ($(this).hasClass("easyui-tabs")) {
                $(this).tabs("options").height = height;
                $(this).tabs("resize");
            }
            else {
                $(this).find(".easyui-layout").each(function () {
                    $(this).layout("resize");
                });

                $(this).find(".datagrid-f").each(function () {
                    $(this).datagrid("resize");
                });
            }
        });

        //$(".content-body").each(function () {
        //    var top = $(this).offset().top;
        //    var paddingTop = parseInt($(this).css("padding-top"));
        //    var paddingBottom = parseInt($(this).css("padding-top"));

        //    var height = iheight - top - paddingTop - paddingBottom;
        //    if (height < 50) height = 50;
        //    $(this).css("height", height);
        //});

        //if (!$content) $content = $("div.content:first");
        //var iContentH = $(window).height();

        //$content.find("[layoutH]").each(function (evt) {
        //    var $self = $(this);//datagrid所在的div，datagrid外面会包一层div[layoutH]
        //    var iLayoutH = parseInt($self.attr("layoutH"));
        //    //datagrid最小高度留个100，否则列标题、分页要都没了
        //    var iH = iContentH - iLayoutH > 100 ? iContentH - iLayoutH : 100;
        //    $self.height(iH);

        //    var relTableid = $self.attr("data-rel");
        //    var $datagrid = $($self.find("table#" + relTableid)[0]);
        //    $datagrid.datagrid("resize", { height: iH});
        //});
    };

    //调整浏览器大小时
    $(window).resize(function () {
        initLayout();
    });

    //页面初始化时
    setTimeout(function () {
        initLayout();
    }, 10);
});

