<!DOCTYPE html>
<!-- saved from url=(0120)https://crabyter.sinyoo.net/Study/Patient/CrfInputRow/2644/76193/0?p=366336&f=1216812&fromid=0&v=2147565&callback=addRow -->
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
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



	<input type="hidden" id="Study_id" value="2644">
	<input type="hidden" id="Crf_id" value="76193">
	<input type="hidden" id="Visit_id" value="2147565">
	<input type="hidden" id="Study_patient_id" value="366336">
	<input type="hidden" id="Table_field_id" value="1216812">
	<input type="hidden" id="Id" value="0">
	<input type="hidden" id="Isdialog">

	<div class="dialog-content" style="margin: 0;">
		<form action="" class="form-horizontal form-inline crfform"
			id="inputform" method="post"
			style="min-width: 840px; margin: 0; padding: 0;"
			novalidate="novalidate">
			<input name="__RequestVerificationToken" type="hidden"
				value="Dd-kCN-pq5VGRW07UNi-odFqp0EiONQr51TVbCzZgTRYiqgr0CD2UOQnND7bntKN2LNIwYE34Q6XXLLghJDtN5xuA841MuTLgMa2gHpNYMU1">
			<div class="crftablerow" data-fieldid="1216812" data-id="76193"
				id="F001711" style="width: 840px">
				<div class="crfgroup-emptybox">
					<table border="0" cellpadding="3" cellspacing="0"
						class="table-crfform">
						<tbody>
							<tr>
								<td class="td-label" colspan="3"
									style="text-align: right; width: 100px;"><span
									style="text-align: right; font-size: 12px;">开始日期</span></td>
								<td class="td-control" colspan="4"
									style="text-align: left; width: 133px;"><div
										class="input-append date datepicker"
										data-date-autoclose="true" data-date-format="yyyy-mm-dd"
										data-form="datepicker">
										<input class="form-control crfform-input crffield" value="2016-06-05"
											data-fieldcode="F001712" data-fieldid="Ch_startdate"
											data-fieldkind="0" data-id="1216813" data-recordid="304159"
											data-tableid="T_chem" id="F001712" name="F001712"
											style="text-align: left; font-size: 12px; width: 86px;"
											type="text" value=""><span class="add-on"><i
											class="icofont-calendar"></i></span>
									</div></td>
							</tr>
							<tr>
								<td class="td-label" colspan="3"
									style="text-align: right; width: 100px;"><span
									style="text-align: right; font-size: 12px;">结束日期</span></td>
								<td class="td-control" colspan="4"
									style="text-align: left; width: 133px;"><div
										class="input-append date datepicker"
										data-date-autoclose="true" data-date-format="yyyy-mm-dd"
										data-form="datepicker">
										<input class="form-control crfform-input crffield"
											data-fieldcode="F001713" data-fieldid="Ch_enddate"  value="2016-06-10"
											data-fieldkind="0" data-id="1216814" data-recordid="304159"
											data-tableid="T_chem" id="F001713" name="F001713"
											style="text-align: left; font-size: 12px; width: 86px;"
											type="text" value=""><span class="add-on"><i
											class="icofont-calendar"></i></span>
									</div></td>
							</tr>
							<tr>
								<td class="td-label" colspan="3"
									style="text-align: right; width: 100px;"><span
									style="text-align: right; font-size: 12px;">期数</span></td>
								<td class="td-control" colspan="4"
									style="text-align: left; width: 133px;"><input
									class="form-control crfform-input crffield" value="2"
									data-fieldcode="F001714" data-fieldid="Ch_period"
									data-fieldkind="0" data-id="1216815" data-recordid="304159"
									data-tableid="T_chem" id="F001714" name="F001714"
									style="text-align: left; font-size: 12px; width: 113px;"
									type="text" value=""></td>
							</tr>
							<tr>
								<td class="td-label" colspan="3"
									style="text-align: right; width: 100px;"><span
									style="text-align: right; font-size: 12px;">身高</span></td>
								<td class="td-control" colspan="4"
									style="text-align: left; width: 133px;"><input
									class="form-control crfform-input crffield" value="170"
									data-fieldcode="F001715" data-fieldid="Io_height"
									data-fieldkind="0" data-id="1216816" data-recordid="304159"
									data-tableid="T_inhospitalhis" id="F001715" name="F001715"
									style="text-align: left; font-size: 12px; width: 80px;"
									type="text" value=""><span class="remark-label"
									style="text-align: left; font-size: 12px; padding-left: 3px;">cm</span></td>
								<td class="td-label" colspan="2"
									style="text-align: right; width: 66px;"><span
									style="text-align: right; font-size: 12px;">体重</span></td>
								<td class="td-control" colspan="4"
									style="text-align: left; width: 133px;"><input
									class="form-control crfform-input crffield" value="53"
									data-fieldcode="F001716" data-fieldid="Io_weight"
									data-fieldkind="0" data-id="1216817" data-recordid="304159"
									data-tableid="T_inhospitalhis" id="F001716" name="F001716"
									style="text-align: left; font-size: 12px; width: 80px;"
									type="text" value=""><span class="remark-label" 
									style="text-align: left; font-size: 12px; padding-left: 3px;">Kg</span></td>
							</tr>
							<tr>
								<td class="td-label" colspan="3"
									style="text-align: right; width: 100px;"><span
									style="text-align: right; font-size: 12px;">体表面积</span></td>
								<td class="td-control" colspan="4"
									style="text-align: left; width: 133px;"><input
									class="form-control crfform-input crffield" value="26"
									data-fieldcode="F001717" data-fieldid="Io_bsa"
									data-fieldkind="0" data-id="1216818" data-recordid="304159"
									data-tableid="T_inhospitalhis" id="F001717" name="F001717"
									style="text-align: left; font-size: 12px; width: 80px;"
									type="text" value=""><span class="remark-label"
									style="text-align: left; font-size: 12px; padding-left: 3px;">㎡</span></td>
								<td class="td-label" colspan="2"
									style="text-align: right; width: 66px;"><span
									style="text-align: right; font-size: 12px;">体重指数</span></td>
								<td class="td-control" colspan="3"
									style="text-align: left; width: 100px;"><input
									class="form-control crfform-input crffield" value="26"
									data-fieldcode="F001718" data-fieldid="Io_bmi"
									data-fieldkind="0" data-id="1216819" data-recordid="304159"
									data-tableid="T_inhospitalhis" id="F001718" name="F001718"
									style="text-align: left; font-size: 12px; width: 80px;"
									type="text" value=""></td>
							</tr>
							<tr>
								<td class="td-control" colspan="24"
									style="text-align: left; width: 800px;"><div
										class="crftable-title">
										<span class="remark-label" style="text-align: left;">靶向药物</span>
									</div>
									<div id="F001719" class="crftable-edit"
										data-allowdeldefault="0" data-defaultval="[]"
										data-elementtype="table" data-id="1216820"
										data-recordid="304160" data-tableid="T_chem_medication">
										<table class="table table-bordered">
											<thead>
												<tr>
													<td style="text-align: left; width: 66px">编号</td>
													<td style="text-align: left; width: 100px">药物通用名</td>
													<td style="text-align: center; width: 100px">药物商品名</td>
													<td style="text-align: center; width: 100px">使用剂量</td>
													<td style="text-align: left; width: 66px">剂量单位</td>
													<td style="text-align: left; width: 100px">给药途径</td>
													<td style="text-align: left; width: 100px">给药频率</td>
													<td style="text-align: left; width: 100px">备注</td>
													<td style="width: 30px">删除</td>
												</tr>
											</thead>
											<tbody class="list-template hidden">
												<tr>
													<td style="text-align: left; width: 66px"><span
														class="list-crffield" data-fieldcode="R000000"
														data-fieldid="" data-fieldkind="0" data-id="0"
														data-recordid="304160" data-tableid="T_chem_medication"
														id="R000000" name="R000000"
														style="text-align: right; font-size: 12px;">编号</span></td>
													<td style="text-align: left; width: 100px"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input list-crffield ui-autocomplete-input"
																data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																data-fieldcode="F001721" data-fieldid="Me_name"
																data-fieldkind="0" data-form="wycombo" data-id="1216822"
																data-itemsource="2"
																data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																data-recordid="304160" data-tableid="T_chem_medication"
																data-textfield="text"
																data-url="/Book/SearchMedicationJson" data-value=""
																id="F001721" name="F001721"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td style="text-align: center; width: 100px"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input list-crffield ui-autocomplete-input"
																data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																data-fieldcode="F001722" data-fieldid="Me_productname"
																data-fieldkind="0" data-form="wycombo" data-id="1216823"
																data-itemsource="2"
																data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																data-recordid="304160" data-tableid="T_chem_medication"
																data-textfield="text"
																data-url="/Book/SearchMedicationJson" data-value=""
																id="F001722" name="F001722"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td style="text-align: center; width: 100px"><input
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001723" data-fieldid="Me_actdose"
														data-fieldkind="0" data-id="1216824"
														data-recordid="304160" data-tableid="T_chem_medication"
														id="F001723" name="F001723"
														style="text-align: left; font-size: 12px; width: 80px;"
														type="text" value=""></td>
													<td style="text-align: left; width: 66px"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input list-crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;mg&quot;,&quot;text&quot;:&quot;mg&quot;},{&quot;value&quot;:&quot;μg&quot;,&quot;text&quot;:&quot;μg&quot;}]"
																data-fieldcode="F001724" data-fieldid="Me_doseunits"
																data-fieldkind="1" data-form="wycombo" data-id="1216825"
																data-itemsource="0" data-recordid="304160"
																data-tableid="T_chem_medication" data-textfield="text"
																data-value="" id="F001724" name="F001724"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 36px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td style="text-align: left; width: 100px"><select
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001725" data-fieldid="Me_route"
														data-fieldkind="1" data-id="1216826" data-itemsource="0"
														data-recordid="304160" data-tableid="T_chem_medication"
														data-textfield="value" id="F001725" name="F001725"
														style="text-align: left; font-size: 12px; width: 60px;"><option
																title=""></option>
															<option value="1" title="口服">口服</option>
															<option value="2" title="静脉">静脉</option>
															<option value="2.1" title="静脉滴注">静脉滴注</option>
															<option value="2.2" title="静脉注射">静脉注射</option>
															<option value="3" title="肌肉注射">肌肉注射</option>
															<option value="4" title="皮下注射">皮下注射</option>
															<option value="5" title="皮内注射">皮内注射</option>
															<option value="6" title="吸入">吸入</option>
															<option value="7" title="外用">外用</option>
															<option value="8" title="局部使用">局部使用</option>
															<option value="99" title="其他">其他</option></select></td>
													<td style="text-align: left; width: 100px"><select
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001726" data-fieldid="Me_dosefreq"
														data-fieldkind="1" data-id="1216827" data-itemsource="0"
														data-recordid="304160" data-tableid="T_chem_medication"
														data-textfield="value" id="F001726" name="F001726"
														style="text-align: left; font-size: 12px; width: 94px;"><option
																title=""></option>
															<option value="1" title="每日一次">每日一次</option>
															<option value="2" title="每日两次">每日两次</option>
															<option value="3" title="每日三次">每日三次</option>
															<option value="4" title="每日四次">每日四次</option>
															<option value="5" title="必要使用">必要使用</option>
															<option value="6" title="隔日使用">隔日使用</option>
															<option value="7" title="睡前使用">睡前使用</option>
															<option value="8" title="每周一次">每周一次</option>
															<option value="9" title="每两周一次">每两周一次</option>
															<option value="10" title="每三周一次">每三周一次</option>
															<option value="99" title="其他">其他</option></select></td>
													<td style="text-align: left; width: 100px"><textarea
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001727" data-fieldid="Me_remark"
															data-fieldkind="0" data-id="1216828"
															data-recordid="304160" data-tableid="T_chem_medication"
															id="F001727" name="F001727" rows="2"
															style="text-align: left; font-size: 12px; width: 80px;"
															title=""></textarea></td>
													<td style="width: 50px; text-align: center;"><div
															class="btn-group">
															<a
																class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																class="icofont-remove" title="删除"></i></a>
														</div></td>
													<td style="display: none;"><input
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001720" data-fieldid="Me_code"
														data-fieldkind="0" data-id="1216821"
														data-recordid="304160" data-tableid="T_chem_medication"
														id="F001720" name="F001720" type="hidden" value=""></td>
												</tr>
											</tbody>
											<tbody class="list-data">
												<tr data-id="0">
													<td style="text-align: left; width: 66px"><span
														class="list-crffield" data-fieldcode="R000000"
														data-fieldid="" data-fieldkind="0" data-id="0"
														data-recordid="304160" data-tableid="T_chem_medication"
														id="R000000" name="R000000"
														style="text-align: right; font-size: 12px;">1</span></td>
													<td style="text-align: left; width: 100px"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input list-crffield ui-autocomplete-input"
																data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																data-fieldcode="F001721" data-fieldid="Me_name"
																data-fieldkind="0" data-form="wycombo" data-id="1216822"
																data-itemsource="2"
																data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																data-recordid="304160" data-tableid="T_chem_medication"
																data-textfield="text"
																data-url="/Book/SearchMedicationJson" data-value=""
																id="F001721_777" name="F001721_777"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td style="text-align: center; width: 100px"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input list-crffield ui-autocomplete-input"
																data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																data-fieldcode="F001722" data-fieldid="Me_productname"
																data-fieldkind="0" data-form="wycombo" data-id="1216823"
																data-itemsource="2"
																data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																data-recordid="304160" data-tableid="T_chem_medication"
																data-textfield="text"
																data-url="/Book/SearchMedicationJson" data-value=""
																id="F001722_777" name="F001722_777"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td style="text-align: center; width: 100px"><input
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001723" data-fieldid="Me_actdose"
														data-fieldkind="0" data-id="1216824"
														data-recordid="304160" data-tableid="T_chem_medication"
														id="F001723_777" name="F001723_777"
														style="text-align: left; font-size: 12px; width: 80px;"
														type="text" value=""></td>
													<td style="text-align: left; width: 66px"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input list-crffield ui-autocomplete-input"
																data-datas="[{&quot;value&quot;:&quot;mg&quot;,&quot;text&quot;:&quot;mg&quot;},{&quot;value&quot;:&quot;μg&quot;,&quot;text&quot;:&quot;μg&quot;}]"
																data-fieldcode="F001724" data-fieldid="Me_doseunits"
																data-fieldkind="1" data-form="wycombo" data-id="1216825"
																data-itemsource="0" data-recordid="304160"
																data-tableid="T_chem_medication" data-textfield="text"
																data-value="" id="F001724_777" name="F001724_777"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 36px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
													<td style="text-align: left; width: 100px"><select
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001725" data-fieldid="Me_route"
														data-fieldkind="1" data-id="1216826" data-itemsource="0"
														data-recordid="304160" data-tableid="T_chem_medication"
														data-textfield="value" id="F001725_777" name="F001725_777"
														style="text-align: left; font-size: 12px; width: 60px;"><option
																title=""></option>
															<option value="1" title="口服">口服</option>
															<option value="2" title="静脉">静脉</option>
															<option value="2.1" title="静脉滴注">静脉滴注</option>
															<option value="2.2" title="静脉注射">静脉注射</option>
															<option value="3" title="肌肉注射">肌肉注射</option>
															<option value="4" title="皮下注射">皮下注射</option>
															<option value="5" title="皮内注射">皮内注射</option>
															<option value="6" title="吸入">吸入</option>
															<option value="7" title="外用">外用</option>
															<option value="8" title="局部使用">局部使用</option>
															<option value="99" title="其他">其他</option></select></td>
													<td style="text-align: left; width: 100px"><select
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001726" data-fieldid="Me_dosefreq"
														data-fieldkind="1" data-id="1216827" data-itemsource="0"
														data-recordid="304160" data-tableid="T_chem_medication"
														data-textfield="value" id="F001726_777" name="F001726_777"
														style="text-align: left; font-size: 12px; width: 94px;"><option
																title=""></option>
															<option value="1" title="每日一次">每日一次</option>
															<option value="2" title="每日两次">每日两次</option>
															<option value="3" title="每日三次">每日三次</option>
															<option value="4" title="每日四次">每日四次</option>
															<option value="5" title="必要使用">必要使用</option>
															<option value="6" title="隔日使用">隔日使用</option>
															<option value="7" title="睡前使用">睡前使用</option>
															<option value="8" title="每周一次">每周一次</option>
															<option value="9" title="每两周一次">每两周一次</option>
															<option value="10" title="每三周一次">每三周一次</option>
															<option value="99" title="其他">其他</option></select></td>
													<td style="text-align: left; width: 100px"><textarea
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001727" data-fieldid="Me_remark"
															data-fieldkind="0" data-id="1216828"
															data-recordid="304160" data-tableid="T_chem_medication"
															id="F001727" name="F001727" rows="2"
															style="text-align: left; font-size: 12px; width: 80px;"
															title=""></textarea></td>
													<td style="width: 50px; text-align: center;"><div
															class="btn-group">
															<a
																class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																class="icofont-remove" title="删除"></i></a>
														</div></td>
													<td style="display: none;"><input
														class="form-control crfform-input list-crffield"
														data-fieldcode="F001720" data-fieldid="Me_code"
														data-fieldkind="0" data-id="1216821"
														data-recordid="304160" data-tableid="T_chem_medication"
														id="F001720_777" name="F001720_777" type="hidden" value=""></td>
												</tr>
											</tbody>
											<tbody class="list-deleted hidden"></tbody>
											<tbody>
												<tr>
													<td colspan="9" style="text-align: right;"><div
															class="btn-group box-btn-right">
														</div></td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td class="leftlabel td-label" colspan="6"
									style="text-align: left; width: 200px;"><span
									style="text-align: left; font-size: 12px;">有无靶向治疗伴随用药</span></td>
								<td class="td-control" colspan="6"
									style="text-align: left; width: 200px;"><div
										class="radio-container" data-form="radio" id="F001728">
										<label class="radio"><input data-value="1"
											id="F001728_1827439" name="F001728_items" type="checkbox"
											value="1">有</label><label class="radio"><input
											data-value="0" id="F001728_1827438" name="F001728_items"
											type="checkbox" value="0">无</label><input
											class="form-control crfform-input crffield"
											data-fieldcode="F001728"
											data-fieldid="Di_drugcombinationforamonth" data-fieldkind="1"
											data-id="1216829" data-recordid="304159"
											data-tableid="T_inhospitalhis" data-textfield="value"
											id="F001728_val" name="F001728_val"
											style="text-align: left; font-size: 12px; width: 180px;"
											type="hidden">
									</div></td>
							</tr>
							<tr>
								<td class="td-control" colspan="24" data-ref-fieldcode="F001728"
									data-ref-itemvalue="1" data-ref-type="show"
									style="text-align: left; display: none; width: 800px;"><div
										id="F001729" class="crfgroup-box" data-elementtype="group"
										data-id="1216830">
										<div class="crfgroup-title" style="text-align: left;">
											<span class="remark-label" style="text-align: left;">伴随治疗</span>
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-control" colspan="24"
														style="text-align: left; width: 800px;"><div
															id="F001730" class="crftable-edit"
															data-allowdeldefault="0" data-defaultval="[]"
															data-elementtype="table" data-id="1216831"
															data-recordid="304161" data-tableid="T_treatmenthis">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<td style="text-align: center; width: 166px">编号</td>
																		<td style="text-align: center; width: 166px">药物名称</td>
																		<td style="text-align: center; width: 133px">每次剂量</td>
																		<td style="text-align: center; width: 133px">剂量单位</td>
																		<td style="text-align: center; width: 133px">给药频率</td>
																		<td style="text-align: center; width: 166px">给药途径</td>
																		<td style="text-align: center; width: 133px">治疗目的</td>
																		<td style="text-align: center; width: 100px">持续</td>
																		<td style="width: 30px">删除</td>
																	</tr>
																</thead>
																<tbody class="list-template hidden">
																	<tr>
																		<td style="text-align: center; width: 166px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304161" data-tableid="T_treatmenthis"
																			id="R000000" name="R000000"
																			style="text-align: right; font-size: 12px;">编号</span></td>
																		<td style="text-align: center; width: 166px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001731"
																					data-fieldid="Ct_medication" data-fieldkind="0"
																					data-form="wycombo" data-id="1216832"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304161"
																					data-tableid="T_treatmenthis" data-textfield="text"
																					data-url="/Book/SearchMedicationJson" data-value=""
																					id="F001731" name="F001731"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 133px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001732" data-fieldid="Ct_dose"
																			data-fieldkind="1" data-id="1216833"
																			data-recordid="304161" data-tableid="T_treatmenthis"
																			id="F001732" name="F001732"
																			style="text-align: left; font-size: 12px; width: 46px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 133px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001733" data-fieldid="Ct_doseunit"
																			data-fieldkind="1" data-id="1216834"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001733" name="F001733"
																			style="text-align: left; font-size: 12px; width: 60px;"><option
																					title=""></option>
																				<option value="1" title="mg">mg</option>
																				<option value="2" title="μg">μg</option></select></td>
																		<td style="text-align: center; width: 133px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001734" data-fieldid="Ct_dosefreq"
																			data-fieldkind="1" data-id="1216835"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001734" name="F001734"
																			style="text-align: left; font-size: 12px; width: 127px;"><option
																					title=""></option>
																				<option value="1" title="每日一次">每日一次</option>
																				<option value="2" title="每日两次">每日两次</option>
																				<option value="3" title="每日三次">每日三次</option>
																				<option value="4" title="每日四次">每日四次</option>
																				<option value="5" title="必要使用">必要使用</option>
																				<option value="6" title="隔日使用">隔日使用</option>
																				<option value="7" title="睡前使用">睡前使用</option>
																				<option value="8" title="每周一次">每周一次</option>
																				<option value="9" title="每周两次">每周两次</option>
																				<option value="10" title="每周三次">每周三次</option>
																				<option value="99" title="其他">其他</option></select></td>
																		<td style="text-align: center; width: 166px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001735" data-fieldid="Ct_route"
																			data-fieldkind="1" data-id="1216836"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001735" name="F001735"
																			style="text-align: left; font-size: 12px; width: 94px;"><option
																					title=""></option>
																				<option value="1" title="口服">口服</option>
																				<option value="2" title="静脉">静脉</option>
																				<option value="2.1" title="静脉滴注">静脉滴注</option>
																				<option value="2.2" title="静脉注射">静脉注射</option>
																				<option value="3" title="肌肉注射">肌肉注射</option>
																				<option value="4" title="皮下注射">皮下注射</option>
																				<option value="5" title="皮内注射">皮内注射</option>
																				<option value="6" title="吸入">吸入</option>
																				<option value="7" title="外用">外用</option>
																				<option value="8" title="局部使用">局部使用</option>
																				<option value="99" title="其他">其他</option></select></td>
																		<td style="text-align: center; width: 133px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001736" data-fieldid="Ct_purpose"
																			data-fieldkind="1" data-id="1216837"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001736" name="F001736"
																			style="text-align: left; font-size: 12px; width: 127px;"><option
																					title=""></option>
																				<option value="1" title="针对化疗预防">针对化疗预防</option>
																				<option value="2" title="针对不良反应">针对不良反应</option></select></td>
																		<td style="text-align: center; width: 100px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001737" data-fieldid="Ct_ongoing"
																			data-fieldkind="1" data-id="1216838"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001737" name="F001737"
																			style="text-align: left; font-size: 12px; width: 60px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"></td>
																	</tr>
																</tbody>
																<tbody class="list-data">
																	<tr data-id="0">
																		<td style="text-align: center; width: 166px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304161" data-tableid="T_treatmenthis"
																			id="R000000" name="R000000"
																			style="text-align: right; font-size: 12px;">1</span></td>
																		<td style="text-align: center; width: 166px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F001731"
																					data-fieldid="Ct_medication" data-fieldkind="0"
																					data-form="wycombo" data-id="1216832"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304161"
																					data-tableid="T_treatmenthis" data-textfield="text"
																					data-url="/Book/SearchMedicationJson" data-value=""
																					id="F001731_819" name="F001731_819"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 133px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001732" data-fieldid="Ct_dose"
																			data-fieldkind="1" data-id="1216833"
																			data-recordid="304161" data-tableid="T_treatmenthis"
																			id="F001732_819" name="F001732_819"
																			style="text-align: left; font-size: 12px; width: 46px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 133px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001733" data-fieldid="Ct_doseunit"
																			data-fieldkind="1" data-id="1216834"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001733_819" name="F001733_819"
																			style="text-align: left; font-size: 12px; width: 60px;"><option
																					title=""></option>
																				<option value="1" title="mg">mg</option>
																				<option value="2" title="μg">μg</option></select></td>
																		<td style="text-align: center; width: 133px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001734" data-fieldid="Ct_dosefreq"
																			data-fieldkind="1" data-id="1216835"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001734_819" name="F001734_819"
																			style="text-align: left; font-size: 12px; width: 127px;"><option
																					title=""></option>
																				<option value="1" title="每日一次">每日一次</option>
																				<option value="2" title="每日两次">每日两次</option>
																				<option value="3" title="每日三次">每日三次</option>
																				<option value="4" title="每日四次">每日四次</option>
																				<option value="5" title="必要使用">必要使用</option>
																				<option value="6" title="隔日使用">隔日使用</option>
																				<option value="7" title="睡前使用">睡前使用</option>
																				<option value="8" title="每周一次">每周一次</option>
																				<option value="9" title="每周两次">每周两次</option>
																				<option value="10" title="每周三次">每周三次</option>
																				<option value="99" title="其他">其他</option></select></td>
																		<td style="text-align: center; width: 166px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001735" data-fieldid="Ct_route"
																			data-fieldkind="1" data-id="1216836"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001735_819" name="F001735_819"
																			style="text-align: left; font-size: 12px; width: 94px;"><option
																					title=""></option>
																				<option value="1" title="口服">口服</option>
																				<option value="2" title="静脉">静脉</option>
																				<option value="2.1" title="静脉滴注">静脉滴注</option>
																				<option value="2.2" title="静脉注射">静脉注射</option>
																				<option value="3" title="肌肉注射">肌肉注射</option>
																				<option value="4" title="皮下注射">皮下注射</option>
																				<option value="5" title="皮内注射">皮内注射</option>
																				<option value="6" title="吸入">吸入</option>
																				<option value="7" title="外用">外用</option>
																				<option value="8" title="局部使用">局部使用</option>
																				<option value="99" title="其他">其他</option></select></td>
																		<td style="text-align: center; width: 133px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001736" data-fieldid="Ct_purpose"
																			data-fieldkind="1" data-id="1216837"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001736_819" name="F001736_819"
																			style="text-align: left; font-size: 12px; width: 127px;"><option
																					title=""></option>
																				<option value="1" title="针对化疗预防">针对化疗预防</option>
																				<option value="2" title="针对不良反应">针对不良反应</option></select></td>
																		<td style="text-align: center; width: 100px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001737" data-fieldid="Ct_ongoing"
																			data-fieldkind="1" data-id="1216838"
																			data-itemsource="0" data-recordid="304161"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001737_819" name="F001737_819"
																			style="text-align: left; font-size: 12px; width: 60px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																				<a
																					class="btn btn-mini btn-link btn-imglink color-red delRow"><i
																					class="icofont-remove" title="删除"></i></a>
																			</div></td>
																		<td style="display: none;"></td>
																	</tr>
																</tbody>
																<tbody class="list-deleted hidden"></tbody>
																<tbody>
																	<tr>
																		<td colspan="9" style="text-align: right;"><div
																				class="btn-group box-btn-right">
																				<a
																					class="btn btn-mini btn-default addRow">添加行</a>
																			</div></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 33px">&nbsp;</td>
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