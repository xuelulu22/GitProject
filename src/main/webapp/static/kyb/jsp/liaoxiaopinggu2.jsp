<!DOCTYPE html>
<!-- saved from url=(0120)https://crabyter.sinyoo.net/Study/Patient/CrfInputRow/2644/73392/0?p=366336&f=1180955&fromid=0&v=2147565&callback=addRow -->
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
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
<head>

</head>

<body class="dialog"
	style="background: #FFFFFF url(&#39;/content/stilearn/img/noise.png&#39;);">
	<div class="dialog-content" style="margin: 0;">
		<form action="" class="form-horizontal form-inline crfform"
			id="inputform" method="post"
			style="min-width: 900px; margin: 0; padding: 0;"
			novalidate="novalidate">
			<input name="__RequestVerificationToken" type="hidden"
				value="DcGUMU3X4SL2Q5TfOfAdOew3fGMRFwMkOqPaYshDHqPU5E1o_Jso4GM3J2k1fZOxW0kob1pveQOBFNedJjNuwtGlj2Ii8gQ8q78fqkp4fTw1">
			<div class="crftablerow" data-fieldid="1180955" data-id="73392"
				id="F001563" style="width: 900px">
				<div class="crfgroup-emptybox">
					<table border="0" cellpadding="3" cellspacing="0"
						class="table-crfform">
						<tbody>
							<tr>
								<td class="td-control" colspan="36"
									style="text-align: left; width: 645px;"><div id="F001564"
										class="crfgroup-box" data-elementtype="group"
										data-id="1180956">
										<div class="crfgroup-title"
											style="text-align: left; font-size: 16px; font-weight: bold;">
											<span class="remark-label"
												style="text-align: left; font-size: 16px; font-weight: bold;">疗效评估</span>
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="color: #d44a4a; text-align: right; font-size: 12px; font-weight: bold;">是否基线</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><div
															class="radio-container" data-form="radio" id="F001565">
															<label class="radio"><input data-value="1"
																id="F001565_1774392" name="F001565_items"
																type="checkbox" value="1">是</label><label class="radio"><input
																data-value="0" id="F001565_1774393" name="F001565_items"
																type="checkbox" value="0">否</label><input checked="checked"
																class="form-control crfform-input crffield"
																data-fieldcode="F001565" data-fieldid="Rs_baseflag"
																data-fieldkind="0" data-id="1180957"
																data-recordid="304146" data-tableid="T_assessment_dtl"
																data-textfield="value" id="F001565_val"
																name="F001565_val"
																style="text-align: left; font-size: 12px; width: 123px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">评估日期</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><div
															class="input-append date datepicker"
															data-date-autoclose="true" data-date-format="yyyy-mm-dd"
															data-form="datepicker">
															<input class="form-control crfform-input crffield"
																data-fieldcode="F001567" value="2016-08-10"
																data-fieldid="Rs_evaluationdate" data-fieldkind="0"
																data-id="1180959" data-recordid="304146"
																data-tableid="T_assessment_dtl" id="F001567"
																name="F001567" readonly=""
																style="text-align: left; font-size: 12px; width: 96px;"
																type="text" value=""><span class="add-on"><i
																class="icofont-calendar"></i></span>
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="leftlabel td-label" colspan="4"
														style="text-align: left; width: 71px;"><span
														style="text-align: left; font-size: 13px; font-weight: bold;">靶病灶</span></td>
													<td class="td-label" colspan="3"
														style="text-align: right; width: 53px;"><span
														style="text-align: right; font-size: 12px;">检测方法</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;CT&quot;,&quot;text&quot;:&quot;CT&quot;},{&quot;value&quot;:&quot;增强CT&quot;,&quot;text&quot;:&quot;增强CT&quot;},{&quot;value&quot;:&quot;螺旋CT&quot;,&quot;text&quot;:&quot;螺旋CT&quot;},{&quot;value&quot;:&quot;MRI&quot;,&quot;text&quot;:&quot;MRI&quot;},{&quot;value&quot;:&quot;PET-CT&quot;,&quot;text&quot;:&quot;PET-CT&quot;},{&quot;value&quot;:&quot;X-Ray&quot;,&quot;text&quot;:&quot;X-Ray&quot;},{&quot;value&quot;:&quot;B超&quot;,&quot;text&quot;:&quot;B超&quot;},{&quot;value&quot;:&quot;内镜&quot;,&quot;text&quot;:&quot;内镜&quot;},{&quot;value&quot;:&quot;内镜超声&quot;,&quot;text&quot;:&quot;内镜超声&quot;},{&quot;value&quot;:&quot;组织学和/或细胞学检查&quot;,&quot;text&quot;:&quot;组织学和/或细胞学检查&quot;}]"
																data-fieldcode="F001570" data-fieldid="Rs_targetmethod"
																data-fieldkind="0" data-form="wycombo" data-id="1180962"
																data-itemsource="0" data-recordid="304146"
																data-tableid="T_assessment_dtl" data-textfield="text"
																data-value="" id="F001570" name="F001570" 
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 113px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
												</tr>
												<tr>
													<td class="td-control" colspan="24"
														style="text-align: left; width: 430px;"><div
															id="F001571" class="crftable-edit"
															data-allowdeldefault="1" data-defaultval="[]"
															data-elementtype="table" data-id="1180963"
															data-recordid="304147"
															data-tableid="T_assessment_lesions">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<td style="text-align: left; width: 35px">编号</td>
																		<td style="text-align: center; width: 35px">编号</td>
																		<td style="text-align: center; width: 232px">器官</td>
																		<td style="text-align: center; width: 89px">最长直径</td>
																		<td style="text-align: center; width: 71px">单位</td>
																		<td style="width: 30px">删除</td>
																	</tr>
																</thead>
																<tbody class="list-template hidden">
																	<tr>
																		<td style="text-align: left; width: 35px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="R000000"
																			name="R000000"
																			style="text-align: center; font-size: 12px;">编号</span></td>
																		<td style="text-align: center; width: 35px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001573" data-fieldid="Tu_lesionsno"
																			data-fieldkind="0" data-id="1180965"
																			data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="F001573"
																			name="F001573"
																			style="text-align: left; font-size: 12px; width: 15px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 232px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001574"
																					data-fieldid="Tu_organname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180966"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304147"
																					data-tableid="T_assessment_lesions"
																					data-textfield="text"
																					data-url="/Book/SearchOrganJson" data-value=""
																					id="F001574" name="F001574"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 185px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 89px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001575" data-fieldid="Tu_ld"
																			data-fieldkind="0" data-id="1180967"
																			data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="F001575"
																			name="F001575"
																			style="text-align: left; font-size: 12px; width: 69px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 71px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001576" data-fieldid="Tu_unit"
																			data-fieldkind="0" data-id="1180968"
																			data-itemsource="0" data-recordid="304147"
																			data-tableid="T_assessment_lesions"
																			data-textfield="text" id="F001576" name="F001576"
																			style="text-align: left; font-size: 12px; width: 65px;"><option
																					title=""></option>
																				<option value="mm" title="mm">mm</option>
																				<option value="cm" title="cm">cm</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-defaultval="1" data-fieldcode="F001572"
																			data-fieldid="Tu_lesionsasstype" data-fieldkind="0"
																			data-id="1180964" data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="F001572"
																			name="F001572" type="hidden" value="1"></td>
																	</tr>
																</tbody>
																<tbody class="list-data">
																	<tr data-id="0">
																		<td style="text-align: left; width: 35px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="R000000"
																			name="R000000"
																			style="text-align: center; font-size: 12px;">1</span></td>
																		<td style="text-align: center; width: 35px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001573" data-fieldid="Tu_lesionsno"
																			data-fieldkind="0" data-id="1180965"
																			data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="F001573_604"
																			name="F001573_604"
																			style="text-align: left; font-size: 12px; width: 15px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 232px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001574"
																					data-fieldid="Tu_organname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180966"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304147"
																					data-tableid="T_assessment_lesions"
																					data-textfield="text"
																					data-url="/Book/SearchOrganJson" data-value=""
																					id="F001574_604" name="F001574_604"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 185px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 89px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001575" data-fieldid="Tu_ld"
																			data-fieldkind="0" data-id="1180967"
																			data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="F001575_604"
																			name="F001575_604"
																			style="text-align: left; font-size: 12px; width: 69px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 71px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001576" data-fieldid="Tu_unit"
																			data-fieldkind="0" data-id="1180968"
																			data-itemsource="0" data-recordid="304147"
																			data-tableid="T_assessment_lesions"
																			data-textfield="text" id="F001576_604"
																			name="F001576_604"
																			style="text-align: left; font-size: 12px; width: 65px;"><option
																					title=""></option>
																				<option value="mm" title="mm">mm</option>
																				<option value="cm" title="cm">cm</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-defaultval="1" data-fieldcode="F001572"
																			data-fieldid="Tu_lesionsasstype" data-fieldkind="0"
																			data-id="1180964" data-recordid="304147"
																			data-tableid="T_assessment_lesions" id="F001572_604"
																			name="F001572_604" type="hidden" value="1"></td>
																	</tr>
																</tbody>
																<tbody class="list-deleted hidden"></tbody>
																<tbody>
																	<tr>
																		<td colspan="6" style="text-align: right;"><div
																				class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default getTresult">自动计算结果</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default getLastLesion">获取上次评估病灶</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default selectLesion">从检查病灶中选择</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default addRow">添加行</a>
																			</div></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="color: #e31b1b; text-align: right; font-size: 12px; font-weight: bold;">新病灶</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><div
															class="radio-container" data-form="radio" id="F001578">
															<label class="radio"><input data-value="0"
																id="F001578_1774433" name="F001578_items"
																type="checkbox" value="0">无</label><label class="radio"><input
																data-value="1" id="F001578_1774434" name="F001578_items"
																type="checkbox" value="1">有</label><input checked="checked"
																class="form-control crfform-input crffield"
																data-fieldcode="F001578" data-fieldid="Rs_newlesion"
																data-fieldkind="0" data-id="1180970"
																data-recordid="304146" data-tableid="T_assessment_dtl"
																data-textfield="value" id="F001578_val"
																name="F001578_val"
																style="text-align: left; font-size: 12px; width: 123px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="36" data-ref-fieldcode="F001578"
														data-ref-itemvalue="1" data-ref-type="show"
														style="display: none; width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="leftlabel td-label" colspan="4"
														data-ref-fieldcode="F001578" data-ref-itemvalue="1"
														data-ref-type="show"
														style="text-align: left; display: none; width: 71px;"><span
														style="text-align: left; font-size: 13px; font-weight: bold;">新病灶</span></td>
													<td class="td-label" colspan="3"
														data-ref-fieldcode="F001578" data-ref-itemvalue="1"
														data-ref-type="show"
														style="text-align: right; display: none; width: 53px;"><span
														style="text-align: right; font-size: 12px;">检测方法</span></td>
													<td class="td-control" colspan="8"
														data-ref-fieldcode="F001578" data-ref-itemvalue="1"
														data-ref-type="show"
														style="text-align: left; display: none; width: 143px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;CT&quot;,&quot;text&quot;:&quot;CT&quot;},{&quot;value&quot;:&quot;增强CT&quot;,&quot;text&quot;:&quot;增强CT&quot;},{&quot;value&quot;:&quot;螺旋CT&quot;,&quot;text&quot;:&quot;螺旋CT&quot;},{&quot;value&quot;:&quot;MRI&quot;,&quot;text&quot;:&quot;MRI&quot;},{&quot;value&quot;:&quot;PET-CT&quot;,&quot;text&quot;:&quot;PET-CT&quot;},{&quot;value&quot;:&quot;X-Ray&quot;,&quot;text&quot;:&quot;X-Ray&quot;},{&quot;value&quot;:&quot;B超&quot;,&quot;text&quot;:&quot;B超&quot;},{&quot;value&quot;:&quot;内镜&quot;,&quot;text&quot;:&quot;内镜&quot;},{&quot;value&quot;:&quot;内镜超声&quot;,&quot;text&quot;:&quot;内镜超声&quot;},{&quot;value&quot;:&quot;组织学和/或细胞学检查&quot;,&quot;text&quot;:&quot;组织学和/或细胞学检查&quot;}]"
																data-fieldcode="F001581"
																data-fieldid="Rs_newtargetlesionstestmethod"
																data-fieldkind="1" data-form="wycombo" data-id="1180973"
																data-itemsource="0" data-recordid="304146"
																data-tableid="T_assessment_dtl" data-textfield="text"
																data-value="" id="F001581" name="F001581"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 113px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
												</tr>
												<tr>
													<td class="td-control" colspan="24"
														data-ref-fieldcode="F001578" data-ref-itemvalue="1"
														data-ref-type="show"
														style="text-align: left; display: none; width: 430px;"><div
															id="F001582" class="crftable-edit"
															data-allowdeldefault="0" data-defaultval="[]"
															data-elementtype="table" data-id="1180974"
															data-recordid="304148"
															data-tableid="T_assessment_lesions">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<td style="text-align: left; width: 35px">编号</td>
																		<td style="text-align: center; width: 35px">编号</td>
																		<td style="text-align: center; width: 232px">新器官</td>
																		<td style="text-align: center; width: 89px">最长直径</td>
																		<td style="text-align: center; width: 71px">单位</td>
																		<td style="width: 30px">删除</td>
																	</tr>
																</thead>
																<tbody class="list-template hidden">
																	<tr>
																		<td style="text-align: left; width: 35px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304148"
																			data-tableid="T_assessment_lesions" id="R000000"
																			name="R000000"
																			style="text-align: center; font-size: 12px;">编号</span></td>
																		<td style="text-align: center; width: 35px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001584" data-fieldid="Tu_lesionsno"
																			data-fieldkind="0" data-id="1180976"
																			data-recordid="304148"
																			data-tableid="T_assessment_lesions" id="F001584"
																			name="F001584"
																			style="text-align: left; font-size: 12px; width: 15px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 232px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001585"
																					data-fieldid="Tu_organname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180977"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304148"
																					data-tableid="T_assessment_lesions"
																					data-textfield="text"
																					data-url="/Book/SearchOrganJson" data-value=""
																					id="F001585" name="F001585"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 185px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 89px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001586" data-fieldid="Tu_ld"
																			data-fieldkind="0" data-id="1180978"
																			data-recordid="304148"
																			data-tableid="T_assessment_lesions" id="F001586"
																			name="F001586"
																			style="text-align: left; font-size: 12px; width: 69px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 71px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001587" data-fieldid="Tu_unit"
																			data-fieldkind="0" data-id="1180979"
																			data-itemsource="0" data-recordid="304148"
																			data-tableid="T_assessment_lesions"
																			data-textfield="text" id="F001587" name="F001587"
																			style="text-align: left; font-size: 12px; width: 65px;"><option
																					title=""></option>
																				<option value="mm" title="mm">mm</option>
																				<option value="cm" title="cm">cm</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-defaultval="3" data-fieldcode="F001583"
																			data-fieldid="Tu_lesionsasstype" data-fieldkind="0"
																			data-id="1180975" data-recordid="304148"
																			data-tableid="T_assessment_lesions"
																			disabled="disabled" id="F001583" name="F001583"
																			type="hidden" value="3"></td>
																	</tr>
																</tbody>
																<tbody class="list-data">
																	<tr data-id="0">
																		<td style="text-align: left; width: 35px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304148"
																			data-tableid="T_assessment_lesions" id="R000000"
																			name="R000000"
																			style="text-align: center; font-size: 12px;">1</span></td>
																		<td style="text-align: center; width: 35px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001584" data-fieldid="Tu_lesionsno"
																			data-fieldkind="0" data-id="1180976"
																			data-recordid="304148"
																			data-tableid="T_assessment_lesions" id="F001584_616"
																			name="F001584_616"
																			style="text-align: left; font-size: 12px; width: 15px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 232px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001585"
																					data-fieldid="Tu_organname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180977"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304148"
																					data-tableid="T_assessment_lesions"
																					data-textfield="text"
																					data-url="/Book/SearchOrganJson" data-value=""
																					id="F001585_616" name="F001585_616"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 185px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 89px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001586" data-fieldid="Tu_ld"
																			data-fieldkind="0" data-id="1180978"
																			data-recordid="304148"
																			data-tableid="T_assessment_lesions" id="F001586_616"
																			name="F001586_616"
																			style="text-align: left; font-size: 12px; width: 69px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 71px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001587" data-fieldid="Tu_unit"
																			data-fieldkind="0" data-id="1180979"
																			data-itemsource="0" data-recordid="304148"
																			data-tableid="T_assessment_lesions"
																			data-textfield="text" id="F001587_616"
																			name="F001587_616"
																			style="text-align: left; font-size: 12px; width: 65px;"><option
																					title=""></option>
																				<option value="mm" title="mm">mm</option>
																				<option value="cm" title="cm">cm</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-defaultval="3" data-fieldcode="F001583"
																			data-fieldid="Tu_lesionsasstype" data-fieldkind="0"
																			data-id="1180975" data-recordid="304148"
																			data-tableid="T_assessment_lesions"
																			disabled="disabled" id="F001583_616"
																			name="F001583_616" type="hidden" value="3"></td>
																	</tr>
																</tbody>
																<tbody class="list-deleted hidden"></tbody>
																<tbody>
																	<tr>
																		<td colspan="6" style="text-align: right;"><div
																				class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default getTresult">自动计算结果</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default getLastLesion">获取上次评估病灶</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default selectLesion">从检查病灶中选择</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default addRow">添加行</a>
																			</div></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">最长径总和</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><input
														class="form-control crfform-input crffield" value="10"
														data-fieldcode="F001589" data-fieldid="Rs_sumld"
														data-fieldkind="0" data-id="1180981"
														data-recordid="304146" data-tableid="T_assessment_dtl"
														id="F001589" name="F001589"
														style="text-align: left; font-size: 12px; width: 123px;"
														type="text" value=""></td>
													<td class="td-control" colspan="6"
														style="text-align: left; width: 107px;"><div
															class="radio-container" data-form="radio" id="F001590">
															<label class="radio"><input data-value="1"
																id="F001590_1774394" name="F001590_items"
																type="checkbox" value="mm">mm</label><label
																class="radio"><input data-value="2"
																id="F001590_1774395" name="F001590_items"
																type="checkbox" value="cm">cm</label><input
																class="form-control crfform-input crffield"
																data-fieldcode="F001590" data-fieldid="Rs_sumldunits"
																data-fieldkind="0" data-id="1180982"
																data-recordid="304146" data-tableid="T_assessment_dtl"
																data-textfield="text" id="F001590_val"
																name="F001590_val"
																style="text-align: left; font-size: 12px; width: 87px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">靶病灶评估结果</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F001592" data-fieldid="Rs_target"
														data-fieldkind="0" data-id="1180984" data-itemsource="0"
														data-recordid="304146" data-tableid="T_assessment_dtl"
														data-textfield="value" id="F001592" name="F001592"
														style="text-align: left; font-size: 12px; width: 137px;"><option
																title=""></option>
															<option value="CR" title="CR - 完全缓解" selected="selected">CR - 完全缓解</option>
															<option value="PR" title="PR - 部分缓解">PR - 部分缓解</option>
															<option value="SD" title="SD - 病灶稳定">SD - 病灶稳定</option>
															<option value="PD" title="PD - 进展">PD - 进展</option>
															<option value="NE" title="NE - 无法评估">NE - 无法评估</option></select></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="leftlabel td-label" colspan="4"
														style="text-align: left; width: 71px;"><span
														style="text-align: left; font-size: 13px; font-weight: bold;">非靶病灶</span></td>
													<td class="td-label" colspan="3"
														style="text-align: right; width: 53px;"><span
														style="text-align: right; font-size: 12px;">检测方法</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;CT&quot;,&quot;text&quot;:&quot;CT&quot;},{&quot;value&quot;:&quot;增强CT&quot;,&quot;text&quot;:&quot;增强CT&quot;},{&quot;value&quot;:&quot;螺旋CT&quot;,&quot;text&quot;:&quot;螺旋CT&quot;},{&quot;value&quot;:&quot;MRI&quot;,&quot;text&quot;:&quot;MRI&quot;},{&quot;value&quot;:&quot;PET-CT&quot;,&quot;text&quot;:&quot;PET-CT&quot;},{&quot;value&quot;:&quot;X-Ray&quot;,&quot;text&quot;:&quot;X-Ray&quot;},{&quot;value&quot;:&quot;B超&quot;,&quot;text&quot;:&quot;B超&quot;},{&quot;value&quot;:&quot;内镜&quot;,&quot;text&quot;:&quot;内镜&quot;},{&quot;value&quot;:&quot;内镜超声&quot;,&quot;text&quot;:&quot;内镜超声&quot;},{&quot;value&quot;:&quot;组织学和/或细胞学检查&quot;,&quot;text&quot;:&quot;组织学和/或细胞学检查&quot;}]"
																data-fieldcode="F001595"
																data-fieldid="Rs_nontargetmethod" data-fieldkind="1"
																data-form="wycombo" data-id="1180987" value=""
																data-itemsource="0" data-recordid="304146"
																data-tableid="T_assessment_dtl" data-textfield="text"
																data-value="" id="F001595" name="F001595"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 113px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
												</tr>
												<tr>
													<td class="td-control" colspan="24"
														style="text-align: left; width: 430px;"><div
															id="F001596" class="crftable-edit"
															data-allowdeldefault="0" data-defaultval="[]"
															data-elementtype="table" data-id="1180988"
															data-recordid="304149"
															data-tableid="T_assessment_lesions">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<td style="text-align: left; width: 35px">编号</td>
																		<td style="text-align: center; width: 35px">编号</td>
																		<td style="text-align: center; width: 232px">器官</td>
																		<td style="text-align: center; width: 161px">备注</td>
																		<td style="width: 30px">删除</td>
																	</tr>
																</thead>
																<tbody class="list-template hidden">
																	<tr>
																		<td style="text-align: left; width: 35px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="R000000"
																			name="R000000"
																			style="text-align: center; font-size: 12px;">编号</span></td>
																		<td style="text-align: center; width: 35px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001598" data-fieldid="Tu_lesionsno"
																			data-fieldkind="0" data-id="1180990"
																			data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="F001598"
																			name="F001598"
																			style="text-align: left; font-size: 12px; width: 15px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 232px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001599"
																					data-fieldid="Tu_organname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180991"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304149"
																					data-tableid="T_assessment_lesions"
																					data-textfield="text"
																					data-url="/Book/SearchOrganJson" data-value=""
																					id="F001599" name="F001599"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 185px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 161px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001600" data-fieldid="Tu_remark"
																			data-fieldkind="0" data-id="1180992"
																			data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="F001600"
																			name="F001600"
																			style="text-align: left; font-size: 12px; width: 123px;"
																			type="text" value=""></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-defaultval="2" data-fieldcode="F001597"
																			data-fieldid="Tu_lesionsasstype" data-fieldkind="0"
																			data-id="1180989" data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="F001597"
																			name="F001597" type="hidden" value="2"></td>
																	</tr>
																</tbody>
																<tbody class="list-data">
																	<tr data-id="0">
																		<td style="text-align: left; width: 35px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="R000000"
																			name="R000000"
																			style="text-align: center; font-size: 12px;">1</span></td>
																		<td style="text-align: center; width: 35px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001598" data-fieldid="Tu_lesionsno"
																			data-fieldkind="0" data-id="1180990"
																			data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="F001598_624"
																			name="F001598_624"
																			style="text-align: left; font-size: 12px; width: 15px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 232px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001599"
																					data-fieldid="Tu_organname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180991"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304149"
																					data-tableid="T_assessment_lesions"
																					data-textfield="text"
																					data-url="/Book/SearchOrganJson" data-value=""
																					id="F001599_624" name="F001599_624"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 185px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 161px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001600" data-fieldid="Tu_remark"
																			data-fieldkind="0" data-id="1180992"
																			data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="F001600_624"
																			name="F001600_624"
																			style="text-align: left; font-size: 12px; width: 123px;"
																			type="text" value=""></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-defaultval="2" data-fieldcode="F001597"
																			data-fieldid="Tu_lesionsasstype" data-fieldkind="0"
																			data-id="1180989" data-recordid="304149"
																			data-tableid="T_assessment_lesions" id="F001597_624"
																			name="F001597_624" type="hidden" value="2"></td>
																	</tr>
																</tbody>
																<tbody class="list-deleted hidden"></tbody>
																<tbody>
																	<tr>
																		<td colspan="5" style="text-align: right;"><div
																				class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default getLastLesion">获取上次评估病灶</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default selectLesion">从检查病灶中选择</a>
																			</div>
																			<div class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default addRow">添加行</a>
																			</div></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">非靶病灶评估结果</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F001602" data-fieldid="Rs_nontarget"
														data-fieldkind="0" data-id="1180994" data-itemsource="0"
														data-recordid="304146" data-tableid="T_assessment_dtl"
														data-textfield="value" id="F001602" name="F001602"
														style="text-align: left; font-size: 12px; width: 137px;"><option
																title=""></option>
															<option value="CR" title="CR - 完全缓解" selected="selected">CR - 完全缓解</option>
															<option value="Non-CR/non-PD"
																title="Non-CR/non-PD - 非完全缓解/非进展">Non-CR/non-PD
																- 非完全缓解/非进展</option>
															<option value="PD" title="PD - 进展">PD - 进展</option>
															<option value="NE" title="NE - 无法评估">NE - 无法评估</option></select></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">肿瘤标志物评估结果</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><div
															class="radio-container" data-form="radio" id="F001604">
															<label class="radio"><input data-value="0"
																id="F001604_1774435" name="F001604_items"
																type="checkbox" value="0">正常</label><label class="radio"><input
																data-value="1" id="F001604_1774436" name="F001604_items"
																type="checkbox" value="1" checked="checked">不正常</label><input
																class="form-control crfform-input crffield"
																data-fieldcode="F001604" data-fieldid="Rs_tm"
																data-fieldkind="0" data-id="1180996"
																data-recordid="304146" data-tableid="T_assessment_dtl"
																data-textfield="value" id="F001604_val"
																name="F001604_val"
																style="text-align: left; font-size: 12px; width: 123px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">总体疗效评估</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 143px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F001606" data-fieldid="Rs_overall"
														data-fieldkind="0" data-id="1180998" data-itemsource="0"
														data-recordid="304146" data-tableid="T_assessment_dtl"
														data-textfield="value" id="F001606" name="F001606"
														style="text-align: left; font-size: 12px; width: 137px;"><option
																title=""></option>
															<option value="CR" title="CR - 完全缓解">CR - 完全缓解</option>
															<option value="PR" title="PR - 部分缓解" selected="selected">PR - 部分缓解</option>
															<option value="SD" title="SD - 病灶稳定">SD - 病灶稳定</option>
															<option value="PD" title="PD - 进展">PD - 进展</option>
															<option value="NE" title="NE - 无法评估">NE - 无法评估</option>
															<option value="sCR" title="sCR - 严格的完全缓解">sCR -
																严格的完全缓解</option>
															<option value="VGPR" title="VGPR - 很好的部分缓解">VGPR
																- 很好的部分缓解</option></select></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">备注</span></td>
													<td class="td-control" colspan="25"
														style="text-align: left; width: 447px;"><textarea
															class="form-control crfform-input crffield"
															data-fieldcode="F001608" data-fieldid="Rs_remark"
															data-fieldkind="0" data-id="1181000"
															data-recordid="304146" data-tableid="T_assessment_dtl"
															id="F001608" name="F001608" rows="3"
															style="text-align: left; font-size: 12px; width: 427px;"
															title=""></textarea></td>
												</tr>
												<tr>
													<td colspan="36" style="width: 645px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 125px;"><span
														style="text-align: right; font-size: 12px;">无法评价原因</span></td>
													<td class="td-control" colspan="25"
														style="text-align: left; width: 447px;"><textarea
															class="form-control crfform-input crffield"
															data-fieldcode="F001610" data-fieldid="Rs_ornereason"
															data-fieldkind="1" data-id="1181002" 
															data-recordid="304146" data-tableid="T_assessment_dtl"
															id="F001610" name="F001610" rows="3"
															style="text-align: left; font-size: 12px; width: 427px;"
															title=""></textarea></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 17px">&nbsp;</td>
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