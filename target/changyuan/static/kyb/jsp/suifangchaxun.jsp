<!DOCTYPE html>
<html><head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
<div style="width: 1008px;" class="panel datagrid easyui-fluid">
									<div style="width: 996px;" class="panel-header">
										<div class="panel-title">随访结果查询</div>
										<div class="panel-tool"></div>
									</div>
									<div style="width: 1006px; height: 437px;" title=""
										class="datagrid-wrap panel-body">
										<div class="form-horizontal datagrid-toolbar"
											id="datagrid_toolbar" style="">
											<ul class="wysihtml5-toolbar" style="margin-bottom: 0px;">
												<li >
													<div class="input-append input-icon-prepend">
														<div class="add-on">
															<a title="search" class="icon"><i
																class="icofont-search"></i></a> <input id="searchkey"
																data-fieldname="searchkey" placeholder="输入病例编号、姓名"
																type="text">
														</div>
														<button id="btnquery" class="btn btn-small">查询</button>
													</div>
												</li>
												<li ><select class="form-control"
													id="Followuptype" name="Followuptype" style="width: auto;"><option
															selected="selected" title="所有类别" value="">所有类别</option>
														<option title="生存随访" value="2">生存随访</option>
														<option title="治疗提醒随访" value="4">治疗提醒随访</option>
												</select></li>
												<li ><select class="form-control"
													id="Dialresult" name="Dialresult" style="width: auto;"><option
															selected="selected" title="所有结果" value="">所有结果</option>
														<option title="成功" value="1">成功</option>
														<option title="无人接听or关机" value="2">无人接听or关机</option>
														<option title="不方便接听" value="3">不方便接听</option>
														<option title="空错号or停机" value="4">空错号or停机</option>
														<option title="拒访" value="5">拒访</option>
														<option title="取消随访" value="6">取消随访</option>
														<option title="失访" value="10">失访</option>
														<option title="系统取消" value="100">系统取消</option>
												</select></li>
											</ul>
										</div>
										<div style="width: 1006px; height: 365px;"
											class="datagrid-view">
											<div style="width: 51px;" class="datagrid-view1">
												<div style="width: 51px; height: 24px;"
													class="datagrid-header">
													<div style="display: block;" class="datagrid-header-inner">
														<table style="height: 25px;" class="datagrid-htable"
															border="0" cellpadding="0" cellspacing="0">
															<tbody>
																<tr class="datagrid-header-row">
																	<td rowspan="0"><div
																			class="datagrid-header-rownumber"></div></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div style="width: 51px; margin-top: 0px; height: 340px;"
													class="datagrid-body">
													<div class="datagrid-body-inner">
														<table class="datagrid-btable" border="0" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr style="height: 25px;" id="datagrid-row-r1-1-0"
																	datagrid-row-index="0" class="datagrid-row">
																	<td class="datagrid-td-rownumber"><div
																			class="datagrid-cell-rownumber">1</div></td>
																</tr>
																<tr style="height: 25px;" id="datagrid-row-r1-1-1"
																	datagrid-row-index="1"
																	class="datagrid-row datagrid-row-alt">
																	<td class="datagrid-td-rownumber"><div
																			class="datagrid-cell-rownumber">2</div></td>
																</tr>
																<tr style="height: 25px;" id="datagrid-row-r1-1-2"
																	datagrid-row-index="2" class="datagrid-row">
																	<td class="datagrid-td-rownumber"><div
																			class="datagrid-cell-rownumber">3</div></td>
																</tr>
																<tr style="height: 25px;" id="datagrid-row-r1-1-3"
																	datagrid-row-index="3"
																	class="datagrid-row datagrid-row-alt">
																	<td class="datagrid-td-rownumber"><div
																			class="datagrid-cell-rownumber">4</div></td>
																</tr>
																<tr style="height: 25px;" id="datagrid-row-r1-1-4"
																	datagrid-row-index="4" class="datagrid-row">
																	<td class="datagrid-td-rownumber"><div
																			class="datagrid-cell-rownumber">5</div></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div style="width: 51px;" class="datagrid-footer">
													<div style="display: none;" class="datagrid-footer-inner"></div>
												</div>
											</div>
											<div style="width: 955px;" class="datagrid-view2">
												<div style="width: 955px; height: 24px;"
													class="datagrid-header">
													<div style="display: block;" class="datagrid-header-inner">
														<table style="height: 25px;" class="datagrid-htable"
															border="0" cellpadding="0" cellspacing="0">
															<tbody>
																<tr class="datagrid-header-row">
																	<td style="display: none;" field="Id"><div
																			style="" class="datagrid-cell datagrid-cell-c1-4964">
																			<span>Id</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Followuptype"><div
																			style="text-align: left;"
																			class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757074797065">
																			<span>随访类别</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Followupdate"><div
																			style="text-align: left;"
																			class="datagrid-cell datagrid-sort-asc datagrid-cell-c1-466f6c6c6f77757064617465">
																			<span>应访日期</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Patnumber"><div
																			style="text-align: center;"
																			class="datagrid-cell datagrid-cell-c1-5061746e756d626572">
																			<span>病例编号</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Patname"><div
																			style="text-align: center;"
																			class="datagrid-cell datagrid-cell-c1-5061746e616d65">
																			<span>姓名</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Gender"><div
																			style="text-align: center;"
																			class="datagrid-cell datagrid-cell-c1-47656e646572">
																			<span>性别</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Dialdate"><div
																			style="text-align: left;"
																			class="datagrid-cell datagrid-cell-c1-4469616c64617465">
																			<span>实际随访日期</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td class="" field="Dialresult"><div
																			style="text-align: left;"
																			class="datagrid-cell datagrid-cell-c1-4469616c726573756c74">
																			<span>随访结果</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td class="" field="Followupuser"><div
																			style="text-align: left;"
																			class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757075736572">
																			<span>随访人</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																	<td field="Remark"><div style="text-align: left;"
																			class="datagrid-cell datagrid-cell-c1-52656d61726b">
																			<span>备注</span><span class="datagrid-sort-icon">&nbsp;</span>
																		</div></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div
													style="width: 955px; margin-top: 0px; height: 340px; overflow-x: hidden;"
													class="datagrid-body">
													<table class="datagrid-btable" border="0" cellpadding="0"
														cellspacing="0">
														<tbody>
															<tr style="height: 25px;" id="datagrid-row-r1-2-0"
																datagrid-row-index="0" class="datagrid-row">
																<td field="Id" style="display: none;"><div
																		style="height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4964">5161</div></td>
																<td field="Followuptype"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757074797065">自定义随访</div></td>
																<td field="Followupdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757064617465">2016-08-18</div></td>
																<td field="Patnumber"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e756d626572">0002</div></td>
																<td field="Patname"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e616d65">兰兰</div></td>
																<td field="Gender"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-47656e646572">其他</div></td>
																<td field="Dialdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c64617465"></div></td>
																<td field="Dialresult"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c726573756c74">取消随访(永久取消)</div></td>
																<td field="Followupuser"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757075736572">张卫</div></td>
																<td field="Remark"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-52656d61726b">取消原因：aaa</div></td>
															</tr>
															<tr style="height: 25px;" id="datagrid-row-r1-2-1"
																datagrid-row-index="1"
																class="datagrid-row datagrid-row-alt">
																<td field="Id" style="display: none;"><div
																		style="height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4964">5162</div></td>
																<td field="Followuptype"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757074797065">自定义随访</div></td>
																<td field="Followupdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757064617465">2016-08-18</div></td>
																<td field="Patnumber"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e756d626572">0002</div></td>
																<td field="Patname"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e616d65">兰兰</div></td>
																<td field="Gender"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-47656e646572">其他</div></td>
																<td field="Dialdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c64617465"></div></td>
																<td field="Dialresult"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c726573756c74">取消随访(永久取消)</div></td>
																<td field="Followupuser"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757075736572">张卫</div></td>
																<td field="Remark"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-52656d61726b">取消原因：测试</div></td>
															</tr>
															<tr style="height: 25px;" id="datagrid-row-r1-2-2"
																datagrid-row-index="2" class="datagrid-row">
																<td field="Id" style="display: none;"><div
																		style="height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4964">5176</div></td>
																<td field="Followuptype"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757074797065">自定义随访</div></td>
																<td field="Followupdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757064617465">2016-08-19</div></td>
																<td field="Patnumber"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e756d626572">0002</div></td>
																<td field="Patname"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e616d65">兰兰</div></td>
																<td field="Gender"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-47656e646572">其他</div></td>
																<td field="Dialdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c64617465">2016-08-19</div></td>
																<td field="Dialresult"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c726573756c74">成功</div></td>
																<td field="Followupuser"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757075736572">张卫</div></td>
																<td field="Remark"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-52656d61726b"></div></td>
															</tr>
															<tr style="height: 25px;" id="datagrid-row-r1-2-3"
																datagrid-row-index="3"
																class="datagrid-row datagrid-row-alt">
																<td field="Id" style="display: none;"><div
																		style="height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4964">5174</div></td>
																<td field="Followuptype"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757074797065">自定义随访</div></td>
																<td field="Followupdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757064617465">2016-08-21</div></td>
																<td field="Patnumber"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e756d626572">0001</div></td>
																<td field="Patname"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e616d65">李四</div></td>
																<td field="Gender"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-47656e646572">男</div></td>
																<td field="Dialdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c64617465"></div></td>
																<td field="Dialresult"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c726573756c74">取消随访(取消本次)</div></td>
																<td field="Followupuser"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757075736572">张卫</div></td>
																<td field="Remark"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-52656d61726b">取消原因：aaa</div></td>
															</tr>
															<tr style="height: 25px;" id="datagrid-row-r1-2-4"
																datagrid-row-index="4" class="datagrid-row">
																<td field="Id" style="display: none;"><div
																		style="height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4964">5175</div></td>
																<td field="Followuptype"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757074797065">自定义随访</div></td>
																<td field="Followupdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757064617465">2016-08-21</div></td>
																<td field="Patnumber"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e756d626572">0007</div></td>
																<td field="Patname"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-5061746e616d65"></div></td>
																<td field="Gender"><div
																		style="text-align: center; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-47656e646572">其他</div></td>
																<td field="Dialdate"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c64617465"></div></td>
																<td field="Dialresult"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-4469616c726573756c74">取消随访(取消本次)</div></td>
																<td field="Followupuser"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-466f6c6c6f77757075736572">张卫</div></td>
																<td field="Remark"><div
																		style="text-align: left; height: auto;"
																		class="datagrid-cell datagrid-cell-c1-52656d61726b">取消原因：aaa</div></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div style="width: 955px;" class="datagrid-footer">
													<div style="display: none;" class="datagrid-footer-inner"></div>
												</div>
											</div>
											<table style="display: none;" class="datagrid datagrid-f"
												id="datagrid" title="随访结果查询"></table>
											<style type="text/css" easyui="true">
.datagrid-cell-c1-4964 {
	width: 1px
}

.datagrid-cell-c1-466f6c6c6f77757074797065 {
	width: 61px
}

.datagrid-cell-c1-466f6c6c6f77757064617465 {
	width: 71px
}

.datagrid-cell-c1-5061746e756d626572 {
	width: 71px
}

.datagrid-cell-c1-5061746e616d65 {
	width: 71px
}

.datagrid-cell-c1-47656e646572 {
	width: 26px
}

.datagrid-cell-c1-4469616c64617465 {
	width: 71px
}

.datagrid-cell-c1-4469616c726573756c74 {
	width: 91px
}

.datagrid-cell-c1-466f6c6c6f77757075736572 {
	width: 51px
}

.datagrid-cell-c1-52656d61726b {
	width: 91px
}
</style>
										</div>
										<div class="datagrid-pager pagination">
											<table border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td><select class="pagination-page-list"><option>10</option>
																<option selected="selected">20</option>
																<option>30</option>
																<option>45</option>
																<option>60</option>
																<option>75</option></select></td>
														<td><div class="pagination-btn-separator"></div></td>
														<td><a id="" group=""
															class="l-btn l-btn-small l-btn-plain l-btn-disabled l-btn-plain-disabled"
															href="javascript:void(0)"><span
																class="l-btn-left l-btn-icon-left"><span
																	class="l-btn-text l-btn-empty">&nbsp;</span><span
																	class="l-btn-icon pagination-first">&nbsp;</span></span></a></td>
														<td><a id="" group=""
															class="l-btn l-btn-small l-btn-plain l-btn-disabled l-btn-plain-disabled"
															href="javascript:void(0)"><span
																class="l-btn-left l-btn-icon-left"><span
																	class="l-btn-text l-btn-empty">&nbsp;</span><span
																	class="l-btn-icon pagination-prev">&nbsp;</span></span></a></td>
														<td><div class="pagination-btn-separator"></div></td>
														<td><span style="padding-left: 6px;">第</span></td>
														<td><input class="pagination-num" value="1" size="2"
															type="text"></td>
														<td><span style="padding-right: 6px;">共1页</span></td>
														<td><div class="pagination-btn-separator"></div></td>
														<td><a id="" group=""
															class="l-btn l-btn-small l-btn-plain l-btn-disabled l-btn-plain-disabled"
															href="javascript:void(0)"><span
																class="l-btn-left l-btn-icon-left"><span
																	class="l-btn-text l-btn-empty">&nbsp;</span><span
																	class="l-btn-icon pagination-next">&nbsp;</span></span></a></td>
														<td><a id="" group=""
															class="l-btn l-btn-small l-btn-plain l-btn-disabled l-btn-plain-disabled"
															href="javascript:void(0)"><span
																class="l-btn-left l-btn-icon-left"><span
																	class="l-btn-text l-btn-empty">&nbsp;</span><span
																	class="l-btn-icon pagination-last">&nbsp;</span></span></a></td>
														<td><div class="pagination-btn-separator"></div></td>
														<td><a id="" group=""
															class="l-btn l-btn-small l-btn-plain"
															href="javascript:void(0)"><span
																class="l-btn-left l-btn-icon-left"><span
																	class="l-btn-text l-btn-empty">&nbsp;</span><span
																	class="l-btn-icon pagination-load">&nbsp;</span></span></a></td>
													</tr>
												</tbody>
											</table>
											<div class="pagination-info">显示1到5,共5记录</div>
											<div style="clear: both;"></div>
										</div>
									</div>
								</div>
</body></html>