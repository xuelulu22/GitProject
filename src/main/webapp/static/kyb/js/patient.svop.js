var svopdata = null;
var canvasHeight = 320;
var canvasWidth = 1000;
var canvasSvopHeight = 120;

var svopTop = 0;
var svopHeight = 100;
var labelTop = 100;
var labelHeight = 20;
var inspectTop = 120;
var inspectHeight = 200;
var iconWidth = 32;
var iconHeight = 84;

var image_hl = null;
var image_fl = null;
var image_ss = null;
var image_pg = null;
var image_sf = null;
var image_sg = null;

$(document).ready(function () {
    var $svop = $("#svop");

    image_hl = new Image();
    image_hl.src = "/content/images/svop/icon_hl.png";
    image_fl = new Image();
    image_fl.src = "/content/images/svop/icon_fl.png";
    image_ss = new Image();
    image_ss.src = "/content/images/svop/icon_ss.png";
    image_pg = new Image();
    image_pg.src = "/content/images/svop/icon_pg.png";
    image_sf = new Image();
    image_sf.src = "/content/images/svop/icon_sf.png";
    image_sg = new Image();
    image_sg.src = "/content/images/svop/icon_sg.png";

    if ($svop.size()) {
	    //调整浏览器大小时
        $(window).resize(function () {
            //initSVOPLayout();
	        redraw();
	    });

	    //页面初始化时
	    setTimeout(function () {
	        //initSVOPLayout();
	        redraw();
	    }, 10);

        //显示SVOP
	    refreshSVOP();

	    //SVOP设置
	    $svop.find("#btnsvopoption").click(function (e) {
	        e.preventDefault();
	        dlg.setSize(600, 450);
	        dlg.setURL("SVOP设置", "/Study/Setting/SVOPOptions/" + $("#Study_id").val() + "?callback=refreshSVOP");
	        dlg.show();
	    });
	}
});

function refreshSVOP() {
    $.ajax({
        type: "post",
        url: "/Public/GetSVOPData",
        data: {
            id: $("#Study_patient_id").val()
        },
        success: function (data) {
            svopdata = data;
            //initSVOPLayout();
            initCanvas();
        },
        error: function (xhr, ajaxOptions, thrownError) {

            $.messager.alert("错误", $(xhr.responseText).text(), "crabyter_error");
            //showError(xhr);
        }
    });
}

var currentPoint = null;
var temp_point_id = 0;
var currentEvent = null;
var temp_event_id = null;

function initCanvas() {
    if ($("#svop_canvas").size() == 0) {
        return;
    }

    var canvas = $("#svop_canvas").get(0);
    var $svop = $("#svop").get(0);

    canvas.onclick = function (event) {
        layer.closeAll();
        if (currentPoint != null) {
        }
        if (currentEvent != null) {
            dlg.setSize(900, 600);
            dlg.setURL("查看/编辑", "/Study/Patient/CrfInputEnter/" + currentEvent.Id);
            dlg.show({ maximizable: true });
        }
    }
    canvas.onmousemove = function (event) {
        var x = event.pageX - 22;
        var y = event.pageY - $svop.offsetTop - canvas.offsetTop;

        if (svopdata == null || svopdata == undefined) {
            return;
        }
        //if (svopdata.Inspects == null || svopdata.Inspects == undefined) {
        //    return;
        //}
        //if (svopdata.Inspects.length == 0) {
        //    return;
        //}

        currentPoint = null;
        var layerColor = "";
        $.each(svopdata.Inspects, function (index, itemdata) {
            $.each(itemdata.Datas, function (i, data) {
                var x1 = getPointX(data.X) - 5;
                var x2 = getPointX(data.X) + 5;
                var y1 = getPointY(data.Y) - 5;
                var y2 = getPointY(data.Y) + 5;

                if (x1 < x && x2 > x && y1 < y && y2 > y) {
                    if (currentPoint != null) {
                        currentPoint.Active = "0";
                    }
                    data.Active = "1";
                    currentPoint = data;
                    layerColor = itemdata.Linecolor;
                } else {
                    data.Active = "0";
                }
            });
        });

        currentEvent = null;
        $.each(svopdata.Events, function (index, itemdata) {
            var x1, x2, y1, y2;
            if (itemdata.Eventtype == "10") {
                x1 = getPointX(itemdata.Left);
                x2 = x1 + getEventWidth(itemdata.Width);
                y1 = getLabelY(); 
                y2 = y1 + getLabelHeight();
            } else {
                x1 = getPointX(itemdata.Left) - iconWidth / 2;
                x2 = x1 + iconWidth;
                y1 = getEventIconY(itemdata); 
                y2 = y1 + iconHeight - 10;
            }

            //$(".patient-name").html(x1 + "," + x2 + "," + x + "," + y1 + "," + y2 + "," + y);

            if (x1 < x && x2 > x && y1 < y && y2 > y) {
                if (currentEvent != null) {
                    currentEvent.Active = "0";
                }
                itemdata.Active = "1";
                currentEvent = itemdata;
            } else {
                itemdata.Active = "0";
            }
        });

        redraw();

        if (currentPoint != null || currentEvent != null) {
            $("#svop_canvas").css("cursor", "pointer");
        } else {
            $("#svop_canvas").css("cursor", "default");
        }

        var $o = $("#point");
        if ($o.size() == 0) {
            $o = $("<div id='point' />");
            $o.css("position", "absolute");
            $o.css("cursor", "pointer");
            $o.appendTo($("#svop"));
        }

        if (currentPoint != null) {
            if (temp_point_id == 0 || currentPoint.Id != temp_point_id) {
                $o.css("width", 5);
                $o.css("height", 5);
                $o.css("left", getPointX(currentPoint.X));
                $o.css("top", getPointY(currentPoint.Y) + canvas.offsetTop - 5);
                $o.show();
                layer.tips(currentPoint.Desc, $o, {
                    tips: [1, layerColor]
                });
                temp_point_id = currentPoint.Id;
            }
        } else if (currentEvent != null) {
            if (temp_event_id == 0 || currentEvent.Id != temp_event_id) {
                if (currentEvent.Eventtype == "10") {
                    $o.css("width", 5);
                    $o.css("height", getLabelHeight());
                    $o.css("left", getPointX(currentEvent.Left));
                    $o.css("top", getLabelY() + canvas.offsetTop - 3);

                    $o.show();
                    layer.tips(currentEvent.Desc, $o, {
                        tips: [3, "#1EA8DD"]
                    });
                } else {
                    $o.css("width", 5);
                    $o.css("height", 70);
                    $o.css("left", getPointX(currentEvent.Left) + 5);
                    $o.css("top", getEventIconY(currentEvent) + canvas.offsetTop + 10);

                    $o.show();
                    layer.tips(currentEvent.Desc, $o, {
                        tips: [1, "#78BA32"]
                    });
                }
                temp_event_id = currentEvent.Id;
            }
        } else {
            $o.hide();
            temp_point_id = 0;
            temp_event_id = 0;
            layer.closeAll();
        }

    }

    redraw();
}

function redraw() {
    canvasWidth = $("#svop").width();

    var canvas = $("#svop_canvas").get(0);

    if (svopdata == null || svopdata == undefined) {
        return;
    }

    var bg = new Image();
    bg.src = "/content/images/inspect_bg.png";
    bg.onload = function () {
        canvas.width = canvasWidth;
        var ctx = canvas.getContext("2d");
        ctx.clearRect(0, 0, canvasWidth, canvasHeight);

        var ptrn = ctx.createPattern(bg, 'repeat');
        if (svopdata.Inspects == undefined || svopdata.Inspects.length == 0) {
            ctx.height = canvasHeight - inspectHeight;
            ctx.fillStyle = ptrn;
            ctx.fillRect(0, 0, canvasWidth, canvasHeight - inspectHeight);
            ctx.stroke();
        } else {
            ctx.height = canvasHeight;
            ctx.fillStyle = ptrn;
            ctx.fillRect(0, 0, canvasWidth, canvasHeight);
            ctx.stroke();
        }

        ctx.globalAlpha = 0.2;
        ctx.strokeStyle = "#ccc";
        ctx.fillStyle = "#ccc";
        ctx.font = "bold 30px Arial";
        ctx.fillText("SVOP", canvasWidth / 2 - 45, 30);
        ctx.globalAlpha = 1;
        ctx.stroke();

        drawSvopLabel(ctx);
        drawSvopEvents(ctx);
        drawInspect(ctx);
    };
}

function drawInspect(ctx) {
    //图例
    $.each(svopdata.Inspects, function (index, itemdata) {
        var x = canvasWidth - 80;
        var y = inspectTop + 10 + index * 20;

        ctx.beginPath();
        ctx.lineWidth = itemdata.Linewidth;
        ctx.strokeStyle = itemdata.Linecolor;

        ctx.moveTo(x - 15, y);
        ctx.lineTo(x + 15, y);

        ctx.closePath();
        ctx.fill();
        ctx.stroke();

        ctx.beginPath();
        ctx.lineWidth = itemdata.Linewidth;
        ctx.strokeStyle = itemdata.Linecolor;
        ctx.fillStyle = itemdata.Fillcolor;
        ctx.arc(x, y, 4, 0, Math.PI * 2, true);
        ctx.closePath();
        ctx.fill();
        ctx.stroke();
        ctx.save();

        ctx.font = "bold 10px Arial";
        ctx.fillText(itemdata.Name, x + 20, y + 4);
        ctx.stroke();
    });

    $.each(svopdata.Inspects, function (index, itemdata) {
        drawInspectItem(ctx, index, itemdata)
    });
}

function drawInspectItem(ctx, index, itemdata) {
    if (itemdata.Datas.length == 0) {
        return;
    }

    //连线
    ctx.beginPath();
    ctx.moveTo(getPointX(itemdata.Datas[0].X), getPointY(itemdata.Datas[0].Y));
    ctx.strokeStyle = itemdata.Linecolor;
    ctx.lineWidth = itemdata.Linewidth;

    $.each(itemdata.Datas, function (index, data) {
        ctx.lineTo(getPointX(data.X), getPointY(data.Y));
    });

    ctx.stroke();

    //画点
    $.each(itemdata.Datas, function (index, data) {
        ctx.beginPath();

        var raids = 3;
        if (data.Active == "1") {
            ctx.strokeStyle = itemdata.Linecolor;
            ctx.fillStyle = itemdata.Linecolor;
            raids = 5;
        } else {
            ctx.strokeStyle = itemdata.Linecolor;
            ctx.fillStyle = itemdata.Fillcolor;
            raids = 4;
        }

        ctx.arc(getPointX(data.X), getPointY(data.Y), raids, 0, Math.PI * 2, true);
        ctx.closePath();
        ctx.fill();
        ctx.stroke();
    });

    ctx.restore();
    ctx.save();
}

function drawSvopLabel(ctx) {
    ctx.fillStyle = "rgba(0,0,0,0.3)";
    ctx.strokeStyle = 'rgba(0,0,0,0.3)';
    ctx.fillRect(0, canvasSvopHeight - 20, canvasWidth, 20);
    ctx.stroke();

    if (svopdata.Events == null || svopdata.Events == undefined) {
        return;
    }

    $.each(svopdata.Events, function (index, itemdata) {
        if (itemdata.Eventtype == "10") {
            //访视
            var x = getPointX(itemdata.Left);
            var y = getLabelY();
            var width = getEventWidth(itemdata.Width);
            var height = getLabelHeight();

            if (itemdata.Active == "1") {
                ctx.fillStyle = "rgba(30,168,221,0.9)";
                ctx.strokeStyle = 'rgba(30,168,200,0.9)';
            } else {
                ctx.fillStyle = "rgba(30,168,221,0.5)";
                ctx.strokeStyle = 'rgba(30,168,200,0.5)';
            }

            ctx.fillRect(x, y, width, height);
            ctx.stroke();
            ctx.save();
        }
    });

    $.each(svopdata.Labels, function (index, labeldata) {
        var x = getPointX(labeldata.Left);

        ctx.strokeStyle = "#f0f0f0";
        ctx.fillStyle = "#f0f0f0";
        ctx.font = "italic 10px Arial";
        ctx.fillText(labeldata.Label, x, canvasSvopHeight - 6);
        ctx.stroke();
    });
}

function drawSvopEvents(ctx) {
    $.each(svopdata.Events, function (index, itemdata) {
        if (itemdata.Eventtype != "10") {
            var icon = getSvopIcon(itemdata.Eventtype);
            if (icon != null) {
                //访视
                var x = getPointX(itemdata.Left) - iconWidth / 2;
                var y = getEventIconY(itemdata);

                if (itemdata.Active == "1") {
                    ctx.globalAlpha = 1;
                } else {
                    //半透明效果
                    ctx.globalAlpha = 0.7;
                }

                if (icon.complete) {
                    ctx.drawImage(icon, x, y);
                    ctx.globalAlpha = 1;
                } else {
                    icon.onload = function () {
                        ctx.drawImage(icon, x, y);
                        ctx.globalAlpha = 1;
                    };
                }
            }
        }
    });
}

function getPointX(x) {
    return canvasWidth * x;
}

function getPointY(y) {
    return (inspectHeight - 20) * (1 - y) + 10 + inspectTop;
}

function getEventIconY(itemdata) {
    if (itemdata.Active == "1") {
        return canvasSvopHeight - 110;
    } else {
        return canvasSvopHeight - 100;
    }
}

function getEventWidth(width) {
    return canvasWidth * parseFloat(width);
}

function getLabelY() {
    return canvasSvopHeight - 20;
}

function getLabelHeight() {
    return 20;
}

function getSvopIcon(eventtype) {
    if (eventtype == "20")
    {
        return image_hl;
    } else if (eventtype == "21") {
        return image_fl;
    } else if (eventtype == "22") {
        return image_ss;
    } else if (eventtype == "30") {
        return image_pg;
    } else if (eventtype == "40") {
        return image_sf;
    } else if (eventtype == "90") {
        return image_sg;
    } else {
        return null;
    }
}
