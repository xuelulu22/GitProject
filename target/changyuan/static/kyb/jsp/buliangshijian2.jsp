<!DOCTYPE html>
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="static/kyb/css/bootstrap.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/bootstrap-responsive.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/stilearn.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/stilearn-responsive.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/stilearn-helper.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/stilearn-icon.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/colorpicker.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/font-awesome.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/animate.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/uniform.default.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/stilearn-rewrite.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/datepicker.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/bootstrap-wysihtml5.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css"
	href="static/kyb/css/easyui(1).css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css" href="static/kyb/css/icon.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<!-- crabyter -->
<link rel="stylesheet" type="text/css"
	href="static/kyb/css/style(1).css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css" href="static/kyb/css/Site(1).css"
	style="font-family: &#39;Microsoft Yahei&#39;;">

<link href="static/kyb/css/jquery-ui-custom-1.11.2.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/jquery-ui-wy.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/layer.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">

<link href="static/kyb/css/iconfont.css" rel="stylesheet"
	style="font-family: &#39;Microsoft Yahei&#39;;">

<link rel="stylesheet" type="text/css" href="static/kyb/css/crf.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css"
	href="static/kyb/css/crf-input.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css"
	href="static/kyb/css/jquery.fileupload.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">

<link rel="stylesheet" href="static/kyb/css/layer.css"
	id="layui_layer_skinlayercss"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" href="static/kyb/css/layer.ext.css"
	id="layui_layer_skinlayerextcss">
</head>

<body class="dialog"
	style="background: #FFFFFF url(&#39;/content/stilearn/img/noise.png&#39;);">
	<div class="dialog-content" style="margin: 0;">
		<form action="" class="form-horizontal form-inline crfform"
			id="inputform" method="post"
			style="min-width: 840px; margin: 0; padding: 0;"
			novalidate="novalidate">
			<input name="__RequestVerificationToken" type="hidden"
				value="hwk8s6AJ2uBDmwvAEj9S5gUdcHMCkz24Oos2dMKs223yW-z54nyHSLi60wDwlfpsJ7gU9xRyYJlpU4QjEKZjrc9pgAnrFPp5tWuMqUrk8pg1">
			<div class="crftablerow" data-fieldid="1180910" data-id="73388"
				id="F001272" style="width: 840px">
				<div class="crfgroup-emptybox">
					<table border="0" cellpadding="3" cellspacing="0"
						class="table-crfform">
						<tbody>
							<tr>
								<td class="td-control" colspan="48"
									style="text-align: left; width: 800px;"><div id="F001273"
										class="crfgroup-box" data-elementtype="group"
										data-id="1180911">
										<div class="crfgroup-title"
											style="text-align: left; font-size: 16px;">
											<span class="remark-label"
												style="text-align: left; font-size: 16px;">不良事件</span>
										</div>
										<div style="display: none">
											<input class="form-control crfform-input crffield"
												data-fieldcode="F000079" data-fieldid="Ae_decode"
												data-fieldkind="0" data-id="1180918" data-recordid="304145"
												data-tableid="T_chem_ctcae" id="F000079" name="F000079"
												type="hidden" value="">
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">编号</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000075" data-fieldid="Ae_spid"
														data-fieldkind="0" data-id="1180912"
														data-recordid="304145" data-tableid="T_chem_ctcae"
														id="F000075" name="F000075" value="003"
														style="text-align: left; font-size: 12px; width: 113px;"
														type="text" value=""></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">分类</span></td>
													<td class="td-control" colspan="25"
														style="text-align: left; width: 416px;"><div
															class="radio-container" data-form="radio" id="F000947">
															<label class="radio"><input data-value="1"
																id="F000947_1773672" name="F000947_items"
																type="checkbox" value="1">药物不良反应</label><label
																class="radio"><input data-value="2"
																id="F000947_1773673" name="F000947_items" checked="checked"
																type="checkbox" value="2">放疗并发症</label><label
																class="radio"><input data-value="3"
																id="F000947_1773674" name="F000947_items"
																type="checkbox" value="3">手术并发症</label><input
																class="form-control crfform-input crffield"
																data-fieldcode="F000947"
																data-fieldid="Ae_aeclassification" data-fieldkind="1"
																data-id="1180924" data-recordid="304145"
																data-tableid="T_chem_ctcae" data-textfield="value"
																id="F000947_val" name="F000947_val"
																style="text-align: left; font-size: 12px; width: 396px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="3"
														style="text-align: right; width: 50px;"><span
														style="text-align: right; font-size: 12px;">急性期</span></td>
													<td class="td-label" colspan="5"
														style="text-align: right; width: 83px;"><span
														style="text-align: right; font-size: 12px;">器官</span></td>
													<td class="td-control" colspan="5"
														style="text-align: left; width: 83px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;皮肤&quot;,&quot;text&quot;:&quot;皮肤&quot;},{&quot;value&quot;:&quot;粘膜&quot;,&quot;text&quot;:&quot;粘膜&quot;},{&quot;value&quot;:&quot;眼&quot;,&quot;text&quot;:&quot;眼&quot;},{&quot;value&quot;:&quot;耳&quot;,&quot;text&quot;:&quot;耳&quot;},{&quot;value&quot;:&quot;唾液腺&quot;,&quot;text&quot;:&quot;唾液腺&quot;},{&quot;value&quot;:&quot;咽和食管&quot;,&quot;text&quot;:&quot;咽和食管&quot;},{&quot;value&quot;:&quot;喉&quot;,&quot;text&quot;:&quot;喉&quot;},{&quot;value&quot;:&quot;上消化道&quot;,&quot;text&quot;:&quot;上消化道&quot;},{&quot;value&quot;:&quot;下消化道&quot;,&quot;text&quot;:&quot;下消化道&quot;},{&quot;value&quot;:&quot;肺&quot;,&quot;text&quot;:&quot;肺&quot;},{&quot;value&quot;:&quot;生殖泌尿&quot;,&quot;text&quot;:&quot;生殖泌尿&quot;},{&quot;value&quot;:&quot;心脏&quot;,&quot;text&quot;:&quot;心脏&quot;},{&quot;value&quot;:&quot;中枢神经系统&quot;,&quot;text&quot;:&quot;中枢神经系统&quot;},{&quot;value&quot;:&quot;白细胞计数&quot;,&quot;text&quot;:&quot;白细胞计数&quot;},{&quot;value&quot;:&quot;血小板计数&quot;,&quot;text&quot;:&quot;血小板计数&quot;},{&quot;value&quot;:&quot;中性粒细胞计数&quot;,&quot;text&quot;:&quot;中性粒细胞计数&quot;},{&quot;value&quot;:&quot;血红蛋白&quot;,&quot;text&quot;:&quot;血红蛋白&quot;},{&quot;value&quot;:&quot;红细胞压积&quot;,&quot;text&quot;:&quot;红细胞压积&quot;}]"
																data-fieldcode="F001615" data-fieldid="Ae_bodysystem"
																data-fieldkind="0" data-form="wycombo" data-id="1180930"
																data-itemsource="0" data-recordid="304145"
																data-tableid="T_chem_ctcae" data-textfield="text"
																data-value="" id="F001615" name="F001615"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 53px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 100px;"><span
														style="text-align: right; font-size: 12px;">RTOG急性期分级</span></td>
													<td class="td-control" colspan="20"
														style="text-align: left; width: 333px;"><div
															class="radio-container" data-form="radio" id="F001616">
															<label class="radio"><input data-value="0"
																id="F001616_1774477" name="F001616_items"  checked="checked"
																type="checkbox" value="0">急性放射性损伤0级</label><label
																class="radio"><input data-value="1"
																id="F001616_1774478" name="F001616_items"
																type="checkbox" value="1">急性放射性损伤1级</label><label
																class="radio"><input data-value="2"
																id="F001616_1774479" name="F001616_items"
																type="checkbox" value="2">急性放射性损伤2级</label><label
																class="radio"><input data-value="3"
																id="F001616_1774480" name="F001616_items"
																type="checkbox" value="3">急性放射性损伤3级</label><label
																class="radio"><input data-value="4"
																id="F001616_1774481" name="F001616_items"
																type="checkbox" value="4">急性放射性损伤4级</label><label
																class="radio"><input data-value="5"
																id="F001616_1774482" name="F001616_items"
																type="checkbox" value="5">急性放射性损伤5级</label><input
																class="form-control crfform-input crffield"
																data-fieldcode="F001616" data-fieldid="Ae_rtog"
																data-fieldkind="1" data-id="1180931"
																data-recordid="304145" data-tableid="T_chem_ctcae"
																data-textfield="value" id="F001616_val"
																name="F001616_val"
																style="text-align: left; font-size: 12px; width: 313px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="3"
														style="text-align: right; width: 50px;"><span
														style="text-align: right; font-size: 12px;">晚期</span></td>
													<td class="td-label" colspan="5"
														style="text-align: right; width: 83px;"><span
														style="text-align: right; font-size: 12px;">器官</span></td>
													<td class="td-control" colspan="5"
														style="text-align: left; width: 83px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;皮肤&quot;,&quot;text&quot;:&quot;皮肤&quot;},{&quot;value&quot;:&quot;皮下组织&quot;,&quot;text&quot;:&quot;皮下组织&quot;},{&quot;value&quot;:&quot;粘膜&quot;,&quot;text&quot;:&quot;粘膜&quot;},{&quot;value&quot;:&quot;唾液腺&quot;,&quot;text&quot;:&quot;唾液腺&quot;},{&quot;value&quot;:&quot;脊髓&quot;,&quot;text&quot;:&quot;脊髓&quot;},{&quot;value&quot;:&quot;脑&quot;,&quot;text&quot;:&quot;脑&quot;},{&quot;value&quot;:&quot;眼&quot;,&quot;text&quot;:&quot;眼&quot;},{&quot;value&quot;:&quot;喉&quot;,&quot;text&quot;:&quot;喉&quot;},{&quot;value&quot;:&quot;肺&quot;,&quot;text&quot;:&quot;肺&quot;},{&quot;value&quot;:&quot;心&quot;,&quot;text&quot;:&quot;心&quot;},{&quot;value&quot;:&quot;食管&quot;,&quot;text&quot;:&quot;食管&quot;},{&quot;value&quot;:&quot;小/大肠&quot;,&quot;text&quot;:&quot;小/大肠&quot;},{&quot;value&quot;:&quot;肝&quot;,&quot;text&quot;:&quot;肝&quot;},{&quot;value&quot;:&quot;肾&quot;,&quot;text&quot;:&quot;肾&quot;},{&quot;value&quot;:&quot;膀胱&quot;,&quot;text&quot;:&quot;膀胱&quot;},{&quot;value&quot;:&quot;骨&quot;,&quot;text&quot;:&quot;骨&quot;},{&quot;value&quot;:&quot;关节&quot;,&quot;text&quot;:&quot;关节&quot;}]"
																data-fieldcode="F001619"
																data-fieldid="Ae_thesecondofbodysystem"
																data-fieldkind="1" data-form="wycombo" data-id="1180934"
																data-itemsource="0" data-recordid="304145"
																data-tableid="T_chem_ctcae" data-textfield="text"
																data-value="" id="F001619" name="F001619"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 53px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 100px;"><span
														style="text-align: right; font-size: 12px;">RTOG/EORTC晚期分级</span></td>
													<td class="td-control" colspan="20"
														style="text-align: left; width: 333px;"><div
															class="radio-container" data-form="radio" id="F001620">
															<label class="radio"><input data-value="0"
																id="F001620_1774500" name="F001620_items"
																type="checkbox" value="0">后期放射性损伤0级</label><label
																class="radio"><input data-value="1"
																id="F001620_1774501" name="F001620_items"   checked="checked"
																type="checkbox" value="1">后期放射性损伤1级</label><label
																class="radio"><input data-value="2"
																id="F001620_1774502" name="F001620_items"
																type="checkbox" value="2">后期放射性损伤2级</label><label
																class="radio"><input data-value="3"
																id="F001620_1774503" name="F001620_items"
																type="checkbox" value="3">后期放射性损伤3级</label><label
																class="radio"><input data-value="4"
																id="F001620_1774504" name="F001620_items"
																type="checkbox" value="4">后期放射性损伤4级</label><label
																class="radio"><input data-value="5"
																id="F001620_1774505" name="F001620_items"
																type="checkbox" value="5">后期放射性损伤5级</label><input
																class="form-control crfform-input crffield"
																data-fieldcode="F001620" data-fieldid="Ae_rtogeortc"
																data-fieldkind="1" data-id="1180935"
																data-recordid="304145" data-tableid="T_chem_ctcae"
																data-textfield="value" id="F001620_val"
																name="F001620_val"
																style="text-align: left; font-size: 12px; width: 313px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">不良事件名称</span></td>
													<td class="td-control" colspan="14"
														style="text-align: left; width: 233px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																data-fieldcode="F000076" data-fieldid="Ae_name"
																data-fieldkind="0" data-form="wycombo" data-id="1180914"
																data-itemsource="2" value="放射性损伤二季"
																data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																data-recordid="304145" data-tableid="T_chem_ctcae"
																data-textfield="text" data-url="/Book/SearchCtcaeJson"
																data-value="" id="F000076" name="F000076"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 203px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">开始日期</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><div
															class="input-append date datepicker"
															data-date-autoclose="true" data-date-format="yyyy-mm-dd"
															data-form="datepicker">
															<input class="form-control crfform-input crffield"
																data-checkrule="true" data-fieldcode="F000077"
																data-fieldid="Ae_startdate" data-fieldkind="0"
																data-id="1180916" data-recordid="304145" value="2016-5-15"
																data-tableid="T_chem_ctcae" id="F000077" name="F000077"
																style="text-align: left; font-size: 12px; width: 86px;"
																type="text" value=""><span class="add-on"><i
																class="icofont-calendar"></i></span>
														</div></td>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">结束日期</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><div
															class="input-append date datepicker"
															data-date-autoclose="true" data-date-format="yyyy-mm-dd"
															data-form="datepicker"> 
															<input class="form-control crfform-input crffield"
																data-checkrule="true" data-fieldcode="F000078" value="2016-5-15"
																data-fieldid="Ae_enddate" data-fieldkind="0"
																data-id="1180917" data-recordid="304145"
																data-tableid="T_chem_ctcae" id="F000078" name="F000078"
																style="text-align: left; font-size: 12px; width: 86px;"
																type="text" value=""><span class="add-on"><i
																class="icofont-calendar"></i></span>
														</div></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">等级</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000080" data-fieldid="Ae_grade"
														data-fieldkind="0" data-id="1180919" data-itemsource="0"
														data-recordid="304145" data-tableid="T_chem_ctcae"
														data-textfield="value" id="F000080" name="F000080"
														style="text-align: left; font-size: 12px; width: 127px;"><option
																title=""></option>
															<option value="0" title="0级" >0级</option>
															<option value="1" title="1级">1级</option>
															<option value="2" title="2级" selected="selected">2级</option>
															<option value="3" title="3级">3级</option>
															<option value="4" title="4级">4级</option>
															<option value="5" title="5级">5级</option></select></td>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">与治疗的关联性</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000526" data-fieldid="Ae_relation"
														data-fieldkind="0" data-id="1180923" data-itemsource="0"
														data-recordid="304145" data-tableid="T_chem_ctcae"
														data-textfield="value" id="F000526" name="F000526"
														style="text-align: left; font-size: 12px; width: 127px;"><option
																title=""></option>
															<option value="1" title="肯定有关">肯定有关</option>
															<option value="2" title="很可能有关" selected="selected">很可能有关</option>
															<option value="3" title="可能有关">可能有关</option>
															<option value="4" title="可能无关">可能无关</option>
															<option value="5" title="肯定无关">肯定无关</option>
															<option value="6" title="不确定">不确定</option></select></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">处理方法</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;停止用药&quot;,&quot;text&quot;:&quot;停止用药&quot;},{&quot;value&quot;:&quot;剂量减少&quot;,&quot;text&quot;:&quot;剂量减少&quot;},{&quot;value&quot;:&quot;剂量增加&quot;,&quot;text&quot;:&quot;剂量增加&quot;},{&quot;value&quot;:&quot;剂量不变&quot;,&quot;text&quot;:&quot;剂量不变&quot;},{&quot;value&quot;:&quot;未知&quot;,&quot;text&quot;:&quot;未知&quot;},{&quot;value&quot;:&quot;药物中断&quot;,&quot;text&quot;:&quot;药物中断&quot;},{&quot;value&quot;:&quot;不适用&quot;,&quot;text&quot;:&quot;不适用&quot;},{&quot;value&quot;:&quot;其它&quot;,&quot;text&quot;:&quot;其它&quot;}]"
																data-fieldcode="F000082" data-fieldid="Ae_action"
																data-fieldkind="0" data-form="wycombo" data-id="1180920"
																data-itemsource="0" data-recordid="304145"
																data-tableid="T_chem_ctcae" data-textfield="text"
																data-value="" id="F000082" name="F000082" value="赔偿"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 103px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">转归</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 133px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000083" data-fieldid="Ae_outcome"
														data-fieldkind="0" data-id="1180921" data-itemsource="0"
														data-recordid="304145" data-tableid="T_chem_ctcae"
														data-textfield="value" id="F000083" name="F000083"
														style="text-align: left; font-size: 12px; width: 127px;"><option
																title=""></option>
															<option value="1" title="消失" selected="selected">消失</option>
															<option value="2" title="改善">改善</option>
															<option value="3" title="无改善">无改善</option>
															<option value="4" title="加重">加重</option>
															<option value="c3" title="留有后遗症">留有后遗症</option>
															<option value="c5" title="死亡">死亡</option>
															<option value="c6" title="未知">未知</option></select></td>
												</tr>
												<tr>
													<td colspan="48" style="width: 800px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 116px;"><span
														style="text-align: right; font-size: 12px;">实际不良反应描述</span></td>
													<td class="td-control" colspan="22"
														style="text-align: left; width: 366px;"><textarea
															class="form-control crfform-input crffield"
															data-fieldcode="F000233" data-fieldid="Ae_description"
															data-fieldkind="0" data-id="1180922"
															data-recordid="304145" data-tableid="T_chem_ctcae"
															id="F000233" name="F000233" rows="3"
															style="text-align: left; font-size: 12px; width: 346px;"
															title=""></textarea></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 16px">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</form>
		<br> <br>
	</div>
</body>
</html>