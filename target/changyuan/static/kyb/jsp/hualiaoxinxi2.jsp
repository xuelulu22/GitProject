<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
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
	<input type="hidden" id="Crf_id" value="73386">
	<input type="hidden" id="Visit_id" value="2147565">
	<input type="hidden" id="Study_patient_id" value="366336">
	<input type="hidden" id="Table_field_id" value="1180489">
	<input type="hidden" id="Id" value="0">
	<input type="hidden" id="Isdialog">

	<div class="dialog-content" style="margin: 0;">
		<form action="" class="form-horizontal form-inline crfform"
			id="inputform" method="post"
			style="min-width: 964px; margin: 0; padding: 0;"
			novalidate="novalidate">
			<input name="__RequestVerificationToken" type="hidden"
				value="SYODKob0DiD34dz9vbRTwnI-oGXHQcU884MUXh6mBauec_JSj-o2bu9rRDpjRFIFoMigcda1nvHy62i4y302oysC9XoLjDt2XsbXPOII7a41">
			<div class="crftablerow" data-fieldid="1180489" data-id="73386"
				id="F000084" style="width: 964px">
				<div class="crfgroup-emptybox">
					<table border="0" cellpadding="3" cellspacing="0"
						class="table-crfform">
						<tbody>
							<tr>
								<td class="td-control" colspan="24"
									style="text-align: left; width: 462px;"><div id="F000085"
										class="crfgroup-box" data-elementtype="group"
										data-id="1180490" style="min-height: 220px;">
										<div class="crfgroup-title"
											style="text-align: left; font-size: 16px;">
											<span class="remark-label"
												style="text-align: left; font-size: 16px;">基本信息</span>
										</div>
										<div style="display: none">
											<input class="form-control crfform-input crffield"
												data-fieldcode="F000089" data-fieldid="Ch_therapycode"
												data-fieldkind="0" data-id="1180493" data-recordid="304133"
												data-tableid="T_chem" id="F000089" name="F000089"
												type="hidden" value="">
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-label" colspan="5"
														style="text-align: center; width: 96px;"><span
														style="text-align: center; font-size: 12px;">开始日期</span></td>
													<td class="td-control" colspan="7"
														style="text-align: left; width: 134px;"><div
															class="input-append date datepicker"
															data-date-autoclose="true" data-date-format="yyyy-mm-dd"
															data-form="datepicker">
															<input class="form-control crfform-input crffield"
																data-checkrule="true" data-fieldcode="F000087"
																data-fieldid="Ch_startdate" data-fieldkind="0"
																data-id="1180491" data-recordid="304133" value="2016-05-20"
																data-tableid="T_chem" id="F000087" name="F000087"
																style="text-align: left; font-size: 12px; width: 87px;"
																type="text" value=""><span class="add-on"><i
																class="icofont-calendar"></i></span>
														</div></td>
													<td colspan="1"></td>
													<td class="td-label" colspan="4"
														style="text-align: right; width: 77px;"><span
														style="text-align: right; font-size: 12px;">结束日期</span></td>
													<td class="td-control" colspan="7"
														style="text-align: left; width: 134px;"><div
															class="input-append date datepicker"
															data-date-autoclose="true" data-date-format="yyyy-mm-dd"
															data-form="datepicker">
															<input class="form-control crfform-input crffield"
																data-checkrule="true" value="2016-05-20"
																data-compare="[{&quot;rid&quot;:6540,&quot;cid&quot;:73386,&quot;fid&quot;:1180491}]"
																data-fieldcode="F000088" data-fieldid="Ch_enddate"
																data-fieldkind="0" data-id="1180492"
																data-recordid="304133" data-tableid="T_chem"
																id="F000088" name="F000088"
																style="text-align: left; font-size: 12px; width: 87px;"
																type="text" value=""><span class="add-on"><i
																class="icofont-calendar"></i></span>
														</div></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="5"
														style="text-align: center; width: 96px;"><span
														style="text-align: center; font-size: 12px;">化疗方案</span></td>
													<td class="td-control" colspan="19"
														style="text-align: left; width: 365px;"><div
															style="display: inline-block; position: relative;">
															<input
																class="form-control crfform-input crffield ui-autocomplete-input"
																data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																data-fieldcode="F000090" data-fieldid="Ch_therapyname"
																data-fieldkind="0" data-form="wycombo" data-id="1180494"
																data-itemsource="2"
																data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																data-recordid="304133" data-tableid="T_chem"
																data-textfield="text" value="植柏4期"
																data-url="/Book/SearchChemotherapyJson" data-value=""
																id="F000090" name="F000090"
																style="text-align: left; font-size: 12px; padding-right: 16px; width: 335px;"
																type="text" value="" autocomplete="off"><i
																class="dropdown-btn icofont-sort-down"></i>
														</div></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="5"
														style="text-align: center; width: 96px;"><span
														style="text-align: center; font-size: 12px;">化疗科室</span></td>
													<td class="td-control" colspan="7"
														style="text-align: left; width: 134px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000091" data-fieldid="Ch_dept_id"
														data-fieldkind="0" data-id="1180495" data-itemsource="0"
														data-recordid="304133" data-tableid="T_chem"
														data-textfield="text" id="F000091" name="F000091"
														style="text-align: left; font-size: 12px; width: 128px;"><option
																title=""></option>
															<option value="门诊" title="门诊" selected="selected">门诊</option>
															<option value="肿瘤科" title="肿瘤科">肿瘤科</option></select></td>
													<td colspan="1"></td>
													<td class="td-label" colspan="4"
														style="text-align: right; width: 77px;"><span
														style="text-align: right; font-size: 12px;">治疗医师</span></td>
													<td class="td-control" colspan="7"
														style="text-align: left; width: 134px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000092" data-fieldid="Ch_doctor_id"
														data-fieldkind="0" data-id="1180496" data-itemsource="2"
														data-recordid="304133" data-tableid="T_chem"
														data-textfield="value" id="F000092" name="F000092"
														style="text-align: left; font-size: 12px; width: 128px;"><option
																title=""></option>
															<option value="4512" title="1">刘备</option></select></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="5"
														style="text-align: center; width: 96px;"><span
														style="text-align: center; font-size: 12px;">备注</span></td>
													<td class="td-control" colspan="19"
														style="text-align: left; width: 365px;"><textarea
															class="form-control crfform-input crffield"
															data-fieldcode="F000093" data-fieldid="Ch_remark"
															data-fieldkind="1" data-id="1180497"
															data-recordid="304133" data-tableid="T_chem" id="F000093"
															name="F000093" rows="3"
															style="text-align: left; font-size: 12px; width: 345px;"
															title=""></textarea></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
								<td class="td-control" colspan="24"
									style="text-align: left; width: 462px;"><div id="F000086"
										class="crfgroup-box" data-elementtype="group"
										data-id="1180501"
										style="min-height: 220px; max-height: 350px; overflow-y: auto;">
										<div class="crfgroup-title"
											style="text-align: left; font-size: 16px;">
											<span class="remark-label"
												style="text-align: left; font-size: 16px;">化疗方案信息</span>
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">化疗类型</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 154px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000094" data-fieldid="Ch_mode"
														data-fieldkind="0" data-id="1180502" data-itemsource="0"
														data-recordid="304133" data-tableid="T_chem"
														data-textfield="value" id="F000094" name="F000094"
														style="text-align: left; font-size: 12px; width: 148px;"><option
																title=""></option>
															<option value="1" title="辅助化疗AC">辅助化疗AC</option>
															<option value="2" title="晚期/进展期化疗">晚期/进展期化疗</option>
															<option value="3" title="新辅助化疗NC">新辅助化疗NC</option>
															<option value="4" title="巩固化疗" selected="selected">巩固化疗</option>
															<option value="5" title="支持治疗">支持治疗</option>
															<option value="24" title="转化治疗">转化治疗</option></select></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">方案类别</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 154px;"><select
														class="form-control crfform-input crffield"
														data-fieldcode="F000095" data-fieldid="Ch_type"
														data-fieldkind="0" data-id="1180503" data-itemsource="0"
														data-recordid="304133" data-tableid="T_chem"
														data-textfield="value" id="F000095" name="F000095"
														style="text-align: left; font-size: 12px; width: 148px;"><option
																title=""></option>
															<option value="1" title="一线化疗方案">一线化疗方案</option>
															<option value="2" title="二线化疗方案" selected="selected">二线化疗方案</option>
															<option value="3" title="三线化疗方案">三线化疗方案</option>
															<option value="4" title="四线化疗方案">四线化疗方案</option>
															<option value="5" title="其它">其它</option></select></td>
													<td colspan="2"></td>
													<td class="td-label" colspan="4"
														style="text-align: right; width: 77px;"><span
														style="text-align: right; font-size: 12px;">化疗期数</span></td>
													<td class="td-control" colspan="3"
														style="text-align: left; width: 57px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000096" data-fieldid="Ch_period"
														data-fieldkind="0" data-id="1180504" value="4"
														data-recordid="304133" data-tableid="T_chem" id="F000096"
														name="F000096"
														style="text-align: left; font-size: 12px; width: 37px;"
														type="text" value=""></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="7"
														style="text-align: right; width: 134px;"><span
														style="text-align: right; font-size: 12px;">方案间隔天数</span></td>
													<td class="td-control" colspan="3"
														style="text-align: left; width: 57px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000098" data-fieldid="Ch_intervaldays"
														data-fieldkind="0" data-id="1180507"
														data-recordid="304133" data-tableid="T_chem" id="F000098"
														name="F000098" value="7"
														style="text-align: left; font-size: 12px; width: 37px;"
														type="text" value=""></td>
													<td colspan="4"></td>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">实际间隔天数</span></td>
													<td class="td-control" colspan="3"
														style="text-align: left; width: 57px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000097" data-fieldid="Ch_actintervaldays"
														data-fieldkind="0" data-id="1180505" value="7"
														data-recordid="304133" data-tableid="T_chem" id="F000097"
														name="F000097"
														style="text-align: left; font-size: 12px; width: 37px;"
														type="text" value=""></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">身高</span></td>
													<td class="td-control" colspan="6"
														style="text-align: left; width: 115px;"><input value="170"
														class="form-control crfform-input crffield"
														data-fieldcode="F001709" data-fieldid="Ch_height"
														data-fieldkind="1" data-id="1214694"
														data-recordid="304133" data-tableid="T_chem" id="F001709"
														name="F001709"
														style="text-align: left; font-size: 12px; width: 57px;"
														type="text" value=""><span class="remark-label"
														style="text-align: left; font-size: 12px; padding-left: 3px;">cm</span></td>
													<td colspan="2"></td>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">体重</span></td>
													<td class="td-control" colspan="6"
														style="text-align: left; width: 115px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000102" data-fieldid="Ch_weight"
														data-fieldkind="1" data-id="1180509" value="53"
														data-recordid="304133" data-tableid="T_chem" id="F000102"
														name="F000102"
														style="text-align: left; font-size: 12px; width: 57px;"
														type="text" value=""><span class="remark-label"
														style="text-align: left; font-size: 12px; padding-left: 3px;">Kg</span></td>
												</tr>
												<tr>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">体表面积</span></td>
													<td class="td-control" colspan="6"
														style="text-align: left; width: 115px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000101" data-fieldid="Ch_bsa"
														data-fieldkind="1" data-id="1180508" value="27"
														data-recordid="304133" data-tableid="T_chem" id="F000101"
														name="F000101"
														style="text-align: left; font-size: 12px; width: 57px;"
														type="text" value=""><span class="remark-label"
														style="text-align: left; font-size: 12px; padding-left: 3px;">m2</span></td>
												</tr>
												<tr>
													<td colspan="24" style="width: 462px;"><hr
															style="height: 1px; border: 0; border-top: 1px solid #cccccc; padding: 0; margin: 0px 0 0px 0;"></td>
												</tr>
												<tr>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">血清肌酐</span></td>
													<td class="td-control" colspan="8"
														style="text-align: left; width: 154px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000234" data-fieldid="Ch_chemserum"
														data-fieldkind="0" data-id="1180510"
														data-recordid="304133" data-tableid="T_chem" id="F000234"
														name="F000234" value="50"
														style="text-align: left; font-size: 12px; width: 57px;"
														type="text" value=""><span class="remark-label"
														style="text-align: left; font-size: 12px; padding-left: 3px;">μmol/L</span></td>
													<td class="td-label" colspan="6"
														style="text-align: right; width: 115px;"><span
														style="text-align: right; font-size: 12px;">卡铂理论剂量</span></td>
													<td class="td-control" colspan="6"
														style="text-align: left; width: 115px;"><input
														class="form-control crfform-input crffield"
														data-fieldcode="F000235" data-fieldid="Ch_carboplatindose"
														data-fieldkind="0" data-id="1180511" value="20"
														data-recordid="304133" data-tableid="T_chem" id="F000235"
														name="F000235"
														style="text-align: left; font-size: 12px; width: 95px;"
														type="text" value=""></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td class="td-control" colspan="48"
									style="text-align: left; width: 924px;"><div id="F000103"
										class="crfgroup-box" data-elementtype="group"
										data-id="1180515">
										<div class="crfgroup-title"
											style="text-align: left; font-size: 16px;">
											<span class="remark-label"
												style="text-align: left; font-size: 16px;">药物信息</span>
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-control" colspan="48"
														style="text-align: left; width: 924px;"><div
															id="F000104" class="crftable-edit"
															data-allowdeldefault="0" data-defaultval="[]"
															data-elementtype="table" data-id="1180516"
															data-recordid="304134" data-tableid="T_chem_medication">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<td style="text-align: left; width: 38px">编号</td>
																		<td style="text-align: center; width: 115px">药物名称</td>
																		<td style="text-align: center; width: 115px">商品名</td>
																		<td style="text-align: center; width: 77px">计算单位</td>
																		<td style="text-align: center; width: 57px">理论剂量</td>
																		<td style="text-align: center; width: 57px">实际剂量</td>
																		<td style="text-align: center; width: 77px">剂量单位</td>
																		<td style="text-align: center; width: 154px">详细用法</td>
																		<td style="text-align: center; width: 57px">延期</td>
																		<td style="text-align: center; width: 57px">减量</td>
																		<td style="width: 30px">删除</td>
																	</tr>
																</thead>
																<tbody class="list-template hidden">
																	<tr>
																		<td style="text-align: left; width: 38px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="R000000"
																			name="R000000"
																			style="text-align: right; font-size: 12px;">编号</span></td>
																		<td style="text-align: center; width: 115px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F000106" data-fieldid="Me_name"
																					data-fieldkind="0" data-form="wycombo"
																					data-id="1180518" data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="text"
																					data-url="/Book/SearchMedicationJson" data-value=""
																					id="F000106" name="F000106"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 85px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 115px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F000107"
																					data-fieldid="Me_productname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180519"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="text"
																					data-url="/Book/SearchMedicationProductJson"
																					data-value="" id="F000107" name="F000107"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 85px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 77px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-datas="[{&quot;value&quot;:&quot;AUC&quot;,&quot;text&quot;:&quot;AUC&quot;},{&quot;value&quot;:&quot;mg/m2&quot;,&quot;text&quot;:&quot;毫克/每平米&quot;},{&quot;value&quot;:&quot;mg/kg&quot;,&quot;text&quot;:&quot;毫克/公斤&quot;},{&quot;value&quot;:&quot;μg/kg&quot;,&quot;text&quot;:&quot;微克/公斤&quot;},{&quot;value&quot;:&quot;-&quot;,&quot;text&quot;:&quot;无&quot;}]"
																					data-fieldcode="F000704" data-fieldid="Me_unit"
																					data-fieldkind="0" data-form="wycombo"
																					data-id="1180525" data-itemsource="0"
																					data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="value" data-value="" id="F000704"
																					name="F000704"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 47px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 57px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000110" data-fieldid="Me_thrdose"
																			data-fieldkind="0" data-id="1180521"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000110"
																			name="F000110"
																			style="text-align: left; font-size: 12px; width: 37px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 57px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000705" data-fieldid="Me_actdose"
																			data-fieldkind="0" data-id="1180526"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000705"
																			name="F000705"
																			style="text-align: left; font-size: 12px; width: 37px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 77px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-datas="[{&quot;value&quot;:&quot;mg&quot;,&quot;text&quot;:&quot;mg&quot;},{&quot;value&quot;:&quot;μg&quot;,&quot;text&quot;:&quot;μg&quot;}]"
																					data-fieldcode="F000109"
																					data-fieldid="Me_doseunits" data-fieldkind="1"
																					data-form="wycombo" data-id="1180520"
																					data-itemsource="0" data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="text" data-value="" id="F000109"
																					name="F000109"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 47px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 154px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000113" data-fieldid="Me_usemethod"
																			data-fieldkind="0" data-id="1180522"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000113"
																			name="F000113"
																			style="text-align: left; font-size: 12px; width: 134px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 57px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000114" data-fieldid="Me_delayflag"
																			data-fieldkind="0" data-id="1180523"
																			data-itemsource="0" data-recordid="304134"
																			data-tableid="T_chem_medication"
																			data-textfield="value" id="F000114" name="F000114"
																			style="text-align: left; font-size: 12px; width: 51px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="text-align: center; width: 57px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000115"
																			data-fieldid="Me_decreaseflag" data-fieldkind="1"
																			data-id="1180524" data-itemsource="0"
																			data-recordid="304134"
																			data-tableid="T_chem_medication"
																			data-textfield="value" id="F000115" name="F000115"
																			style="text-align: left; font-size: 12px; width: 51px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000105" data-fieldid="Me_code"
																			data-fieldkind="0" data-id="1180517"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000105"
																			name="F000105" type="hidden" value=""><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000706"
																			data-fieldid="Me_standarddose" data-fieldkind="0"
																			data-id="1180527" data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000706"
																			name="F000706"
																			style="text-align: left; font-size: 12px; width: 95px;"
																			type="text" value=""></td>
																	</tr>
																</tbody>
																<tbody class="list-data">
																	<tr data-id="0">
																		<td style="text-align: left; width: 38px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="R000000"
																			name="R000000"
																			style="text-align: right; font-size: 12px;">1</span></td>
																		<td style="text-align: center; width: 115px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F000106" data-fieldid="Me_name"
																					data-fieldkind="0" data-form="wycombo"
																					data-id="1180518" data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="text"
																					data-url="/Book/SearchMedicationJson" data-value=""
																					id="F000106_56" name="F000106_56"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 85px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 115px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F000107"
																					data-fieldid="Me_productname" data-fieldkind="0"
																					data-form="wycombo" data-id="1180519"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="text"
																					data-url="/Book/SearchMedicationProductJson"
																					data-value="" id="F000107_56" name="F000107_56"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 85px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 77px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-datas="[{&quot;value&quot;:&quot;AUC&quot;,&quot;text&quot;:&quot;AUC&quot;},{&quot;value&quot;:&quot;mg/m2&quot;,&quot;text&quot;:&quot;毫克/每平米&quot;},{&quot;value&quot;:&quot;mg/kg&quot;,&quot;text&quot;:&quot;毫克/公斤&quot;},{&quot;value&quot;:&quot;μg/kg&quot;,&quot;text&quot;:&quot;微克/公斤&quot;},{&quot;value&quot;:&quot;-&quot;,&quot;text&quot;:&quot;无&quot;}]"
																					data-fieldcode="F000704" data-fieldid="Me_unit"
																					data-fieldkind="0" data-form="wycombo"
																					data-id="1180525" data-itemsource="0"
																					data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="value" data-value=""
																					id="F000704_56" name="F000704_56"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 47px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 57px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000110" data-fieldid="Me_thrdose"
																			data-fieldkind="0" data-id="1180521"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000110_56"
																			name="F000110_56"
																			style="text-align: left; font-size: 12px; width: 37px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 57px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000705" data-fieldid="Me_actdose"
																			data-fieldkind="0" data-id="1180526"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000705_56"
																			name="F000705_56"
																			style="text-align: left; font-size: 12px; width: 37px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 77px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-datas="[{&quot;value&quot;:&quot;mg&quot;,&quot;text&quot;:&quot;mg&quot;},{&quot;value&quot;:&quot;μg&quot;,&quot;text&quot;:&quot;μg&quot;}]"
																					data-fieldcode="F000109"
																					data-fieldid="Me_doseunits" data-fieldkind="1"
																					data-form="wycombo" data-id="1180520"
																					data-itemsource="0" data-recordid="304134"
																					data-tableid="T_chem_medication"
																					data-textfield="text" data-value="" id="F000109_56"
																					name="F000109_56"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 47px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 154px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000113" data-fieldid="Me_usemethod"
																			data-fieldkind="0" data-id="1180522"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000113_56"
																			name="F000113_56"
																			style="text-align: left; font-size: 12px; width: 134px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 57px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000114" data-fieldid="Me_delayflag"
																			data-fieldkind="0" data-id="1180523"
																			data-itemsource="0" data-recordid="304134"
																			data-tableid="T_chem_medication"
																			data-textfield="value" id="F000114_56"
																			name="F000114_56"
																			style="text-align: left; font-size: 12px; width: 51px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="text-align: center; width: 57px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000115"
																			data-fieldid="Me_decreaseflag" data-fieldkind="1"
																			data-id="1180524" data-itemsource="0"
																			data-recordid="304134"
																			data-tableid="T_chem_medication"
																			data-textfield="value" id="F000115_56"
																			name="F000115_56"
																			style="text-align: left; font-size: 12px; width: 51px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																			</div></td>
																		<td style="display: none;"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000105" data-fieldid="Me_code"
																			data-fieldkind="0" data-id="1180517"
																			data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000105_56"
																			name="F000105_56" type="hidden" value=""><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000706"
																			data-fieldid="Me_standarddose" data-fieldkind="0"
																			data-id="1180527" data-recordid="304134"
																			data-tableid="T_chem_medication" id="F000706_56"
																			name="F000706_56"
																			style="text-align: left; font-size: 12px; width: 95px;"
																			type="text" value=""></td>
																	</tr>
																</tbody>
																<tbody class="list-deleted hidden"></tbody>
																<tbody>
																	<tr>
																		<td colspan="11" style="text-align: right;"><div
																				class="btn-group box-btn-right">
																			</div></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td class="td-control" colspan="48"
									style="text-align: left; width: 924px;"><div id="F001065"
										class="crfgroup-box" data-elementtype="group"
										data-id="1180539">
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="leftlabel td-label" colspan="6"
														style="text-align: left; width: 115px;"><span
														style="text-align: left; font-size: 12px;">有无合并用药</span></td>
													<td class="td-control" colspan="6"
														style="text-align: left; width: 115px;"><div
															class="radio-container" data-form="radio" id="F000116">
															<label class="radio"><input data-value="1"
																id="F000116_1773439" name="F000116_items"
																type="checkbox" value="1">有</label><label class="radio"><input
																data-value="0" id="F000116_1773440" name="F000116_items"
																type="checkbox" value="0">无</label><input checked="checked"
																class="form-control crfform-input crffield"
																data-fieldcode="F000116"
																data-fieldid="Su_concomitantmedication"
																data-fieldkind="1" data-id="1180540"
																data-recordid="304133" data-tableid="T_summary"
																data-textfield="value" id="F000116_val"
																name="F000116_val"
																style="text-align: left; font-size: 12px; width: 95px;"
																type="hidden">
														</div></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td class="td-control" colspan="48" data-ref-fieldcode="F000116"
									data-ref-itemvalue="1" data-ref-type="show"
									style="text-align: left; display: none; width: 924px;"><div
										id="F000117" class="crfgroup-box" data-elementtype="group"
										data-id="1180528">
										<div class="crfgroup-title"
											style="text-align: left; font-size: 16px;">
											<span class="remark-label"
												style="text-align: left; font-size: 16px;">伴随治疗</span>
										</div>
										<table border="0" cellpadding="3" cellspacing="0"
											class="table-crfform">
											<tbody>
												<tr>
													<td class="td-control" colspan="48"
														style="text-align: left; width: 924px;"><div
															id="F000118" class="crftable-edit"
															data-allowdeldefault="0" data-defaultval="[]"
															data-elementtype="table" data-id="1180529"
															data-recordid="304135" data-tableid="T_treatmenthis">
															<table class="table table-bordered">
																<thead>
																	<tr>
																		<td style="text-align: center; width: 115px">编号</td>
																		<td style="text-align: center; width: 115px">开始日期</td>
																		<td style="text-align: center; width: 154px">药物名称</td>
																		<td style="text-align: center; width: 77px">每次剂量</td>
																		<td style="text-align: center; width: 96px">剂量单位</td>
																		<td style="text-align: center; width: 96px">给药频率</td>
																		<td style="text-align: center; width: 96px">给药途径</td>
																		<td style="text-align: center; width: 115px">治疗目的</td>
																		<td style="text-align: center; width: 57px">持续</td>
																		<td style="text-align: center; width: 115px">结束日期</td>
																		<td style="width: 30px">删除</td>
																	</tr>
																</thead>
																<tbody class="list-template hidden">
																	<tr>
																		<td style="text-align: center; width: 115px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304135" data-tableid="T_treatmenthis"
																			id="R000000" name="R000000"
																			style="text-align: right; font-size: 12px;">编号</span></td>
																		<td style="text-align: center; width: 115px"><div
																				class="input-append date datepicker"
																				data-date-autoclose="true"
																				data-date-format="yyyy-mm-dd" data-form="datepicker">
																				<input
																					class="form-control crfform-input list-crffield"
																					data-checkrule="true" data-fieldcode="F000119"
																					data-fieldid="Ct_startdate" data-fieldkind="0"
																					data-id="1180530" data-recordid="304135"
																					data-tableid="T_treatmenthis" id="F000119"
																					name="F000119"
																					style="text-align: left; font-size: 12px; width: 68px;"
																					type="text" value=""><span class="add-on"><i
																					class="icofont-calendar"></i></span>
																			</div></td>
																		<td style="text-align: center; width: 154px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F000121"
																					data-fieldid="Ct_medication" data-fieldkind="0"
																					data-form="wycombo" data-id="1180532"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304135"
																					data-tableid="T_treatmenthis" data-textfield="text"
																					data-url="/Book/SearchMedicationJson" data-value=""
																					id="F000121" name="F000121"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 85px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 77px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000122" data-fieldid="Ct_dose"
																			data-fieldkind="1" data-id="1180533"
																			data-recordid="304135" data-tableid="T_treatmenthis"
																			id="F000122" name="F000122"
																			style="text-align: left; font-size: 12px; width: 57px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 96px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001270" data-fieldid="Ct_doseunit"
																			data-fieldkind="1" data-id="1180538"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001270" name="F001270"
																			style="text-align: left; font-size: 12px; width: 90px;"><option
																					title=""></option>
																				<option value="1" title="微克">微克</option>
																				<option value="2" title="毫克">毫克</option>
																				<option value="3" title="克">克</option>
																				<option value="4" title="毫升">毫升</option>
																				<option value="5" title="毫当量">毫当量</option>
																				<option value="6" title="国际单位">国际单位</option>
																				<option value="7" title="单位">单位</option>
																				<option value="8" title="胶囊">胶囊</option>
																				<option value="9" title="片">片</option>
																				<option value="10" title="滴">滴</option>
																				<option value="11" title="喷">喷</option>
																				<option value="99" title="其他">其他</option></select></td>
																		<td style="text-align: center; width: 96px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000124" data-fieldid="Ct_dosefreq"
																			data-fieldkind="1" data-id="1180534"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000124" name="F000124"
																			style="text-align: left; font-size: 12px; width: 90px;"><option
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
																		<td style="text-align: center; width: 96px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000125" data-fieldid="Ct_route"
																			data-fieldkind="1" data-id="1180535"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000125" name="F000125"
																			style="text-align: left; font-size: 12px; width: 90px;"><option
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
																		<td style="text-align: center; width: 115px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000127" data-fieldid="Ct_purpose"
																			data-fieldkind="1" data-id="1180536"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000127" name="F000127"
																			style="text-align: left; font-size: 12px; width: 109px;"><option
																					title=""></option>
																				<option value="1" title="针对化疗预防">针对化疗预防</option>
																				<option value="2" title="针对不良反应">针对不良反应</option></select></td>
																		<td style="text-align: center; width: 57px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000128" data-fieldid="Ct_ongoing"
																			data-fieldkind="1" data-id="1180537"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000128" name="F000128"
																			style="text-align: left; font-size: 12px; width: 51px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="text-align: center; width: 115px"><div
																				class="input-append date datepicker"
																				data-date-autoclose="true"
																				data-date-format="yyyy-mm-dd" data-form="datepicker">
																				<input
																					class="form-control crfform-input list-crffield"
																					data-checkrule="true" data-fieldcode="F000120"
																					data-fieldid="Ct_enddate" data-fieldkind="0"
																					data-id="1180531" data-recordid="304135"
																					data-tableid="T_treatmenthis" id="F000120"
																					name="F000120"
																					style="text-align: left; font-size: 12px; width: 68px;"
																					type="text" value=""><span class="add-on"><i
																					class="icofont-calendar"></i></span>
																			</div></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																			</div></td>
																		<td style="display: none;"></td>
																	</tr>
																</tbody>
																<tbody class="list-data">
																	<tr data-id="0">
																		<td style="text-align: center; width: 115px"><span
																			class="list-crffield" data-fieldcode="R000000"
																			data-fieldid="" data-fieldkind="0" data-id="0"
																			data-recordid="304135" data-tableid="T_treatmenthis"
																			id="R000000" name="R000000"
																			style="text-align: right; font-size: 12px;">1</span></td>
																		<td style="text-align: center; width: 115px"><div
																				class="input-append date datepicker"
																				data-date-autoclose="true"
																				data-date-format="yyyy-mm-dd" data-form="datepicker">
																				<input
																					class="form-control crfform-input list-crffield"
																					data-checkrule="true" data-fieldcode="F000119"
																					data-fieldid="Ct_startdate" data-fieldkind="0"
																					data-id="1180530" data-recordid="304135"
																					data-tableid="T_treatmenthis" id="F000119_98"
																					name="F000119_98"
																					style="text-align: left; font-size: 12px; width: 68px;"
																					type="text" value=""><span class="add-on"><i
																					class="icofont-calendar"></i></span>
																			</div></td>
																		<td style="text-align: center; width: 154px"><div
																				style="display: inline-block; position: relative;">
																				<input
																					class="form-control crfform-input list-crffield ui-autocomplete-input"
																					data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																					data-fieldcode="F000121"
																					data-fieldid="Ct_medication" data-fieldkind="0"
																					data-form="wycombo" data-id="1180532"
																					data-itemsource="2"
																					data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																					data-recordid="304135"
																					data-tableid="T_treatmenthis" data-textfield="text"
																					data-url="/Book/SearchMedicationJson" data-value=""
																					id="F000121_98" name="F000121_98"
																					style="text-align: left; font-size: 12px; padding-right: 16px; width: 85px;"
																					type="text" value="" autocomplete="off"><i
																					class="dropdown-btn icofont-sort-down"></i>
																			</div></td>
																		<td style="text-align: center; width: 77px"><input
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000122" data-fieldid="Ct_dose"
																			data-fieldkind="1" data-id="1180533"
																			data-recordid="304135" data-tableid="T_treatmenthis"
																			id="F000122_98" name="F000122_98"
																			style="text-align: left; font-size: 12px; width: 57px;"
																			type="text" value=""></td>
																		<td style="text-align: center; width: 96px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F001270" data-fieldid="Ct_doseunit"
																			data-fieldkind="1" data-id="1180538"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F001270_98" name="F001270_98"
																			style="text-align: left; font-size: 12px; width: 90px;"><option
																					title=""></option>
																				<option value="1" title="微克">微克</option>
																				<option value="2" title="毫克">毫克</option>
																				<option value="3" title="克">克</option>
																				<option value="4" title="毫升">毫升</option>
																				<option value="5" title="毫当量">毫当量</option>
																				<option value="6" title="国际单位">国际单位</option>
																				<option value="7" title="单位">单位</option>
																				<option value="8" title="胶囊">胶囊</option>
																				<option value="9" title="片">片</option>
																				<option value="10" title="滴">滴</option>
																				<option value="11" title="喷">喷</option>
																				<option value="99" title="其他">其他</option></select></td>
																		<td style="text-align: center; width: 96px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000124" data-fieldid="Ct_dosefreq"
																			data-fieldkind="1" data-id="1180534"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000124_98" name="F000124_98"
																			style="text-align: left; font-size: 12px; width: 90px;"><option
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
																		<td style="text-align: center; width: 96px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000125" data-fieldid="Ct_route"
																			data-fieldkind="1" data-id="1180535"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000125_98" name="F000125_98"
																			style="text-align: left; font-size: 12px; width: 90px;"><option
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
																		<td style="text-align: center; width: 115px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000127" data-fieldid="Ct_purpose"
																			data-fieldkind="1" data-id="1180536"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000127_98" name="F000127_98"
																			style="text-align: left; font-size: 12px; width: 109px;"><option
																					title=""></option>
																				<option value="1" title="针对化疗预防">针对化疗预防</option>
																				<option value="2" title="针对不良反应">针对不良反应</option></select></td>
																		<td style="text-align: center; width: 57px"><select
																			class="form-control crfform-input list-crffield"
																			data-fieldcode="F000128" data-fieldid="Ct_ongoing"
																			data-fieldkind="1" data-id="1180537"
																			data-itemsource="0" data-recordid="304135"
																			data-tableid="T_treatmenthis" data-textfield="value"
																			id="F000128_98" name="F000128_98"
																			style="text-align: left; font-size: 12px; width: 51px;"><option
																					title=""></option>
																				<option value="1" title="是">是</option>
																				<option value="0" title="否">否</option></select></td>
																		<td style="text-align: center; width: 115px"><div
																				class="input-append date datepicker"
																				data-date-autoclose="true"
																				data-date-format="yyyy-mm-dd" data-form="datepicker">
																				<input
																					class="form-control crfform-input list-crffield"
																					data-checkrule="true" data-fieldcode="F000120"
																					data-fieldid="Ct_enddate" data-fieldkind="0"
																					data-id="1180531" data-recordid="304135"
																					data-tableid="T_treatmenthis" id="F000120_98"
																					name="F000120_98"
																					style="text-align: left; font-size: 12px; width: 68px;"
																					type="text" value=""><span class="add-on"><i
																					class="icofont-calendar"></i></span>
																			</div></td>
																		<td style="width: 50px; text-align: center;"><div
																				class="btn-group">
																			</div></td>
																		<td style="display: none;"></td>
																	</tr>
																</tbody>
																<tbody class="list-deleted hidden"></tbody>
																<tbody>
																	<tr>
																		<td colspan="11" style="text-align: right;"><div
																				class="btn-group box-btn-right">
																			</div></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
												<tr>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
													<td
														style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div></td>
							</tr>
							<tr>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
								<td
									style="margin: 0; padding: 0; font-size: 1px; line-height: 1px; height: 1px; width: 19px">&nbsp;</td>
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