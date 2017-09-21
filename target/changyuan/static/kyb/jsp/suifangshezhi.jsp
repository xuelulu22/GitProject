<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
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

<body>
<div class="content-body">
									<form action="" class="form-horizontal form-inline"
										id="inputform" method="post">
										<div class="box corner-all">
											<!--box header-->
											<div
												class="box-header grd-white color-silver-dark corner-top">
												<span>生存随访</span>
											</div>
											<!--box body-->
											<div class="box-body" id="SCSF">
												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform">
													<tbody>
														<tr>
															<td class="td-label">状态</td>
															<td class="td-control">
																<div data-form="radio" id="SCSFStatus">
																	<label class="checked radio"><input
																		checked="checked" id="SCSFStatus_0"
																		name="SCSFStatus_items" type="radio" value="0">关闭</label><label
																		class="radio"><input id="SCSFStatus_1"
																		name="SCSFStatus_items" type="radio" value="1">开启</label><input
																		class="datafield" data-fieldname="SCSFStatus"
																		id="SCSFStatus_val" name="SCSFStatus_val"
																		type="hidden" value="1">
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div
													style="border-top: 1px solid #ccc; height: 5px; margin-top: 0px;">

												</div>
												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform status-on" style="">
													<tbody>
														<tr>
															<td class="td-label">参照日期字段</td>
															<td class="td-control">
																<div class="input-append">

																	<input class="form-control" disabled="disabled"
																		id="Crf_field_id" name="Crf_field_id"
																		style="width: 176px;" type="text" value=""> <a
																		title="选择CRF表字段" class="btn btn-small"
																		id="btnselectfield"> <i class="icofont-search"></i>
																	</a> <input class="datafield"
																		data-fieldname="Ref_df_tableid" id="Ref_df_tableid"
																		name="Ref_df_tableid" type="hidden" value="">
																	<input class="datafield" value=""
																		data-fieldname="Ref_df_fieldid" id="Ref_df_fieldid"
																		name="Ref_df_fieldid" type="hidden" value="">
																</div>
															</td>
														</tr>
														<tr>
															<td class="td-label">随访方式</td>
															<td class="td-control"><select class="datafield"
																data-fieldname="Followupway" 
																id="SCSF_Followupway" name="SCSF_Followupway"><option
																		selected="selected" value="0" title="电话">电话</option>
																	<option value="1" title="短信">短信</option>
																	<option value="2" title="App">App</option></select></td>
															<td class="td-label">备注</td>
															<td class="td-control" rowspan="3"><textarea
																	class="form-control datafield" cols="20"
																	data-fieldname="Remark" id="Remark" name="Remark"
																	rows="2" title=""></textarea></td>
														</tr>
														<tr style="display: none;">
															<td class="td-label">有效期</td>
															<td class="td-control"><select class="datafield"
																data-fieldname="Valditytype" disabled="disabled"
																id="Valditytype" name="Valditytype"><option
																		selected="selected" value="0" title="长期">长期</option>
																	<option value="1" title="区间">区间</option>
																	<option value="2" title="与科研周期一直">与科研周期一直</option></select></td>
														</tr>
														<tr>
															<td class="td-label">问卷CRF表</td>
															<td class="td-control">
																<div class="input-append">
																	<input id="SCSFCrfname" name="SCSFCrfname"
																		readonly="readonly" style="width: 176px;" type="text"
																		value=""> <a title="选择CRF表"
																		class="btn btn-small" id="btnSCSFCrf"> <i
																		class="icofont-search"></i>
																	</a>
																</div> <input class="form-control datafield"
																data-fieldname="Crf_id" id="SCSF_Crf_id"
																name="SCSF_Crf_id" type="hidden" value="73393">
															</td>
														</tr>
														<tr></tr>
													</tbody>
												</table>

												<div
													style="border-top-width: 1px; border-top-style: solid; border-top-color: rgb(204, 204, 204); height: 5px; margin-top: 5px;"
													class="status-on"></div>
												<!--生存随访-->

												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform status-on" style="">
													<tbody>
														<tr>
															<td class="td-label"></td>
															<td>生存期&lt;=2年，随访参照日期，加 <input
																class="form-control datafield" data-fieldname="Day1"
																id="scsf_Day1" name="scsf_Day1" style="width: 50px;"
																type="text" value="90"> 天（默认90天）
															</td>
														</tr>
														<tr>
															<td class="td-label"></td>
															<td>2年&lt;生存期&lt;=5年，随访参照日期，加 <input
																class="form-control datafield" data-fieldname="Day2"
																id="scsf_Day2" name="scsf_Day2" style="width: 50px;"
																type="text" value="180"> 天（默认180天）
															</td>
														</tr>
														<tr>
															<td class="td-label"></td>
															<td>生存期&gt;5年，随访参照日期，加 <input
																class="form-control datafield" data-fieldname="Day3"
																id="scsf_Day3" name="scsf_Day3" style="width: 50px;"
																type="text" value="365"> 天（默认365天）
															</td>
														</tr>
														<tr>
															<td class="td-label"></td>
															<td>
																随访参照日期，取随访参照起始日期、末次出院日期和末次成功随访日期，这三个日期的最大值作为随访参照日期。</td>
														</tr>
													</tbody>
												</table>

												<div class="status-on"
													style="border-top-width: 1px; border-top-style: solid; border-top-color: rgb(204, 204, 204); height: 5px; margin-top: 5px;">

												</div>
												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform status-on" style="">
													<tbody>
														<tr>
															<td class="td-label"></td>
															<td>提前 <input class="form-control datafield"
																data-fieldname="Day4" id="scsf_Day4" name="scsf_Day4"
																style="width: 50px;" type="text" value="3">
																天生成生存随访（默认3天）
															</td>
														</tr>
														<tr>
															<td class="td-label"></td>
															<td>逾期 <input class="form-control datafield"
																data-fieldname="Day5" id="scsf_Day5" name="scsf_Day5"
																style="width: 50px;" type="text" value="7">
																天后自动作废（默认7天）
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="box corner-all">
											<!--box header-->
											<div
												class="box-header grd-white color-silver-dark corner-top">
												<span>治疗提醒随访</span>
											</div>
											<!--/box header-->
											<!--box body-->
											<div class="box-body" id="TXSF">
												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform">
													<tbody>
														<tr>
															<td class="td-label">状态</td>
															<td class="td-control">
																<div data-form="radio" id="TXSFStatus">
																	<label class="checked radio"><input
																		checked="checked" id="TXSFStatus_0"
																		name="TXSFStatus_items" type="radio" value="0">关闭</label><label
																		class="radio"><input id="TXSFStatus_1"
																		name="TXSFStatus_items" type="radio" value="1">开启</label><input
																		class="datafield" data-fieldname="TXSFStatus"
																		id="TXSFStatus_val" name="TXSFStatus_val"
																		type="hidden" value="1">
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div
													style="border-top: 1px solid #ccc; height: 5px; margin-top: 0px;">

												</div>

												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform status-on" style="">
													<tbody>
														<tr>
															<td class="td-label">随访方式</td>
															<td class="td-control"><select class="datafield"
																data-fieldname="Followupway" 
																id="TXSF_Followupway" name="TXSF_Followupway"><option
																		selected="selected" value="0" title="电话">电话</option>
																	<option value="1" title="短信">短信</option>
																	<option value="2" title="App">App</option></select></td>
															<td class="td-label">备注</td>
															<td class="td-control" rowspan="3"><textarea
																	class="form-control datafield" cols="20"
																	data-fieldname="Remark" id="txsf_Remark"
																	name="txsf_Remark" rows="2" title=""></textarea></td>
														</tr>
														<tr style="display: none;">
															<td class="td-label">有效期</td>
															<td class="td-control"><select class="datafield"
																data-fieldname="Valditytype" disabled="disabled"
																id="Valditytype" name="Valditytype"><option
																		selected="selected" value="0" title="长期">长期</option>
																	<option value="1" title="区间">区间</option>
																	<option value="2" title="与科研周期一直">与科研周期一直</option></select></td>
														</tr>
														<tr>
															<td class="td-label">问卷CRF表</td>
															<td class="td-control">
																<div class="input-append">
																	<input id="TXSFCrfname" name="TXSFCrfname"
																		readonly="readonly" style="width: 176px;" type="text"
																		value=""> <a title="选择CRF表"
																		class="btn btn-small" id="btnTXSFCrf"> <i
																		class="icofont-search"></i>
																	</a>
																</div> <input class="form-control datafield"
																data-fieldname="Crf_id" id="TXSF_Crf_id"
																name="TXSF_Crf_id" type="hidden" value="73393">
															</td>
														</tr>
														<tr></tr>
													</tbody>
												</table>

												<div class="status-on"
													style="border-top-width: 1px; border-top-style: solid; border-top-color: rgb(204, 204, 204); height: 5px; margin-top: 5px;">

												</div>

												<table cellpadding="3" cellspacing="0" border="0"
													class="inputform status-on" style="">
													<tbody>
														<tr>
															<td class="td-label"></td>
															<td>预约下次复诊日期，提前 <input
																class="form-control datafield" data-fieldname="Day1"
																id="txsf_Day1" name="txsf_Day1" style="width: 50px;"
																type="text" value="3"> 天生成治疗提醒随访
															</td>
														</tr>
														<tr>
															<td class="td-label"></td>
															<td>预约下次复诊日期，逾期 <input
																class="form-control datafield" data-fieldname="Day2"
																id="txsf_Day2" name="txsf_Day2" style="width: 50px;"
																type="text" value="7"> 天后自动作废
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!--/box body-->
										</div>
									</form>
								</div>
	
</body>
</html>