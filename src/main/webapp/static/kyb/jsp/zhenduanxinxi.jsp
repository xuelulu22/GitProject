<!DOCTYPE html>
<!-- saved from url=(0087)https://crabyter.sinyoo.net/Study/Patient/CrfInput/2644/73384/366336?fromid=0&v=2147565 -->
<html style="font-family: &amp; #39;">
<head style="font-family: &#39;Microsoft Yahei&#39;;">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8" style="font-family: &amp; #39;">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<title style="font-family: &#39;Microsoft Yahei&#39;;">住院 -
	住院与诊断 - 长海大肠癌模板 - Crabyter肿瘤科研数据管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	style="font-family: &amp; #39;">
<meta name="description" content="" style="font-family: &amp; #39;">
<meta name="author" content="stilearning"
	style="font-family: &amp; #39;">

<!-- google font -->

<!-- styles -->
<!--Content/bootstrap.css版本太新了,3.0的，这个是2.2的-->
<link
	href="static/kyb/css/bootstrap.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/bootstrap-responsive.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/stilearn.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/stilearn-responsive.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/stilearn-helper.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/stilearn-icon.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/colorpicker.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/font-awesome.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/animate.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/uniform.default.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/stilearn-rewrite.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/datepicker.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">



<link
	href="static/kyb/css/bootstrap-wysihtml5.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="~/Content/stilearn/css/html5shim.js"></script>
    <![endif]-->
<!-- easyui -->
<link rel="stylesheet" type="text/css" href="static/kyb/css/easyui(1).css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css" href="static/kyb/css/icon.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<!-- crabyter -->
<link rel="stylesheet" type="text/css" href="static/kyb/css/style(1).css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css" href="static/kyb/css/Site(1).css"
	style="font-family: &#39;Microsoft Yahei&#39;;">

<link
	href="static/kyb/css/jquery-ui-custom-1.11.2.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link
	href="static/kyb/css/jquery-ui-wy.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">
<link href="static/kyb/css/layer.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">

<link href="static/kyb/css/iconfont.css"
	rel="stylesheet" style="font-family: &#39;Microsoft Yahei&#39;;">

<!-- 这句放到前面去了
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    -->

<link rel="stylesheet" type="text/css" href="static/kyb/css/crf.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css" href="static/kyb/css/crf-input.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet" type="text/css" href="static/kyb/css/jquery.fileupload.css"
	style="font-family: &#39;Microsoft Yahei&#39;;">

<link rel="stylesheet"
	href="static/kyb/css/layer.css"
	id="layui_layer_skinlayercss"
	style="font-family: &#39;Microsoft Yahei&#39;;">
<link rel="stylesheet"
	href="static/kyb/css/layer.ext.css"
	id="layui_layer_skinlayerextcss">
</head>

<body
	style="overflow-x: auto; font-family: &amp; #39; Microsoft Yahei&amp;#39;; height: 451px; background: url(static/kyb/images/noise.png) rgb(255, 255, 255);"
	onbeforeunload="return beforeFrameHtmlUnload();">

	<!-- section content -->



	<input type="hidden" id="Study_id" value="2644"
		style="font-family: &amp; #39;">
	<input type="hidden" id="Study_patient_id" value="366336"
		style="font-family: &amp; #39;">
	<input type="hidden" id="Crf_id" value="73384"
		style="font-family: &amp; #39;">
	<input type="hidden" id="Visit_id" value="2147565"
		style="font-family: &amp; #39;">
	<input type="hidden" id="Visitguid" value=""
		style="font-family: &amp; #39;">
	<input type="hidden" id="Isdialog" style="font-family: &amp; #39;">
	<input type="hidden" id="Patient_Status" name="Patient_Status"
		value="1" style="font-family: &amp; #39;">
	<input type="hidden" id="patientCrfStatus" value="0"
		style="font-family: &amp; #39;">
	<input type="hidden" id="isCloseTab" value="1"
		style="font-family: &amp; #39;">


	<div
		style="position: relative; margin: 0px; padding: 0px; font-family: &amp; #39; Microsoft Yahei&amp;#39;; background: url(static/kyb/css/images/noise.png) rgb(255, 255, 255);">
		<div id="crfpanel" style="margin-top: 40px; font-family: &amp; #39;">
			<form action="" class="form-horizontal form-inline crfform"
				id="inputform" method="post"
				style="min-width: 1000px; margin: 0px; padding: 0px; font-family: &amp; #39;"
				novalidate="novalidate">
				<input name="__RequestVerificationToken" type="hidden"
					value="JkVIpXSId0BOiFqHpwAVQ4eir-bzs41UiigymX6QBDaUGHVCnn8Shpe6hi2sX7uPbq8_JqaywHla468Lx6DY9hlFHEXOot0wZXhpmWzs9Jc1"
					style="font-family: &amp; #39;">
				<div class="crfroot" data-id="73384"
					style="width: 1000px; font-family: &amp; #39;">
					<div class="crfgroup-emptybox" style="font-family: &amp; #39;">
						<table border="0" cellpadding="3" cellspacing="0"
							class="table-crfform" style="font-family: &amp; #39;">
							<tbody style="font-family: &amp; #39;">
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="42"
										style="text-align: left; width: 840px; font-family: &amp; #39;"><div
											id="F001072" class="crfgroup-box-noborder"
											data-elementtype="group" data-id="1180347"
											style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(10, 9, 9); text-align: left; font-size: 16px; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(10, 9, 9); text-align: left; font-size: 16px; font-family: &amp; #39;">
													住院信息</span>
											</div>
											<div style="display: none; font-family: &amp; #39;">
												<input class="form-control crfform-input crffield hasdata"
													data-defaultval="1" data-fieldcode="F000129"
													data-fieldid="Io_type" data-fieldkind="0" data-id="1180348"
													data-recordid="304111" data-tableid="T_inhospitalhis"
													id="F000129" name="F000129" type="hidden" value="1"
													ischeckconfirm="false" isfrozenconfirm="false"
													islockconfirm="false" issignconfirm="false"
													ishasquery="false" datastatus="2" disabledsource="0"
													data-data-id="0" style="font-family: &amp; #39;">
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">住院号</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><input value="130024"
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F000131" data-fieldid="Io_hospid"
															data-fieldkind="0" data-id="1180349"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F000131" name="F000131"
															style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">患者ID</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><input value="140055"
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F001637" data-fieldid="Patid"
															data-fieldkind="0" data-id="1193039"
															data-recordid="304109" data-tableid="P_study_patient"
															id="F001637" name="F001637"
															style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="76373112"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">入院日期</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input crffield"
																	data-checkrule="true" data-fieldcode="F000132" value="2016-05-03"
																	data-fieldid="Io_admissiondate" data-fieldkind="0"
																	data-id="1180350" data-recordid="304111"
																	data-tableid="T_inhospitalhis" id="F000132"
																	name="F000132"
																	style="text-align: left; font-size: 12px; width: 113px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">入院年龄</span></td>
														<td class="td-control" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><input  value="54"
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F000147" data-fieldid="Io_admissionage"
															data-fieldkind="0" data-id="1180354"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F000147" name="F000147"
															style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">主管医师</span></td>
														<td class="td-control" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input hasdata"
																	data-fieldcode="F000136" value="刘备"
																	data-fieldid="Io_dischargedoctor" data-fieldkind="0"
																	data-form="wycombo" data-id="1180353"
																	data-itemsource="2"
																	data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																	data-recordid="304111" data-tableid="T_inhospitalhis"
																	data-textfield="value"
																	data-url="/Book/SearchDoctorJson" data-value=""
																	id="F000136" name="F000136"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off" data-text="33"
																	ischeckconfirm="false" isfrozenconfirm="false"
																	islockconfirm="false" issignconfirm="false"
																	ishasquery="false" datastatus="0" disabledsource="0"
																	data-data-id="0"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">出院日期</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input crffield"
																	data-checkrule="true" value="2016-05-15"
																	data-compare="[{&quot;rid&quot;:6539,&quot;cid&quot;:73384,&quot;fid&quot;:1180350}]"
																	data-fieldcode="F000134"
																	data-fieldid="Io_dischargedate" data-fieldkind="0"
																	data-id="1180351" data-recordid="304111"
																	data-tableid="T_inhospitalhis" id="F000134"
																	name="F000134"
																	style="text-align: left; font-size: 12px; width: 113px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">住院天数</span></td>
														<td class="td-control" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F000148" value="12"
															data-fieldid="Io_hospitalizationdays" data-fieldkind="1"
															data-id="1180355" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F000148"
															name="F000148"
															style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">出院科室</span></td>
														<td class="td-control" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><select
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F000135" data-fieldid="Io_dischargedept"
															data-fieldkind="0" data-id="1180352" data-itemsource="2"
															data-recordid="304111" data-tableid="T_inhospitalhis" value="肛肠外科"
															data-textfield="value" id="F000135" name="F000135"
															style="text-align: left; font-size: 12px; width: 94px; font-family: &amp; #39;"
															ischeckconfirm="false" isfrozenconfirm="false"
															islockconfirm="false" issignconfirm="false"
															ishasquery="false" datastatus="0" disabledsource="0"
															data-data-id="0"><option title=""
																	style="font-family: &amp; #39;"></option>
																<option value="3347" title="肛肠外科"
																	style="font-family: &amp; #39;">肛肠外科</option></select></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">身高</span></td>
														<td class="td-control" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><input value="165"
															class="form-control crfform-input crffield hasdata"
															data-checkrule="true" data-fieldcode="F000149"
															data-fieldid="Io_height" data-fieldkind="0"
															data-id="1180356" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F000149"
															name="F000149"
															style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F000191"
															data-fieldid="Lo_unitheight" data-fieldkind="1"
															data-id="1180357" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F000191"
															name="F000191"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;"
															ischeckconfirm="false" isfrozenconfirm="false"
															islockconfirm="false" issignconfirm="false"
															ishasquery="false" datastatus="0" disabledsource="0"
															data-data-id="0">cm</span></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">体重</span></td>
														<td class="td-control" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata" value="52"
															data-checkrule="true" data-fieldcode="F000150"
															data-fieldid="Io_weight" data-fieldkind="0"
															data-id="1180358" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F000150"
															name="F000150"
															style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F000192"
															data-fieldid="Io_weightunit" data-fieldkind="1"
															data-id="1180359" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F000192"
															name="F000192"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;"
															ischeckconfirm="false" isfrozenconfirm="false"
															islockconfirm="false" issignconfirm="false"
															ishasquery="false" datastatus="0" disabledsource="0"
															data-data-id="0">Kg</span></td>
														<td class="leftlabel td-label" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">体表面积</span></td>
														<td class="td-control" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata" value="26"
															data-fieldcode="F000151" data-fieldid="Io_bsa"
															data-fieldkind="0" data-id="1180360"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F000151" name="F000151"
															style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">㎡</span></td>
														<td class="td-label" colspan="2"
															style="text-align: right; width: 40px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">BMI</span></td>
														<td class="td-control" colspan="3"
															style="text-align: left; width: 60px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata" value="24"
															data-fieldcode="F000152" data-fieldid="Io_bmi"
															data-fieldkind="0" data-id="1180362"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F000152" name="F000152"
															style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">住院KPS评分</span></td>
														<td class="td-control" colspan="12"
															style="text-align: left; width: 240px; font-family: &amp; #39;"><select
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F000570" data-fieldid="Io_kpsscore"
															data-fieldkind="1" data-id="1180363" data-itemsource="0"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															data-textfield="value" id="F000570" name="F000570"
															style="text-align: left; font-size: 12px; width: 234px; font-family: &amp; #39;"
															ischeckconfirm="false" isfrozenconfirm="false"
															islockconfirm="false" issignconfirm="false"
															ishasquery="false" datastatus="0" disabledsource="0"
															data-data-id="0"><option title=""
																	style="font-family: &amp; #39;"></option>
																<option value="100" title="100-正常，无症状和体征"
																	style="font-family: &amp; #39;">100-正常，无症状和体征</option>
																<option value="90" title="90-能进行正常活动，有轻微症状和体征"
																	style="font-family: &amp; #39;" selected="selected">90-能进行正常活动，有轻微症状和体征</option>
																<option value="80" title="80-勉强进行正常活动，有一些症状或体征"
																	style="font-family: &amp; #39;">80-勉强进行正常活动，有一些症状或体征</option>
																<option value="70" title="70-生活能自理，但不能维持正常生活和工作"
																	style="font-family: &amp; #39;">70-生活能自理，但不能维持正常生活和工作</option>
																<option value="60" title="60-生活能大部分自理，但偶尔需要别人帮助"
																	style="font-family: &amp; #39;">60-生活能大部分自理，但偶尔需要别人帮助</option>
																<option value="50" title="50-常需要人照料"
																	style="font-family: &amp; #39;">50-常需要人照料</option>
																<option value="40" title="40-生活不能自理，需要特别照顾和帮助"
																	style="font-family: &amp; #39;">40-生活不能自理，需要特别照顾和帮助</option>
																<option value="30" title="30-生活严重不能自理"
																	style="font-family: &amp; #39;">30-生活严重不能自理</option>
																<option value="20" title="20-病重，需要住院和积极的支持治疗"
																	style="font-family: &amp; #39;">20-病重，需要住院和积极的支持治疗</option>
																<option value="10" title="10-重危，临近死亡"
																	style="font-family: &amp; #39;">10-重危，临近死亡</option>
																<option value="0" title="0-死亡"
																	style="font-family: &amp; #39;">0-死亡</option></select></td>
														<td class="td-label" colspan="5"
															style="text-align: right; width: 100px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">住院ECOG评分</span></td>
														<td class="td-control" colspan="12"
															style="text-align: left; width: 240px; font-family: &amp; #39;"><select
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F000571" data-fieldid="Io_ecogscore"
															data-fieldkind="1" data-id="1180364" data-itemsource="0"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															data-textfield="value" id="F000571" name="F000571"
															style="text-align: left; font-size: 12px; width: 234px; font-family: &amp; #39;"
															ischeckconfirm="false" isfrozenconfirm="false"
															islockconfirm="false" issignconfirm="false"
															ishasquery="false" datastatus="0" disabledsource="0"
															data-data-id="0"><option title=""
																	style="font-family: &amp; #39;"></option>
																<option value="0" title="0-正常活动"
																	style="font-family: &amp; #39;">0-正常活动</option>
																<option value="1" title="1-症状轻，生活自在，能从事轻体力活动"
																	style="font-family: &amp; #39;">1-症状轻，生活自在，能从事轻体力活动</option>
																<option value="2" title="2-能耐受肿瘤的症状，生活自理，但白天卧床时间不超过50%"
																	style="font-family: &amp; #39;" selected="selected">2-能耐受肿瘤的症状，生活自理，但白天卧床时间不超过50%</option>
																<option value="3"
																	title="3-症状严重，白天卧床时间超过50%，但还能起床站立，部分生活能够自理"
																	style="font-family: &amp; #39;">3-症状严重，白天卧床时间超过50%，但还能起床站立，部分生活能够自理</option>
																<option value="4" title="4-病重卧床不起"
																	style="font-family: &amp; #39;">4-病重卧床不起</option>
																<option value="5" title="5-死亡"
																	style="font-family: &amp; #39;">5-死亡</option></select></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="42"
										style="text-align: left; width: 840px; font-family: &amp; #39;"><div
											id="F000584" class="crfgroup-box-noborder"
											data-elementtype="group" data-id="1180312"
											style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(3, 2, 2); text-align: left; font-size: 16px; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(3, 2, 2); text-align: left; font-size: 16px; font-family: &amp; #39;">症状及体征</span>
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="42"
										style="text-align: left; width: 840px; font-family: &amp; #39;"><div
											id="F000585" class="crftable-edit" data-allowdeldefault="1"
											data-defaultval="[{&quot;Rowindex&quot;:1,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;排便习惯改变&quot;}}},{&quot;Rowindex&quot;:2,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;血便&quot;}}},{&quot;Rowindex&quot;:3,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;腹痛&quot;}}},{&quot;Rowindex&quot;:4,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;腹部包块&quot;}}},{&quot;Rowindex&quot;:5,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;粪便性状改变&quot;}}},{&quot;Rowindex&quot;:6,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;消瘦&quot;}}},{&quot;Rowindex&quot;:7,&quot;Irow_id&quot;:&quot;0&quot;,&quot;FieldDatas&quot;:{&quot;Cs_name&quot;:{&quot;Value&quot;:&quot;&quot;,&quot;Valuestr&quot;:&quot;黄疸&quot;}}}]"
											data-elementtype="table" data-id="1180313"
											data-recordid="304112" data-tableid="T_clinicalsymptom"
											style="font-family: &amp; #39;">
											<table class="table table-bordered"
												style="font-family: &amp; #39;">
												<thead style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;">表号</td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;">症状名称</td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;">开始日期</td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;">结束日期</td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;">持续时间</td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;">时间单位</td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;">程度或性质</td>
														<td style="width: 30px; font-family: &amp; #39;"></td>
													</tr>
												</thead>
												<tbody class="list-template hidden"
													style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">表号</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input value="直肠息肉"
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588" name="F000588"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" ></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594" value="2016-05-03"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom" id="F000594"
																	name="F000594"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112" value="2016-05-15"
																	data-tableid="T_clinicalsymptom" id="F000595"
																	name="F000595"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842" name="F001842" value="1"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom" id="F000596"
															name="F000596"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
												</tbody>
												<tbody class="list-data" style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_17_c5d5zDEZ">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">1</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_17_c5d5zDEZ" name="F000588_17_c5d5zDEZ"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_17_c5d5zDEZ" name="F000594_17_c5d5zDEZ"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_17_c5d5zDEZ" name="F000595_17_c5d5zDEZ"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_17_c5d5zDEZ" name="F001842_17_c5d5zDEZ"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom" id="F000596_17_c5d5zDEZ"
															name="F000596_17_c5d5zDEZ"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_80_yEdX87Dx">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">2</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_80_yEdX87Dx" name="F000588_80_yEdX87Dx"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_80_yEdX87Dx" name="F000594_80_yEdX87Dx"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_80_yEdX87Dx" name="F000595_80_yEdX87Dx"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_80_yEdX87Dx" name="F001842_80_yEdX87Dx"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom" id="F000596_80_yEdX87Dx"
															name="F000596_80_yEdX87Dx"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_124_zeHdjNcx">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">3</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_124_zeHdjNcx" name="F000588_124_zeHdjNcx"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_124_zeHdjNcx" name="F000594_124_zeHdjNcx"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_124_zeHdjNcx" name="F000595_124_zeHdjNcx"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_124_zeHdjNcx" name="F001842_124_zeHdjNcx"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom"
															id="F000596_124_zeHdjNcx" name="F000596_124_zeHdjNcx"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_178_H3zYZzFN">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">4</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_178_H3zYZzFN" name="F000588_178_H3zYZzFN"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_178_H3zYZzFN" name="F000594_178_H3zYZzFN"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_178_H3zYZzFN" name="F000595_178_H3zYZzFN"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_178_H3zYZzFN" name="F001842_178_H3zYZzFN"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom"
															id="F000596_178_H3zYZzFN" name="F000596_178_H3zYZzFN"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_223_2JCZmAHX">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">5</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_223_2JCZmAHX" name="F000588_223_2JCZmAHX"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_223_2JCZmAHX" name="F000594_223_2JCZmAHX"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_223_2JCZmAHX" name="F000595_223_2JCZmAHX"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_223_2JCZmAHX" name="F001842_223_2JCZmAHX"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom"
															id="F000596_223_2JCZmAHX" name="F000596_223_2JCZmAHX"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_269_CJrCsiC3">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">6</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_269_CJrCsiC3" name="F000588_269_CJrCsiC3"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_269_CJrCsiC3" name="F000594_269_CJrCsiC3"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_269_CJrCsiC3" name="F000595_269_CJrCsiC3"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_269_CJrCsiC3" name="F001842_269_CJrCsiC3"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom"
															id="F000596_269_CJrCsiC3" name="F000596_269_CJrCsiC3"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_314_P26Zems6">
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">7</span></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield hasdata"
															data-fieldcode="F000588" data-fieldid="Cs_name"
															data-fieldkind="0" data-id="1180314"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F000588_314_P26Zems6" name="F000588_314_P26Zems6"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000594"
																	data-fieldid="Cs_startdate" data-fieldkind="0"
																	data-id="1180315" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000594_314_P26Zems6" name="F000594_314_P26Zems6"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 140px; font-family: &amp; #39;"><div
																class="input-append date datepicker"
																data-date-autoclose="true" data-date-format="yyyy-mm-dd"
																data-form="datepicker" style="font-family: &amp; #39;">
																<input class="form-control crfform-input list-crffield"
																	data-checkrule="true" data-fieldcode="F000595"
																	data-fieldid="Cs_enddate" data-fieldkind="0"
																	data-id="1180316" data-recordid="304112"
																	data-tableid="T_clinicalsymptom"
																	id="F000595_314_P26Zems6" name="F000595_314_P26Zems6"
																	style="text-align: right; font-size: 12px; width: 93px; font-family: &amp; #39;"
																	type="text" value=""><span class="add-on"
																	style="font-family: &amp; #39;"><i
																	class="icofont-calendar"
																	style="font-family: &amp; #39;"></i></span>
															</div></td>
														<td
															style="text-align: center; width: 100px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001842" data-fieldid="Cs_chixushijian"
															data-fieldkind="1" data-id="1416831"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															id="F001842_314_P26Zems6" name="F001842_314_P26Zems6"
															style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="text-align: center; width: 80px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001843" data-fieldid="Cs_shijiandanwei"
															data-fieldkind="1" data-id="1484742" data-itemsource="0"
															data-recordid="304112" data-tableid="T_clinicalsymptom"
															data-textfield="value" id="F001843" name="F001843"
															style="text-align: right; font-size: 12px; width: 74px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="1" title="分"
																	style="font-family: &amp; #39;">分</option>
																<option value="2" title="小时"
																	style="font-family: &amp; #39;">小时</option>
																<option value="3" title="天"
																	style="font-family: &amp; #39;">天</option>
																<option value="4" title="周"
																	style="font-family: &amp; #39;">周</option>
																<option value="5" title="月"
																	style="font-family: &amp; #39;">月</option>
																<option value="6" title="年"
																	style="font-family: &amp; #39;">年</option></select></td>
														<td
															style="text-align: center; width: 500px; font-family: &amp; #39;"><input
															class="form-control crfform-input list-crffield"
															data-fieldcode="F000596"
															data-fieldid="Cs_severityofsymptom" data-fieldkind="1"
															data-id="1180317" data-recordid="304112"
															data-tableid="T_clinicalsymptom"
															id="F000596_314_P26Zems6" name="F000596_314_P26Zems6"
															style="text-align: right; font-size: 12px; width: 380px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
												</tbody>
												<tbody class="list-deleted hidden"
													style="font-family: &amp; #39;"></tbody>
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td colspan="8"
															style="text-align: right; font-family: &amp; #39;"><div
																class="btn-group box-btn-right"
																style="font-family: &amp; #39;">
																<a
																	class="btn btn-mini btn-default addRow"
																	style="font-family: &amp; #39;"></a>
															</div></td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="42"
										style="text-align: left; width: 840px; font-family: &amp; #39;"><div
											id="F001824" class="crfgroup-box" data-elementtype="group"
											data-id="1414062" style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(25, 23, 23); text-align: left; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(25, 23, 23); text-align: left; font-family: &amp; #39;">腹部查体</span>
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">腹部视诊</span></td>
														<td class="td-control" colspan="15"
															style="text-align: left; width: 300px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001825"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001825_2137577"
																	name="F001825_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">平坦</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001825_2137578"
																	name="F001825_items" type="checkbox" checked="checked" value="2"
																	style="font-family: &amp; #39;">凹陷</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001825_2137579"
																	name="F001825_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">膨隆</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001825" data-fieldid="Cs_fubushizhen"
																	data-fieldkind="1" data-id="1414100"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001825_val"
																	name="F001825_val"
																	style="text-align: left; font-size: 12px; width: 280px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">胃肠型及蠕动波</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001836"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001836_2137609"
																	name="F001836_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">可见</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="0" id="F001836_2137610"
																	name="F001836_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">未见</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001836" 
																	data-fieldid="Cs_gastrointestinalandperistalticwave"
																	data-fieldkind="1" data-id="1414111"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001836_val"
																	name="F001836_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">腹壁静脉曲张</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001828"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="1" id="F001828_2137587"
																	name="F001828_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">未见</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001828_2137588"
																	name="F001828_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">可见</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001828"checked="checked"
																	data-fieldid="Cs_fubijingmaiquzhang" data-fieldkind="1"
																	data-id="1414103" data-recordid="304113"
																	data-tableid="T_clinicalsymptom" data-textfield="value"
																	id="F001828_val" name="F001828_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">腹部触诊</span></td>
														<td class="td-control" colspan="20"
															style="text-align: left; width: 400px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001826"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001826_2137580"
																	name="F001826_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">柔软</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="2" id="F001826_2137581"
																	name="F001826_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">松软</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001826_2137582"
																	name="F001826_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">板状腹</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="4" id="F001826_2137583"
																	name="F001826_items" type="checkbox" value="4"
																	style="font-family: &amp; #39;">紧张度增加</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="5" id="F001826_2137584"
																	name="F001826_items" type="checkbox" value="5"
																	style="font-family: &amp; #39;">揉面感</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001826" data-fieldid="Cs_fubuchuzhen"
																	data-fieldkind="1" data-id="1414101"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001826_val"
																	name="F001826_val"
																	style="text-align: left; font-size: 12px; width: 380px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">压痛</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001829"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input 
																	data-value="1" id="F001829_2137589"
																	name="F001829_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="2" id="F001829_2137590"
																	name="F001829_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">可及</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001829" data-fieldid="Cs_fubuyatong"
																	data-fieldkind="1" data-id="1414104"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001829_val"
																	name="F001829_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">反跳痛</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001830"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input 
																	data-value="1" id="F001830_2137591"
																	name="F001830_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="2" id="F001830_2137592"
																	name="F001830_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">可及</label><input checked="checked"
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001830" data-fieldid="Cs_fantiaotong"
																	data-fieldkind="1" data-id="1414105"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001830_val"
																	name="F001830_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="5"
															style="text-align: right; width: 100px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">腹腔内包块</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001835"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001835_2137608"
																	name="F001835_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="1" id="F001835_2137607"
																	name="F001835_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">可及</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001835"
																	data-fieldid="Cs_youwufuqiangneibaokuai"
																	data-fieldkind="1" data-id="1414110"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001835_val"
																	name="F001835_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肝脏肋下有无触及</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001827"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001827_2137585"
																	name="F001827_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001827_2137586"  checked="checked" 
																	name="F001827_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001827"
																	data-fieldid="Cs_ganznagleixiayouwuchuji"
																	data-fieldkind="1" data-id="1414102"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001827_val"
																	name="F001827_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">脾脏肋下有无触及</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001831"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001831_2137593"
																	name="F001831_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001831_2137594" checked="checked" 
																	name="F001831_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001831" checked="checked"
																	data-fieldid="Cs_thespleenribunderthepresenceofhit"
																	data-fieldkind="1" data-id="1414106"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001831_val"
																	name="F001831_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">Murphy氏征</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001834"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input checked="checked" 
																	data-value="1" id="F001834_2139294"
																	name="F001834_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">阴性</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001834_2139295" checked="checked"
																	name="F001834_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">阳性</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001834" data-fieldid="Cs_morpheus"
																	data-fieldkind="1" data-id="1414109"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001834_val"
																	name="F001834_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="42"
															style="width: 840px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肝肾区叩击痛</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001837"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001837_2137611"
																	name="F001837_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001837_2137612"
																	name="F001837_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">可及</label><input checked="checked" 
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001837"
																	data-fieldid="Cs_ganqukoujitong" data-fieldkind="1"
																	data-id="1414112" data-recordid="304113"
																	data-tableid="T_clinicalsymptom" data-textfield="value"
																	id="F001837_val" name="F001837_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">移动性浊音</span></td>
														<td class="td-control" colspan="12"
															style="text-align: left; width: 240px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001832"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001832_2137595"
																	name="F001832_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">阴性</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001832_2137596"
																	name="F001832_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">阳性</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked" 
																	data-value="3" id="F001832_2137597"
																	name="F001832_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">弱阳性</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001832"
																	data-fieldid="Cs_shiftingdullness" data-fieldkind="1"
																	data-id="1414107" data-recordid="304113"
																	data-tableid="T_clinicalsymptom" data-textfield="value"
																	id="F001832_val" name="F001832_val"
																	style="text-align: left; font-size: 12px; width: 220px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肠鸣音</span></td>
														<td class="td-control" colspan="15"
															style="text-align: left; width: 300px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001833"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001833_2137598"
																	name="F001833_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">正常</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked" 
																	data-value="2" id="F001833_2137599"
																	name="F001833_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">亢进</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001833_2137600"
																	name="F001833_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">弱</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="4" id="F001833_2137601"
																	name="F001833_items" type="checkbox" value="4"
																	style="font-family: &amp; #39;">未及</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001833" data-fieldid="Cs_changmingyin"
																	data-fieldkind="1" data-id="1414108"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001833_val"
																	name="F001833_val"
																	style="text-align: left; font-size: 12px; width: 280px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="42"
										style="text-align: left; width: 840px; font-family: &amp; #39;"><div
											id="F001335" class="crfgroup-box" data-elementtype="group"
											data-id="1180370" style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(25, 23, 23); text-align: left; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(25, 23, 23); text-align: left; font-family: &amp; #39;">肛门指检</span>
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肛周疾病</span></td>
														<td class="td-control" colspan="12"
															style="text-align: left; width: 240px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001628"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001628_1776036"
																	name="F001628_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">痔疮</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked" 
																	data-value="2" id="F001628_1776037"
																	name="F001628_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">肛瘘</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001628_1776038"
																	name="F001628_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">肛周脓肿</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="4" id="F001628_1776039"
																	name="F001628_items" type="checkbox" value="4"
																	style="font-family: &amp; #39;">肛裂</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001628"
																	data-fieldid="Mh_gangzhoujibing" data-fieldkind="1"
																	data-id="1181915" data-recordid="304114"
																	data-tableid="T_medicalhis" data-textfield="value"
																	id="F001628_val" name="F001628_val"
																	style="text-align: left; font-size: 12px; width: 220px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肿瘤来源</span></td>
														<td class="td-control" colspan="7"
															style="text-align: left; width: 140px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F001677"
															data-fieldid="Io_zhongliulaiyuan" data-fieldkind="1"
															data-id="1202959" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F001677"
															name="F001677" value="原发"
															style="text-align: left; font-size: 12px; width: 120px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肛门指检的体位</span></td>
														<td class="td-control" colspan="20"
															style="text-align: left; width: 400px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001336"
																data-value="2" data-text="左侧卧位"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001336_1774023"
																	name="F001336_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">肘膝位</label><label
																	class="radio checked" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001336_1774024"
																	name="F001336_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">左侧卧位</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked" 
																	data-value="3" id="F001336_1774025"
																	name="F001336_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">截石位/仰卧位</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="4" id="F001336_1774026"
																	name="F001336_items" type="checkbox" value="4"
																	style="font-family: &amp; #39;">蹲位</label><input
																	class="form-control crfform-input crffield hasdata"
																	data-fieldcode="F001336"
																	data-fieldid="Io_theanusreferstothepositionofinspection"
																	data-fieldkind="1" data-id="1180371"
																	data-recordid="304111" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001336_val"
																	name="F001336_val"
																	style="text-align: left; font-size: 12px; width: 380px; font-family: &amp; #39;"
																	type="hidden" value="2" ischeckconfirm="false"
																	isfrozenconfirm="false" islockconfirm="false"
																	issignconfirm="false" ishasquery="false" datastatus="0"
																	disabledsource="0" data-data-id="0">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肛门点位</span></td>
														<td class="td-control" colspan="30"
															style="text-align: left; width: 600px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001337" data-value="15" data-text="腔外"
																style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="13" id="F001337_1808642"
																	name="F001337_items" type="checkbox" value="13"
																	style="font-family: &amp; #39;">腔内</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="14" id="F001337_1808643"
																	name="F001337_items" type="checkbox" value="14"
																	style="font-family: &amp; #39;">粘膜下</label><label
																	class="checkbox checked"
																	style="font-family: &amp; #39;"><input checked="checked" 
																	data-value="15" id="F001337_1808644"
																	name="F001337_items" type="checkbox" value="15"
																	style="font-family: &amp; #39;">腔外</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="16" id="F001337_1808645"
																	name="F001337_items" type="checkbox" value="16"
																	style="font-family: &amp; #39;">右前</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="17" id="F001337_1808646"
																	name="F001337_items" type="checkbox" value="17"
																	style="font-family: &amp; #39;">右后</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="18" id="F001337_1808647"
																	name="F001337_items" type="checkbox" value="18"
																	style="font-family: &amp; #39;">左前</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="19" id="F001337_1808648"
																	name="F001337_items" type="checkbox" value="19"
																	style="font-family: &amp; #39;">左后</label><input
																	class="form-control crfform-input crffield hasdata"
																	data-fieldcode="F001337" data-fieldid="Io_theanuspoint"
																	data-fieldkind="1" data-id="1180373"
																	data-recordid="304111" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001337_val"
																	name="F001337_val"
																	style="text-align: left; font-size: 12px; width: 580px; font-family: &amp; #39;"
																	type="hidden" value="15" ischeckconfirm="false"
																	isfrozenconfirm="false" islockconfirm="false"
																	issignconfirm="false" ishasquery="false" datastatus="0"
																	disabledsource="0" data-data-id="0">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">质地</span></td>
														<td class="td-control" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input hasdata"
																	data-datas="[{&quot;value&quot;:&quot;软&quot;,&quot;text&quot;:&quot;软&quot;},{&quot;value&quot;:&quot;硬&quot;,&quot;text&quot;:&quot;硬&quot;},{&quot;value&quot;:&quot;韧&quot;,&quot;text&quot;:&quot;韧&quot;}]"
																	data-fieldcode="F001338"
																	data-fieldid="Io_thequalityofamaterialofmass"
																	data-fieldkind="1" data-form="wycombo"
																	data-id="1180375" data-itemsource="0"
																	data-recordid="304111" data-tableid="T_inhospitalhis"
																	data-textfield="text" data-value="硬" id="F001338"
																	name="F001338"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off" data-text="硬"
																	ischeckconfirm="false" isfrozenconfirm="false"
																	islockconfirm="false" issignconfirm="false" value="柔软"
																	ishasquery="false" datastatus="0" disabledsource="0"
																	data-data-id="0"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
														<td class="td-label" colspan="2"
															style="text-align: right; width: 40px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">形状</span></td>
														<td class="td-control" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input hasdata"
																	data-datas="[{&quot;value&quot;:&quot;菜花型&quot;,&quot;text&quot;:&quot;菜花型&quot;},{&quot;value&quot;:&quot;溃疡型&quot;,&quot;text&quot;:&quot;溃疡型&quot;}]"
																	data-fieldcode="F001339"
																	data-fieldid="Io_theshapeofthetumor" data-fieldkind="1"
																	data-form="wycombo" data-id="1180376"
																	data-itemsource="0" data-recordid="304111"
																	data-tableid="T_inhospitalhis" data-textfield="text"
																	data-value="溃疡型" id="F001339" name="F001339"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 70px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off" data-text="溃疡型"
																	ischeckconfirm="false" isfrozenconfirm="false"
																	islockconfirm="false" issignconfirm="false" value="溃疡型"
																	ishasquery="false" datastatus="0" disabledsource="0"
																	data-data-id="0"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
														<td class="td-label" colspan="2"
															style="text-align: right; width: 40px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">触痛</span></td>
														<td class="td-control" colspan="6"
															style="text-align: left; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001342"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001342_1774044"
																	name="F001342_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">是</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001342_1774045" checked="checked"
																	name="F001342_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">否</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001342"
																	data-fieldid="Cs_whetherthetumorofbitterness"
																	data-fieldkind="1" data-id="1180380"
																	data-recordid="304113" data-tableid="T_clinicalsymptom"
																	data-textfield="value" id="F001342_val"
																	name="F001342_val"
																	style="text-align: left; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">活动度</span></td>
														<td class="td-control" colspan="12"
															style="text-align: left; width: 240px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001341"
																data-value="2" data-text="半固定"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001341_1774041"
																	name="F001341_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">固定</label><label
																	class="radio checked" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001341_1774042" checked="checked"
																	name="F001341_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">半固定</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001341_1774043"
																	name="F001341_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">活动</label><input
																	class="form-control crfform-input crffield hasdata"
																	data-fieldcode="F001341" data-fieldid="Di_huodongdu"
																	data-fieldkind="1" data-id="1180378"
																	data-recordid="304111" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001341_val"
																	name="F001341_val"
																	style="text-align: left; font-size: 12px; width: 220px; font-family: &amp; #39;"
																	type="hidden" value="2" ischeckconfirm="false"
																	isfrozenconfirm="false" islockconfirm="false"
																	issignconfirm="false" ishasquery="false" datastatus="0"
																	disabledsource="0" data-data-id="0">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">浸润肠管范围</span></td>
														<td class="td-control" colspan="12"
															style="text-align: left; width: 240px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001344"
																data-value="2" data-text="1/2"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001344_1774046"
																	name="F001344_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">1/4</label><label
																	class="radio checked" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001344_1774047"
																	name="F001344_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">1/2</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001344_1774048"
																	name="F001344_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">3/4</label><label
																	class="radio" style="font-family: &amp; #39;"><input checked="checked"
																	data-value="4" id="F001344_1774049"
																	name="F001344_items" type="checkbox" value="4"
																	style="font-family: &amp; #39;">1</label><input
																	class="form-control crfform-input crffield hasdata"
																	data-fieldcode="F001344"
																	data-fieldid="Io_jinrunchangguanfanwei"
																	data-fieldkind="1" data-id="1180383"
																	data-recordid="304111" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001344_val"
																	name="F001344_val"
																	style="text-align: left; font-size: 12px; width: 220px; font-family: &amp; #39;"
																	type="hidden" value="2" ischeckconfirm="false"
																	isfrozenconfirm="false" islockconfirm="false"
																	issignconfirm="false" ishasquery="false" datastatus="0"
																	disabledsource="0" data-data-id="0">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肿块基地下缘距肛缘距离</span></td>
														<td class="td-control" colspan="7"
															style="text-align: left; width: 140px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F001343"
															data-fieldid="Di_rectaltumordistancefromthenus"
															data-fieldkind="1" data-id="1180381"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F001343" name="F001343" value="3"
															style="text-align: left; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"><span
															class="remark-label"
															style="text-align: left; font-size: 12px; padding-left: 3px; font-family: &amp; #39;">cm</span></td>
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肿块基地下缘距齿线距离</span></td>
														<td class="td-control" colspan="7"
															style="text-align: left; width: 140px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F001769"
															data-fieldid="Io_zhongkuaijidixiayuanjuchixianjuli"
															data-fieldkind="1" data-id="1413118" value="5"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F001769" name="F001769"
															style="text-align: left; font-size: 12px; width: 80px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"><span
															class="remark-label"
															style="text-align: left; font-size: 12px; padding-left: 3px; font-family: &amp; #39;">cm</span></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">肿瘤纵径
														</span></td>
														<td class="td-control" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F001682" data-fieldid="Di_zliuzongjing"
															data-fieldkind="1" data-id="1207808"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F001682" name="F001682" value="2"
															style="text-align: left; font-size: 12px; width: 20px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-control" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-defaultval="cm" data-fieldcode="F001683"
															data-fieldid="Io_unit" data-fieldkind="1"
															data-id="1207809" data-recordid="304111"
															data-tableid="T_inhospitalhis" id="F001683"
															name="F001683" readonly="readonly"
															style="text-align: left; font-size: 12px; width: 20px; font-family: &amp; #39;"
															type="text" value="cm" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-label" colspan="4"
															style="text-align: right; width: 80px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">×横径</span></td>
														<td class="td-control" colspan="2" value="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-fieldcode="F001684" data-fieldid="Di_width"
															data-fieldkind="1" data-id="1207810"
															data-recordid="304111" data-tableid="T_inhospitalhis"
															id="F001684" name="F001684"
															style="text-align: left; font-size: 12px; width: 20px; font-family: &amp; #39;"
															type="text" value="" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
														<td class="td-control" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield hasdata"
															data-defaultval="cm" data-fieldcode="F001685"
															data-fieldid="Io_unit" data-fieldkind="1"
															data-id="1207811" data-recordid="304115"
															data-tableid="T_inhospitalhis" id="F001685"
															name="F001685" readonly="readonly"
															style="text-align: left; font-size: 12px; width: 20px; font-family: &amp; #39;"
															type="text" value="cm" ischeckconfirm="false"
															isfrozenconfirm="false" islockconfirm="false"
															issignconfirm="false" ishasquery="false" datastatus="0"
															disabledsource="0" data-data-id="0"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">与盆壁固定</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001345"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001345_1774050"
																	name="F001345_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">是</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001345_1774051" checked="checked"
																	name="F001345_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">否</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001345"
																	data-fieldid="Io_whetherthepotwallisfixed"
																	data-fieldkind="1" data-id="1180384"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001345_val"
																	name="F001345_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-label" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">有无染血</span></td>
														<td class="td-control" colspan="6"
															style="text-align: left; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001340"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001340_1774039"
																	name="F001340_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><label
																	class="radio" style="font-family: &amp; #39;"><input  checked="checked"
																	data-value="0" id="F001340_1774040"
																	name="F001340_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001340"
																	data-fieldid="Io_withorwithouttouchblood"
																	data-fieldkind="1" data-id="1180377"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001340_val"
																	name="F001340_val"
																	style="text-align: left; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">腹部主体</span></td>
														<td class="td-control" colspan="6"
															style="text-align: left; width: 120px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F001678" data-fieldid="Io_fubuzhuti"
															data-fieldkind="1" data-id="1207405" value=""
															data-recordid="304115" data-tableid="T_inhospitalhis"
															id="F001678" name="F001678"
															style="text-align: left; font-size: 12px; width: 100px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="td-label" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">Douglas窝种植</span></td>
														<td class="td-control" colspan="9"
															style="text-align: left; width: 180px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001679"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001679_1815550"
																	name="F001679_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">+</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001679_1815551"
																	name="F001679_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">-</label><input
																	class="form-control crfform-input crffield" checked="checked"
																	data-fieldcode="F001679"
																	data-fieldid="Io_douglaswozhongzhi" data-fieldkind="1"
																	data-id="1207406" data-recordid="304115"
																	data-tableid="T_inhospitalhis" data-textfield="value"
																	id="F001679_val" name="F001679_val"
																	style="text-align: left; font-size: 12px; width: 160px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="42"
										style="text-align: left; width: 840px; font-family: &amp; #39;"><div
											id="F000597" class="crfgroup-box-noborder"
											data-elementtype="group" data-id="1180318"
											style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(23, 19, 19); text-align: left; font-size: 16px; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(23, 19, 19); text-align: left; font-size: 16px; font-family: &amp; #39;">既往病史</span>
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">既往手术史</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001508"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001508_1774295"
																	name="F001508_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">否</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001508_1774294" checked="checked"
																	name="F001508_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">是</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001508" data-fieldid="Io_sth"
																	data-fieldkind="1" data-id="1180319"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001508_val"
																	name="F001508_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-control" colspan="48"
															data-ref-fieldcode="F001508" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 960px; font-family: &amp; #39;"><div
																id="F001509" class="crftable-edit"
																data-allowdeldefault="0" data-defaultval="[]"
																data-elementtype="table" data-id="1180320"
																data-recordid="304116" data-tableid="T_treatmenthis"
																style="font-family: &amp; #39;">
																<table class="table table-bordered"
																	style="font-family: &amp; #39;">
																	<thead style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">表号</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">手术日期</td>
																			<td
																				style="text-align: center; width: 400px; font-family: &amp; #39;">手术名称</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">手术医院</td>
																			<td style="width: 30px; font-family: &amp; #39;">删除</td>
																		</tr>
																	</thead>
																	<tbody class="list-template hidden"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="0" data-id="0"
																				data-recordid="304116" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: right; font-size: 12px; font-family: &amp; #39;">表号</span></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001511"
																						data-fieldid="Ct_startdate" data-fieldkind="0"
																						data-id="1180321" data-recordid="304116"
																						data-tableid="T_treatmenthis" id="F001511"
																						name="F001511"
																						style="text-align: center; font-size: 12px; width: 113px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 400px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001512"
																				data-fieldid="Ct_surgeryname" data-fieldkind="1"
																				data-id="1180322" data-recordid="304116"
																				data-tableid="T_treatmenthis" id="F001512"
																				name="F001512"
																				style="text-align: center; font-size: 12px; width: 380px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001638"
																				data-fieldid="Ct_surghospname" data-fieldkind="1"
																				data-id="1193070" data-recordid="304116"
																				data-tableid="T_treatmenthis" id="F001638"
																				name="F001638"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-data"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;" data-id="0"
																			id="row_359_2BEN4DeP">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="0" data-id="0"
																				data-recordid="304116" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: right; font-size: 12px; font-family: &amp; #39;">1</span></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001511"
																						data-fieldid="Ct_startdate" data-fieldkind="0"
																						data-id="1180321" data-recordid="304116"
																						data-tableid="T_treatmenthis"
																						id="F001511_359_2BEN4DeP"
																						name="F001511_359_2BEN4DeP"
																						style="text-align: center; font-size: 12px; width: 113px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 400px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001512"
																				data-fieldid="Ct_surgeryname" data-fieldkind="1"
																				data-id="1180322" data-recordid="304116"
																				data-tableid="T_treatmenthis"
																				id="F001512_359_2BEN4DeP"
																				name="F001512_359_2BEN4DeP"
																				style="text-align: center; font-size: 12px; width: 380px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001638"
																				data-fieldid="Ct_surghospname" data-fieldkind="1"
																				data-id="1193070" data-recordid="304116"
																				data-tableid="T_treatmenthis"
																				id="F001638_359_2BEN4DeP"
																				name="F001638_359_2BEN4DeP"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-deleted hidden"
																		style="font-family: &amp; #39;"></tbody>
																	<tbody style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td colspan="5"
																				style="text-align: right; font-family: &amp; #39;"><div
																					class="btn-group box-btn-right"
																					style="font-family: &amp; #39;">
																				</div></td>
																		</tr>
																	</tbody>
																</table>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">既往肿瘤相关化疗史</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001515"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001515_1774279"
																	name="F001515_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">否</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001515_1774278"
																	name="F001515_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">是</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001515" data-fieldid="Io_acth"
																	data-fieldkind="1" data-id="1180323"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001515_val"
																	name="F001515_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-control" colspan="48"
															data-ref-fieldcode="F001515" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 960px; font-family: &amp; #39;"><div
																id="F001516" class="crftable-edit"
																data-allowdeldefault="0" data-defaultval="[]"
																data-elementtype="table" data-id="1180324"
																data-recordid="304117" data-tableid="T_treatmenthis"
																style="font-family: &amp; #39;">
																<table class="table table-bordered"
																	style="font-family: &amp; #39;">
																	<thead style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">表号</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">术前/术后</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">化疗方案</td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;">次数</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">末次化疗日期</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">备注</td>
																			<td style="width: 30px; font-family: &amp; #39;">删除</td>
																		</tr>
																	</thead>
																	<tbody class="list-template hidden"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="1" data-id="0"
																				data-recordid="304117" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: left; font-size: 12px; font-family: &amp; #39;">表号</span></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					class="radio-container" data-form="radio"
																					id="F001641" style="font-family: &amp; #39;">
																					<label class="radio"
																						style="font-family: &amp; #39;"><input
																						data-value="1" id="F001641_1793335"
																						name="F001641_items" type="checkbox" value="1"
																						style="font-family: &amp; #39;">术前</label><label
																						class="radio" style="font-family: &amp; #39;"><input
																						data-value="2" id="F001641_1793336"
																						name="F001641_items" type="checkbox" value="2"
																						style="font-family: &amp; #39;">术后</label><input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001641"
																						data-fieldid="Ct_hualiaoshijianduan"
																						data-fieldkind="1" data-id="1193073"
																						data-recordid="304117"
																						data-tableid="T_treatmenthis"
																						data-textfield="value" id="F001641_val"
																						name="F001641_val"
																						style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																						type="hidden">
																				</div></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001517"
																				data-fieldid="Ct_chemoregimen" data-fieldkind="1"
																				data-id="1180325" data-recordid="304117"
																				data-tableid="T_treatmenthis" id="F001517"
																				name="F001517"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001639"
																				data-fieldid="Ct_hualiaocishu" data-fieldkind="1"
																				data-id="1193071" data-recordid="304117"
																				data-tableid="T_treatmenthis" id="F001639"
																				name="F001639"
																				style="text-align: right; font-size: 12px; width: 60px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001640"
																						data-fieldid="Ct_mocihualiaoriqi"
																						data-fieldkind="1" data-id="1193072"
																						data-recordid="304117"
																						data-tableid="T_treatmenthis" id="F001640"
																						name="F001640"
																						style="text-align: right; font-size: 12px; width: 113px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001642"
																				data-fieldid="Ct_cotreatmentremark"
																				data-fieldkind="1" data-id="1193074"
																				data-recordid="304117" data-tableid="T_treatmenthis"
																				id="F001642" name="F001642"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-data"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;" data-id="0"
																			id="row_366_aWAmzGCe">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="1" data-id="0"
																				data-recordid="304117" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: left; font-size: 12px; font-family: &amp; #39;">1</span></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					class="radio-container" data-form="radio"
																					id="F001641" style="font-family: &amp; #39;">
																					<label class="radio"
																						style="font-family: &amp; #39;"><input
																						data-value="1" id="F001641_1793335_366_aWAmzGCe"
																						name="F001641_items_366_aWAmzGCe" type="checkbox"
																						value="1" style="font-family: &amp; #39;">术前</label><label
																						class="radio" style="font-family: &amp; #39;"><input
																						data-value="2" id="F001641_1793336_366_aWAmzGCe"
																						name="F001641_items_366_aWAmzGCe" type="checkbox"
																						value="2" style="font-family: &amp; #39;">术后</label><input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001641"
																						data-fieldid="Ct_hualiaoshijianduan"
																						data-fieldkind="1" data-id="1193073"
																						data-recordid="304117"
																						data-tableid="T_treatmenthis"
																						data-textfield="value"
																						id="F001641_val_366_aWAmzGCe"
																						name="F001641_val_366_aWAmzGCe"
																						style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																						type="hidden">
																				</div></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001517"
																				data-fieldid="Ct_chemoregimen" data-fieldkind="1"
																				data-id="1180325" data-recordid="304117"
																				data-tableid="T_treatmenthis"
																				id="F001517_366_aWAmzGCe"
																				name="F001517_366_aWAmzGCe"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001639"
																				data-fieldid="Ct_hualiaocishu" data-fieldkind="1"
																				data-id="1193071" data-recordid="304117"
																				data-tableid="T_treatmenthis"
																				id="F001639_366_aWAmzGCe"
																				name="F001639_366_aWAmzGCe"
																				style="text-align: right; font-size: 12px; width: 60px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001640"
																						data-fieldid="Ct_mocihualiaoriqi"
																						data-fieldkind="1" data-id="1193072"
																						data-recordid="304117"
																						data-tableid="T_treatmenthis"
																						id="F001640_366_aWAmzGCe"
																						name="F001640_366_aWAmzGCe"
																						style="text-align: right; font-size: 12px; width: 113px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001642"
																				data-fieldid="Ct_cotreatmentremark"
																				data-fieldkind="1" data-id="1193074"
																				data-recordid="304117" data-tableid="T_treatmenthis"
																				id="F001642_366_aWAmzGCe"
																				name="F001642_366_aWAmzGCe"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-deleted hidden"
																		style="font-family: &amp; #39;"></tbody>
																	<tbody style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td colspan="7"
																				style="text-align: right; font-family: &amp; #39;"><div
																					class="btn-group box-btn-right"
																					style="font-family: &amp; #39;">
																				</div></td>
																		</tr>
																	</tbody>
																</table>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">既往肿瘤相关放疗史</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001523"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001523_1774292"
																	name="F001523_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">否</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001523_1774293"
																	name="F001523_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">是</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001523"
																	data-fieldid="Di_historyofradiationtherapy"
																	data-fieldkind="1" data-id="1180330"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001523_val"
																	name="F001523_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-control" colspan="48"
															data-ref-fieldcode="F001523" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 960px; font-family: &amp; #39;"><div
																id="F001524" class="crftable-edit"
																data-allowdeldefault="0" data-defaultval="[]"
																data-elementtype="table" data-id="1180331"
																data-recordid="304118" data-tableid="T_treatmenthis"
																style="font-family: &amp; #39;">
																<table class="table table-bordered"
																	style="font-family: &amp; #39;">
																	<thead style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;">表号</td>
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;">末次放疗时间</td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;">照射野</td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;">累计总剂量</td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;">每次剂量</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">累计照射次数</td>
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;">累计总照射时间</td>
																			<td style="width: 30px; font-family: &amp; #39;">删除</td>
																		</tr>
																	</thead>
																	<tbody class="list-template hidden"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="1" data-id="0"
																				data-recordid="304118" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: left; font-size: 12px; font-family: &amp; #39;">表号</span></td>
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001529"
																						data-fieldid="Ct_mocifangliaoriqi"
																						data-fieldkind="1" data-id="1180336"
																						data-recordid="304118"
																						data-tableid="T_treatmenthis" id="F001529"
																						name="F001529" readonly=""
																						style="text-align: right; font-size: 12px; width: 113px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001525" data-fieldid="Ct_field"
																				data-fieldkind="1" data-id="1180332"
																				data-recordid="304118" data-tableid="T_treatmenthis"
																				id="F001525" name="F001525"
																				style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001526"
																				data-fieldid="Ct_actshiinedose" data-fieldkind="1"
																				data-id="1180333" data-recordid="304118"
																				data-tableid="T_treatmenthis" id="F001526"
																				name="F001526"
																				style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001643" data-fieldid="Ct_dose"
																				data-fieldkind="1" data-id="1193075"
																				data-recordid="304118" data-tableid="T_treatmenthis"
																				id="F001643" name="F001643"
																				style="text-align: right; font-size: 12px; width: 60px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001527"
																				data-fieldid="Ct_actshinenum" data-fieldkind="1"
																				data-id="1180334" data-recordid="304118"
																				data-tableid="T_treatmenthis" id="F001527"
																				name="F001527"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001528"
																				data-fieldid="Ct_actshinetime" data-fieldkind="1"
																				data-id="1180335" data-recordid="304118"
																				data-tableid="T_treatmenthis" id="F001528"
																				name="F001528"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-data"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;" data-id="0"
																			id="row_374_KjiNzjY4">
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="1" data-id="0"
																				data-recordid="304118" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: left; font-size: 12px; font-family: &amp; #39;">1</span></td>
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001529"
																						data-fieldid="Ct_mocifangliaoriqi"
																						data-fieldkind="1" data-id="1180336"
																						data-recordid="304118"
																						data-tableid="T_treatmenthis"
																						id="F001529_374_KjiNzjY4"
																						name="F001529_374_KjiNzjY4" readonly=""
																						style="text-align: right; font-size: 12px; width: 113px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001525" data-fieldid="Ct_field"
																				data-fieldkind="1" data-id="1180332"
																				data-recordid="304118" data-tableid="T_treatmenthis"
																				id="F001525_374_KjiNzjY4"
																				name="F001525_374_KjiNzjY4"
																				style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001526"
																				data-fieldid="Ct_actshiinedose" data-fieldkind="1"
																				data-id="1180333" data-recordid="304118"
																				data-tableid="T_treatmenthis"
																				id="F001526_374_KjiNzjY4"
																				name="F001526_374_KjiNzjY4"
																				style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001643" data-fieldid="Ct_dose"
																				data-fieldkind="1" data-id="1193075"
																				data-recordid="304118" data-tableid="T_treatmenthis"
																				id="F001643_374_KjiNzjY4"
																				name="F001643_374_KjiNzjY4"
																				style="text-align: right; font-size: 12px; width: 60px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001527"
																				data-fieldid="Ct_actshinenum" data-fieldkind="1"
																				data-id="1180334" data-recordid="304118"
																				data-tableid="T_treatmenthis"
																				id="F001527_374_KjiNzjY4"
																				name="F001527_374_KjiNzjY4"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 200px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001528"
																				data-fieldid="Ct_actshinetime" data-fieldkind="1"
																				data-id="1180335" data-recordid="304118"
																				data-tableid="T_treatmenthis"
																				id="F001528_374_KjiNzjY4"
																				name="F001528_374_KjiNzjY4"
																				style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-deleted hidden"
																		style="font-family: &amp; #39;"></tbody>
																	<tbody style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td colspan="8"
																				style="text-align: right; font-family: &amp; #39;"><div
																					class="btn-group box-btn-right"
																					style="font-family: &amp; #39;">
																				</div></td>
																		</tr>
																	</tbody>
																</table>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="7"
															style="text-align: right; width: 140px; font-family: &amp; #39;"><span
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">新辅助放疗史</span></td>
														<td class="td-control" colspan="8"
															style="text-align: left; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001750"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001750_1987699"
																	name="F001750_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">否</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001750_1987698"
																	name="F001750_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">是</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001750" data-fieldid="Io_narth"
																	data-fieldkind="1" data-id="1314628"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" id="F001750_val"
																	name="F001750_val"
																	style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-control" colspan="30"
															data-ref-fieldcode="F001750" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 600px; font-family: &amp; #39;"><div
																id="F001744" class="crftable-edit"
																data-allowdeldefault="0" data-defaultval="[]"
																data-elementtype="table" data-id="1314612"
																data-recordid="304119" data-tableid="T_treatmenthis"
																style="font-family: &amp; #39;">
																<table class="table table-bordered"
																	style="font-family: &amp; #39;">
																	<thead style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;">表号</td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;">开始日期</td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;">结束日期</td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;">放疗方式</td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;">放疗剂量</td>
																			<td style="width: 30px; font-family: &amp; #39;">删除</td>
																		</tr>
																	</thead>
																	<tbody class="list-template hidden"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="0" data-id="0"
																				data-recordid="304119" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: right; font-size: 12px; font-family: &amp; #39;">表号</span></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001745"
																						data-fieldid="Ct_startdate" data-fieldkind="0"
																						data-id="1314613" data-recordid="304119"
																						data-tableid="T_treatmenthis" id="F001745"
																						name="F001745"
																						style="text-align: center; font-size: 12px; width: 73px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001746" data-fieldid="Ct_enddate"
																						data-fieldkind="0" data-id="1314614"
																						data-recordid="304119"
																						data-tableid="T_treatmenthis" id="F001746"
																						name="F001746"
																						style="text-align: center; font-size: 12px; width: 73px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><div
																					style="display: inline-block; position: relative; font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield ui-autocomplete-input"
																						data-datas="[{&quot;value&quot;:&quot;常规放疗&quot;,&quot;text&quot;:&quot;常规放疗&quot;},{&quot;value&quot;:&quot;三维适形放疗&quot;,&quot;text&quot;:&quot;三维适形放疗&quot;},{&quot;value&quot;:&quot;普通二维后装放疗&quot;,&quot;text&quot;:&quot;普通二维后装放疗&quot;},{&quot;value&quot;:&quot;三维后装放疗&quot;,&quot;text&quot;:&quot;三维后装放疗&quot;},{&quot;value&quot;:&quot;调强放疗&quot;,&quot;text&quot;:&quot;调强放疗&quot;},{&quot;value&quot;:&quot;简化调强放疗&quot;,&quot;text&quot;:&quot;简化调强放疗&quot;},{&quot;value&quot;:&quot;其他&quot;,&quot;text&quot;:&quot;其他&quot;}]"
																						data-fieldcode="F001747"
																						data-fieldid="Ct_radiotype" data-fieldkind="1"
																						data-form="wycombo" data-id="1314615"
																						data-itemsource="0" data-recordid="304119"
																						data-tableid="T_treatmenthis"
																						data-textfield="text" data-value="" id="F001747"
																						name="F001747"
																						style="text-align: center; font-size: 12px; padding-right: 16px; width: 90px; font-family: &amp; #39;"
																						type="text" value="" autocomplete="off"><i
																						class="dropdown-btn icofont-sort-down"
																						style="font-family: &amp; #39;"></i>
																				</div></td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001748" data-fieldid="Ct_dosetotal"
																				data-fieldkind="1" data-id="1314616"
																				data-recordid="304119" data-tableid="T_treatmenthis"
																				id="F001748" name="F001748"
																				style="text-align: center; font-size: 12px; width: 60px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-defaultval="新辅助放疗" data-fieldcode="F001749"
																				data-fieldid="Ct_category" data-fieldkind="1"
																				data-id="1314617" data-recordid="304119"
																				data-tableid="T_treatmenthis" id="F001749"
																				name="F001749" type="hidden" value="新辅助放疗"
																				style="font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-data"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;" data-id="0"
																			id="row_380_EP5hKMXj">
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="0" data-id="0"
																				data-recordid="304119" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: right; font-size: 12px; font-family: &amp; #39;">1</span></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001745"
																						data-fieldid="Ct_startdate" data-fieldkind="0"
																						data-id="1314613" data-recordid="304119"
																						data-tableid="T_treatmenthis"
																						id="F001745_380_EP5hKMXj"
																						name="F001745_380_EP5hKMXj"
																						style="text-align: center; font-size: 12px; width: 73px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><div
																					class="input-append date datepicker"
																					data-date-autoclose="true"
																					data-date-format="yyyy-mm-dd"
																					data-form="datepicker"
																					style="font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield"
																						data-fieldcode="F001746" data-fieldid="Ct_enddate"
																						data-fieldkind="0" data-id="1314614"
																						data-recordid="304119"
																						data-tableid="T_treatmenthis"
																						id="F001746_380_EP5hKMXj"
																						name="F001746_380_EP5hKMXj"
																						style="text-align: center; font-size: 12px; width: 73px; font-family: &amp; #39;"
																						type="text" value=""><span class="add-on"
																						style="font-family: &amp; #39;"><i
																						class="icofont-calendar"
																						style="font-family: &amp; #39;"></i></span>
																				</div></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><div
																					style="display: inline-block; position: relative; font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield ui-autocomplete-input"
																						data-datas="[{&quot;value&quot;:&quot;常规放疗&quot;,&quot;text&quot;:&quot;常规放疗&quot;},{&quot;value&quot;:&quot;三维适形放疗&quot;,&quot;text&quot;:&quot;三维适形放疗&quot;},{&quot;value&quot;:&quot;普通二维后装放疗&quot;,&quot;text&quot;:&quot;普通二维后装放疗&quot;},{&quot;value&quot;:&quot;三维后装放疗&quot;,&quot;text&quot;:&quot;三维后装放疗&quot;},{&quot;value&quot;:&quot;调强放疗&quot;,&quot;text&quot;:&quot;调强放疗&quot;},{&quot;value&quot;:&quot;简化调强放疗&quot;,&quot;text&quot;:&quot;简化调强放疗&quot;},{&quot;value&quot;:&quot;其他&quot;,&quot;text&quot;:&quot;其他&quot;}]"
																						data-fieldcode="F001747"
																						data-fieldid="Ct_radiotype" data-fieldkind="1"
																						data-form="wycombo" data-id="1314615"
																						data-itemsource="0" data-recordid="304119"
																						data-tableid="T_treatmenthis"
																						data-textfield="text" data-value=""
																						id="F001747_380_EP5hKMXj"
																						name="F001747_380_EP5hKMXj"
																						style="text-align: center; font-size: 12px; padding-right: 16px; width: 90px; font-family: &amp; #39;"
																						type="text" value="" autocomplete="off"><i
																						class="dropdown-btn icofont-sort-down"
																						style="font-family: &amp; #39;"></i>
																				</div></td>
																			<td
																				style="text-align: center; width: 80px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001748" data-fieldid="Ct_dosetotal"
																				data-fieldkind="1" data-id="1314616"
																				data-recordid="304119" data-tableid="T_treatmenthis"
																				id="F001748_380_EP5hKMXj"
																				name="F001748_380_EP5hKMXj"
																				style="text-align: center; font-size: 12px; width: 60px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-defaultval="新辅助放疗" data-fieldcode="F001749"
																				data-fieldid="Ct_category" data-fieldkind="1"
																				data-id="1314617" data-recordid="304119"
																				data-tableid="T_treatmenthis"
																				id="F001749_380_EP5hKMXj"
																				name="F001749_380_EP5hKMXj" type="hidden"
																				value="新辅助放疗" style="font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-deleted hidden"
																		style="font-family: &amp; #39;"></tbody>
																	<tbody style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td colspan="6"
																				style="text-align: right; font-family: &amp; #39;"><div
																					class="btn-group box-btn-right"
																					style="font-family: &amp; #39;">
																				</div></td>
																		</tr>
																	</tbody>
																</table>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="48"
										style="text-align: left; width: 960px; font-family: &amp; #39;"><div
											id="F001407" class="crfgroup-box-noborder"
											data-elementtype="group" data-id="1180388"
											style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(20, 18, 18); text-align: left; font-size: 16px; font-weight: bold; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(20, 18, 18); text-align: left; font-size: 16px; font-weight: bold; font-family: &amp; #39;">既往其他疾病史</span>
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001408"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180389" data-recordid="304114"
															data-tableid="T_medicalhis" id="F001408" name="F001408"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">1</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001409"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180390"
															data-recordid="304114" data-tableid="T_medicalhis"
															id="F001409" name="F001409"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">呼吸系统</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001410"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001410_1774106"
																	name="F001410_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001410_1774107"
																	name="F001410_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001410" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180391"
																	data-recordid="304114" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001410_val"
																	name="F001410_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="30"
															data-ref-fieldcode="F001410" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 600px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001411" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001411_1774108"
																	name="F001411_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">慢性阻塞性肺病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="2" id="F001411_1774109"
																	name="F001411_items" type="checkbox" value="2"
																	style="font-family: &amp; #39;">支气管哮喘</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="3" id="F001411_1774110"
																	name="F001411_items" type="checkbox" value="3"
																	style="font-family: &amp; #39;">间质性肺病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="4" id="F001411_1774111"
																	name="F001411_items" type="checkbox" value="4"
																	style="font-family: &amp; #39;">肺结核</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001411_1774112"
																	name="F001411_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001412"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180393" data-recordid="304114"
																	data-ref-itemvalue="43" data-remarkfor="F001411"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001412" name="F001412"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001411" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180392"
																	data-recordid="304114" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001411_val"
																	name="F001411_val"
																	style="text-align: left; font-size: 12px; width: 580px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001414"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180395" data-recordid="304120"
															data-tableid="T_medicalhis" id="F001414" name="F001414"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">2</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001415"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180396"
															data-recordid="304120" data-tableid="T_medicalhis"
															id="F001415" name="F001415"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">心血管系统</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001416"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001416_1774113"
																	name="F001416_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001416_1774114"
																	name="F001416_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001416" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180397"
																	data-recordid="304120" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001416_val"
																	name="F001416_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="30"
															data-ref-fieldcode="F001416" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 600px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001417" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="5" id="F001417_1774115"
																	name="F001417_items" type="checkbox" value="5"
																	style="font-family: &amp; #39;">高血压</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="6" id="F001417_1774116"
																	name="F001417_items" type="checkbox" value="6"
																	style="font-family: &amp; #39;">冠心病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="7" id="F001417_1774117"
																	name="F001417_items" type="checkbox" value="7"
																	style="font-family: &amp; #39;">风湿性心脏病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="8" id="F001417_1774118"
																	name="F001417_items" type="checkbox" value="8"
																	style="font-family: &amp; #39;">心肌病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="9" id="F001417_1774119"
																	name="F001417_items" type="checkbox" value="9"
																	style="font-family: &amp; #39;">心律失常</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="10" id="F001417_1774120"
																	name="F001417_items" type="checkbox" value="10"
																	style="font-family: &amp; #39;">慢性心力衰竭</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001417_1774121"
																	name="F001417_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001418"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180399" data-recordid="304120"
																	data-ref-itemvalue="43" data-remarkfor="F001417"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001418" name="F001418"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001417" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180398"
																	data-recordid="304120" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001417_val"
																	name="F001417_val"
																	style="text-align: left; font-size: 12px; width: 580px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001420"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180401" data-recordid="304121"
															data-tableid="T_medicalhis" id="F001420" name="F001420"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">3</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001421"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180402"
															data-recordid="304121" data-tableid="T_medicalhis"
															id="F001421" name="F001421"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">消化系统</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001422"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001422_1774122"
																	name="F001422_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001422_1774123"
																	name="F001422_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001422" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180403"
																	data-recordid="304121" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001422_val"
																	name="F001422_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="35"
															data-ref-fieldcode="F001422" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 700px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001423" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="11" id="F001423_1774124"
																	name="F001423_items" type="checkbox" value="11"
																	style="font-family: &amp; #39;">消化性溃疡</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="12" id="F001423_1774125"
																	name="F001423_items" type="checkbox" value="12"
																	style="font-family: &amp; #39;">肝炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="13" id="F001423_1774126"
																	name="F001423_items" type="checkbox" value="13"
																	style="font-family: &amp; #39;">肝硬化</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="14" id="F001423_1774127"
																	name="F001423_items" type="checkbox" value="14"
																	style="font-family: &amp; #39;">乙肝病毒携带</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="15" id="F001423_1774128"
																	name="F001423_items" type="checkbox" value="15"
																	style="font-family: &amp; #39;">丙肝病毒携带</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="17" id="F001423_1774130"
																	name="F001423_items" type="checkbox" value="17"
																	style="font-family: &amp; #39;">肠结核</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="18" id="F001423_1774131"
																	name="F001423_items" type="checkbox" value="18"
																	style="font-family: &amp; #39;">胃食管反流病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="19" id="F001423_1774132"
																	name="F001423_items" type="checkbox" value="19"
																	style="font-family: &amp; #39;">胰腺炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="20" id="F001423_1774133"
																	name="F001423_items" type="checkbox" value="20"
																	style="font-family: &amp; #39;">胆石症</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="70" id="F001423_1816081"
																	name="F001423_items" type="checkbox" value="70"
																	style="font-family: &amp; #39;">血吸虫病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="72" id="F001423_1816083"
																	name="F001423_items" type="checkbox" value="72"
																	style="font-family: &amp; #39;">结直肠息肉</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="73" id="F001423_1816084"
																	name="F001423_items" type="checkbox" value="73"
																	style="font-family: &amp; #39;">便秘</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="74" id="F001423_2135965"
																	name="F001423_items" type="checkbox" value="74"
																	style="font-family: &amp; #39;">溃疡性结肠炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="71" id="F001423_2135966"
																	name="F001423_items" type="checkbox" value="71"
																	style="font-family: &amp; #39;">克罗恩病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001423_1774166"
																	name="F001423_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001424"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180405" data-recordid="304121"
																	data-ref-itemvalue="43" data-remarkfor="F001423"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001424" name="F001424"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001423" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180404"
																	data-recordid="304121" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001423_val"
																	name="F001423_val"
																	style="text-align: left; font-size: 12px; width: 680px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001426"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180407" data-recordid="304122"
															data-tableid="T_medicalhis" id="F001426" name="F001426"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">4</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001427"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180408"
															data-recordid="304122" data-tableid="T_medicalhis"
															id="F001427" name="F001427"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">泌尿系统</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001428"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001428_1774165"
																	name="F001428_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001428_1774198"
																	name="F001428_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001428" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180409"
																	data-recordid="304122" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001428_val"
																	name="F001428_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="35"
															data-ref-fieldcode="F001428" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 700px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001429" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="21" id="F001429_1774199"
																	name="F001429_items" type="checkbox" value="21"
																	style="font-family: &amp; #39;">肾小球疾病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="22" id="F001429_1774200"
																	name="F001429_items" type="checkbox" value="22"
																	style="font-family: &amp; #39;">肾间质疾病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="23" id="F001429_1774201"
																	name="F001429_items" type="checkbox" value="23"
																	style="font-family: &amp; #39;">肾小管疾病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="24" id="F001429_1774202"
																	name="F001429_items" type="checkbox" value="24"
																	style="font-family: &amp; #39;">慢性尿路感染</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="25" id="F001429_1774203"
																	name="F001429_items" type="checkbox" value="25"
																	style="font-family: &amp; #39;">肾功能衰竭</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="26" id="F001429_1774204"
																	name="F001429_items" type="checkbox" value="26"
																	style="font-family: &amp; #39;">泌尿系结核</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="27" id="F001429_1774205"
																	name="F001429_items" type="checkbox" value="27"
																	style="font-family: &amp; #39;">泌尿系结石</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001429_1774206"
																	name="F001429_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001430"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180411" data-recordid="304122"
																	data-ref-itemvalue="43" data-remarkfor="F001429"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001430" name="F001430"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001429" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180410"
																	data-recordid="304122" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001429_val"
																	name="F001429_val"
																	style="text-align: left; font-size: 12px; width: 680px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001432"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180413" data-recordid="304123"
															data-tableid="T_medicalhis" id="F001432" name="F001432"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">5</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001433"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180414"
															data-recordid="304123" data-tableid="T_medicalhis"
															id="F001433" name="F001433"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">血液系统</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001434"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001434_1774207"
																	name="F001434_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001434_1774208"
																	name="F001434_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001434" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180415"
																	data-recordid="304123" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001434_val"
																	name="F001434_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="35"
															data-ref-fieldcode="F001434" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 700px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001435" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="28" id="F001435_1774209"
																	name="F001435_items" type="checkbox" value="28"
																	style="font-family: &amp; #39;">贫血</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="29" id="F001435_1774210"
																	name="F001435_items" type="checkbox" value="29"
																	style="font-family: &amp; #39;">血管性紫癜</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="30" id="F001435_1774211"
																	name="F001435_items" type="checkbox" value="30"
																	style="font-family: &amp; #39;">血小板减少性紫癜</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="31" id="F001435_1774212"
																	name="F001435_items" type="checkbox" value="31"
																	style="font-family: &amp; #39;">凝血功能障碍性疾病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001435_1774213"
																	name="F001435_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001436"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180417" data-recordid="304123"
																	data-ref-itemvalue="43" data-remarkfor="F001435"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001436" name="F001436"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001435" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180416"
																	data-recordid="304123" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001435_val"
																	name="F001435_val"
																	style="text-align: left; font-size: 12px; width: 680px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001438"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180419" data-recordid="304124"
															data-tableid="T_medicalhis" id="F001438" name="F001438"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">6</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001439"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180420"
															data-recordid="304124" data-tableid="T_medicalhis"
															id="F001439" name="F001439"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">内分泌疾病</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001440"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001440_1774214"
																	name="F001440_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001440_1774215"
																	name="F001440_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001440" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180421"
																	data-recordid="304124" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001440_val"
																	name="F001440_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="30"
															data-ref-fieldcode="F001440" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 600px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001441" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="32" id="F001441_1774216"
																	name="F001441_items" type="checkbox" value="32"
																	style="font-family: &amp; #39;">糖尿病</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="33" id="F001441_1774217"
																	name="F001441_items" type="checkbox" value="33"
																	style="font-family: &amp; #39;">高血脂</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="34" id="F001441_1774218"
																	name="F001441_items" type="checkbox" value="34"
																	style="font-family: &amp; #39;">甲亢</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="35" id="F001441_1774219"
																	name="F001441_items" type="checkbox" value="35"
																	style="font-family: &amp; #39;">甲减</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="36" id="F001441_1774134"
																	name="F001441_items" type="checkbox" value="36"
																	style="font-family: &amp; #39;">痛风</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="37" id="F001441_1774135"
																	name="F001441_items" type="checkbox" value="37"
																	style="font-family: &amp; #39;">骨质疏松</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001441_1774136"
																	name="F001441_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001442"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180423" data-recordid="304124"
																	data-ref-itemvalue="43" data-remarkfor="F001441"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001442" name="F001442"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001441" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180422"
																	data-recordid="304124" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001441_val"
																	name="F001441_val"
																	style="text-align: left; font-size: 12px; width: 580px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001444"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180425" data-recordid="304125"
															data-tableid="T_medicalhis" id="F001444" name="F001444"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">7</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001445"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180426"
															data-recordid="304125" data-tableid="T_medicalhis"
															id="F001445" name="F001445"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">风湿性疾病</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001446"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001446_1774137"
																	name="F001446_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001446_1774138"
																	name="F001446_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001446" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180427"
																	data-recordid="304125" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001446_val"
																	name="F001446_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="30"
															data-ref-fieldcode="F001446" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: left; display: none; width: 600px; font-family: &amp; #39;"><div
																class="checkbox-container" data-form="checkbox"
																id="F001447" style="font-family: &amp; #39;">
																<label class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="38" id="F001447_1774139"
																	name="F001447_items" type="checkbox" value="38"
																	style="font-family: &amp; #39;">类风湿性关节炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="39" id="F001447_1774140"
																	name="F001447_items" type="checkbox" value="39"
																	style="font-family: &amp; #39;">系统性红斑狼</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="40" id="F001447_1774141"
																	name="F001447_items" type="checkbox" value="40"
																	style="font-family: &amp; #39;">系统性血管炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="41" id="F001447_1774142"
																	name="F001447_items" type="checkbox" value="41"
																	style="font-family: &amp; #39;">皮肌炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="42" id="F001447_1774143"
																	name="F001447_items" type="checkbox" value="42"
																	style="font-family: &amp; #39;">强制性脊柱炎</label><label
																	class="checkbox" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001447_1774144"
																	name="F001447_items" type="checkbox" value="43"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001448"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180429" data-recordid="304125"
																	data-ref-itemvalue="43" data-remarkfor="F001447"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001448" name="F001448"
																	style="text-align: left; font-size: 12px; width: 40px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001447" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180428"
																	data-recordid="304125" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001447_val"
																	name="F001447_val"
																	style="text-align: left; font-size: 12px; width: 580px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="td-label" colspan="1"
															style="text-align: right; width: 20px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001450"
															data-fieldid="Mh_spid" data-fieldkind="0"
															data-id="1180431" data-recordid="304126"
															data-tableid="T_medicalhis" id="F001450" name="F001450"
															style="text-align: right; font-size: 12px; font-family: &amp; #39;">8</span></td>
														<td class="td-label" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><span
															class="crffield" data-fieldcode="F001451"
															data-fieldid="Mh_systemclassificationofdisease"
															data-fieldkind="1" data-id="1180432"
															data-recordid="304126" data-tableid="T_medicalhis"
															id="F001451" name="F001451"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">其他</span></td>
														<td class="td-control" colspan="6"
															style="text-align: right; width: 120px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001452"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="0" id="F001452_1774145"
																	name="F001452_items" type="checkbox" value="0"
																	style="font-family: &amp; #39;">无</label><label
																	class="radio" style="font-family: &amp; #39;"><input
																	data-value="1" id="F001452_1774146"
																	name="F001452_items" type="checkbox" value="1"
																	style="font-family: &amp; #39;">有</label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001452" data-fieldid="Mh_occurrence"
																	data-fieldkind="0" data-id="1180433"
																	data-recordid="304126" data-tableid="T_medicalhis"
																	data-textfield="value" id="F001452_val"
																	name="F001452_val"
																	style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
														<td class="td-control" colspan="8"
															data-ref-fieldcode="F001452" data-ref-itemvalue="1"
															data-ref-type="show"
															style="text-align: right; display: none; width: 160px; font-family: &amp; #39;"><div
																class="radio-container" data-form="radio" id="F001453"
																style="font-family: &amp; #39;">
																<label class="radio" style="font-family: &amp; #39;"><input
																	data-value="43" id="F001453_1774147"
																	name="F001453_items" type="checkbox" value="其他"
																	style="font-family: &amp; #39;">其他</label><label
																	style="font-family: &amp; #39;"><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001454"
																	data-fieldid="Mh_otherdiseasename" data-fieldkind="1"
																	data-id="1180435" data-recordid="304126"
																	data-ref-itemvalue="其他" data-remarkfor="F001453"
																	data-tableid="T_medicalhis" disabled="disabled"
																	id="F001454" name="F001454"
																	style="text-align: left; font-size: 12px; width: 60px; font-family: &amp; #39;"
																	type="text" value=""></label><input
																	class="form-control crfform-input crffield"
																	data-fieldcode="F001453" data-fieldid="Mh_diseasename"
																	data-fieldkind="1" data-id="1180434"
																	data-recordid="304126" data-tableid="T_medicalhis"
																	data-textfield="text" id="F001453_val"
																	name="F001453_val"
																	style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
																	type="hidden">
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="48"
															style="width: 960px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-label" colspan="7"
										style="text-align: right; width: 140px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">结直肠风险评估</span></td>
									<td class="td-control" colspan="30"
										style="text-align: left; width: 600px; font-family: &amp; #39;"><div
											class="checkbox-container" data-form="checkbox" id="F001067"
											style="font-family: &amp; #39;">
											<label class="checkbox" style="font-family: &amp; #39;"><input
												data-value="1" id="F001067_1773972" name="F001067_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">一级亲属有结肠癌史</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="2" id="F001067_1773973" name="F001067_items"
												type="checkbox" value="2" style="font-family: &amp; #39;">本人有癌症史</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="3" id="F001067_1773974" name="F001067_items"
												type="checkbox" value="3" style="font-family: &amp; #39;">本人有肠道息肉史</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="4" id="F001067_1773975" name="F001067_items"
												type="checkbox" value="4" style="font-family: &amp; #39;">慢性便秘</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="5" id="F001067_1773976" name="F001067_items"
												type="checkbox" value="5" style="font-family: &amp; #39;">慢性腹泻</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="6" id="F001067_1773977" name="F001067_items"
												type="checkbox" value="6" style="font-family: &amp; #39;">慢性阑尾炎</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="7" id="F001067_1773978" name="F001067_items"
												type="checkbox" value="7" style="font-family: &amp; #39;">黏液血便</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="8" id="F001067_1773979" name="F001067_items"
												type="checkbox" value="8" style="font-family: &amp; #39;">阑尾切除史</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="9" id="F001067_1773980" name="F001067_items"
												type="checkbox" value="9" style="font-family: &amp; #39;">慢性胆道疾病</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="10" id="F001067_1773981" name="F001067_items"
												type="checkbox" value="10" style="font-family: &amp; #39;">胆囊切除术</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="11" id="F001067_1773982" name="F001067_items"
												type="checkbox" value="11" style="font-family: &amp; #39;">不良生活事件（近20年）</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001067"
												data-fieldid="Io_colorectalriskassessment"
												data-fieldkind="1" data-id="1180337" data-recordid="304115"
												data-tableid="T_inhospitalhis" data-textfield="value"
												id="F001067_val" name="F001067_val"
												style="text-align: left; font-size: 12px; width: 580px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-label" colspan="7"
										style="text-align: right; width: 140px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">肿瘤家族史</span></td>
									<td class="td-control" colspan="8"
										style="text-align: left; width: 160px; font-family: &amp; #39;"><div
											class="radio-container" data-form="radio" id="F001661"
											style="font-family: &amp; #39;">
											<label class="radio" style="font-family: &amp; #39;"><input
												data-value="0" id="F001661_1793470" name="F001661_items"
												type="checkbox" value="0" style="font-family: &amp; #39;">无</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="1" id="F001661_1793469" name="F001661_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">有</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001661" data-fieldid="Io_zhongliujiazushi"
												data-fieldkind="1" data-id="1193131" data-recordid="304115"
												data-tableid="T_inhospitalhis" data-textfield="value"
												id="F001661_val" name="F001661_val"
												style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td colspan="4" data-ref-fieldcode="F001661"
										data-ref-itemvalue="1" data-ref-type="show"
										style="display: none; font-family: &amp; #39;"></td>
									<td class="td-control" colspan="20"
										data-ref-fieldcode="F001661" data-ref-itemvalue="1"
										data-ref-type="show"
										style="text-align: left; display: none; width: 400px; font-family: &amp; #39;"><div
											id="F001655" class="crftable-edit" data-allowdeldefault="0"
											data-defaultval="[]" data-elementtype="table"
											data-id="1193125" data-recordid="304127"
											data-tableid="T_medicalhis" style="font-family: &amp; #39;">
											<table class="table table-condensed"
												style="font-family: &amp; #39;">
												<thead style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td
															style="text-align: center; width: 120px; font-family: &amp; #39;">表号</td>
														<td
															style="text-align: center; width: 120px; font-family: &amp; #39;">与患者关系</td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;">肿瘤类型</td>
														<td style="width: 30px; font-family: &amp; #39;">删除</td>
													</tr>
												</thead>
												<tbody class="list-template hidden"
													style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td
															style="text-align: center; width: 120px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304127" data-tableid="T_medicalhis"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">表号</span></td>
														<td
															style="text-align: center; width: 120px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001656" data-fieldid="Mh_relation"
															data-fieldkind="0" data-id="1193126" data-itemsource="0"
															data-recordid="304127" data-tableid="T_medicalhis"
															data-textfield="value" id="F001656" name="F001656"
															style="text-align: right; font-size: 12px; width: 114px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="0" title="本人"
																	style="font-family: &amp; #39;">本人</option>
																<option value="1" title="父亲"
																	style="font-family: &amp; #39;">父亲</option>
																<option value="2" title="母亲"
																	style="font-family: &amp; #39;">母亲</option>
																<option value="3" title="爷爷"
																	style="font-family: &amp; #39;">爷爷</option>
																<option value="4" title="奶奶"
																	style="font-family: &amp; #39;">奶奶</option>
																<option value="5" title="外公"
																	style="font-family: &amp; #39;">外公</option>
																<option value="6" title="外婆"
																	style="font-family: &amp; #39;">外婆</option>
																<option value="7" title="兄弟"
																	style="font-family: &amp; #39;">兄弟</option>
																<option value="8" title="姐妹"
																	style="font-family: &amp; #39;">姐妹</option>
																<option value="9" title="其他"
																	style="font-family: &amp; #39;">其他</option>
																<option value="10" title="上辈"
																	style="font-family: &amp; #39;">上辈</option>
																<option value="11" title="同辈"
																	style="font-family: &amp; #39;">同辈</option>
																<option value="12" title="祖辈"
																	style="font-family: &amp; #39;">祖辈</option></select></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input list-crffield ui-autocomplete-input"
																	data-datas="[{&quot;value&quot;:&quot;无&quot;,&quot;text&quot;:&quot;无&quot;},{&quot;value&quot;:&quot;大肠癌&quot;,&quot;text&quot;:&quot;大肠癌&quot;},{&quot;value&quot;:&quot;鼻咽癌及头颈部肿瘤&quot;,&quot;text&quot;:&quot;鼻咽癌及头颈部肿瘤&quot;},{&quot;value&quot;:&quot;乳腺癌&quot;,&quot;text&quot;:&quot;乳腺癌&quot;},{&quot;value&quot;:&quot;胃癌&quot;,&quot;text&quot;:&quot;胃癌&quot;},{&quot;value&quot;:&quot;肺癌&quot;,&quot;text&quot;:&quot;肺癌&quot;},{&quot;value&quot;:&quot;食管癌&quot;,&quot;text&quot;:&quot;食管癌&quot;},{&quot;value&quot;:&quot;结直肠癌&quot;,&quot;text&quot;:&quot;结直肠癌&quot;},{&quot;value&quot;:&quot;小肠癌&quot;,&quot;text&quot;:&quot;小肠癌&quot;},{&quot;value&quot;:&quot;肝癌&quot;,&quot;text&quot;:&quot;肝癌&quot;},{&quot;value&quot;:&quot;胰腺癌&quot;,&quot;text&quot;:&quot;胰腺癌&quot;},{&quot;value&quot;:&quot;妇科肿瘤&quot;,&quot;text&quot;:&quot;妇科肿瘤&quot;},{&quot;value&quot;:&quot;泌尿系肿瘤&quot;,&quot;text&quot;:&quot;泌尿系肿瘤&quot;},{&quot;value&quot;:&quot;血液淋巴系统肿瘤&quot;,&quot;text&quot;:&quot;血液淋巴系统肿瘤&quot;},{&quot;value&quot;:&quot;神经系统肿瘤&quot;,&quot;text&quot;:&quot;神经系统肿瘤&quot;},{&quot;value&quot;:&quot;软组织肉瘤&quot;,&quot;text&quot;:&quot;软组织肉瘤&quot;},{&quot;value&quot;:&quot;其他&quot;,&quot;text&quot;:&quot;其他&quot;},{&quot;value&quot;:&quot;神经内分泌肿瘤&quot;,&quot;text&quot;:&quot;神经内分泌肿瘤&quot;}]"
																	data-fieldcode="F001657"
																	data-fieldid="Mh_jiazuzhongliuleixing"
																	data-fieldkind="1" data-form="wycombo"
																	data-id="1193127" data-itemsource="0"
																	data-recordid="304127" data-tableid="T_medicalhis"
																	data-textfield="text" data-value="" id="F001657"
																	name="F001657"
																	style="text-align: right; font-size: 12px; padding-right: 16px; width: 130px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
												</tbody>
												<tbody class="list-data" style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;" data-id="0"
														id="row_404_5NGH7PdF">
														<td
															style="text-align: center; width: 120px; font-family: &amp; #39;"><span
															class="list-crffield" data-fieldcode="R000000"
															data-fieldid="" data-fieldkind="0" data-id="0"
															data-recordid="304127" data-tableid="T_medicalhis"
															id="R000000" name="R000000"
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">1</span></td>
														<td
															style="text-align: center; width: 120px; font-family: &amp; #39;"><select
															class="form-control crfform-input list-crffield"
															data-fieldcode="F001656" data-fieldid="Mh_relation"
															data-fieldkind="0" data-id="1193126" data-itemsource="0"
															data-recordid="304127" data-tableid="T_medicalhis"
															data-textfield="value" id="F001656" name="F001656"
															style="text-align: right; font-size: 12px; width: 114px; font-family: &amp; #39;"><option
																	title="" style="font-family: &amp; #39;"></option>
																<option value="0" title="本人"
																	style="font-family: &amp; #39;">本人</option>
																<option value="1" title="父亲"
																	style="font-family: &amp; #39;">父亲</option>
																<option value="2" title="母亲"
																	style="font-family: &amp; #39;">母亲</option>
																<option value="3" title="爷爷"
																	style="font-family: &amp; #39;">爷爷</option>
																<option value="4" title="奶奶"
																	style="font-family: &amp; #39;">奶奶</option>
																<option value="5" title="外公"
																	style="font-family: &amp; #39;">外公</option>
																<option value="6" title="外婆"
																	style="font-family: &amp; #39;">外婆</option>
																<option value="7" title="兄弟"
																	style="font-family: &amp; #39;">兄弟</option>
																<option value="8" title="姐妹"
																	style="font-family: &amp; #39;">姐妹</option>
																<option value="9" title="其他"
																	style="font-family: &amp; #39;">其他</option>
																<option value="10" title="上辈"
																	style="font-family: &amp; #39;">上辈</option>
																<option value="11" title="同辈"
																	style="font-family: &amp; #39;">同辈</option>
																<option value="12" title="祖辈"
																	style="font-family: &amp; #39;">祖辈</option></select></td>
														<td
															style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input list-crffield ui-autocomplete-input"
																	data-datas="[{&quot;value&quot;:&quot;无&quot;,&quot;text&quot;:&quot;无&quot;},{&quot;value&quot;:&quot;大肠癌&quot;,&quot;text&quot;:&quot;大肠癌&quot;},{&quot;value&quot;:&quot;鼻咽癌及头颈部肿瘤&quot;,&quot;text&quot;:&quot;鼻咽癌及头颈部肿瘤&quot;},{&quot;value&quot;:&quot;乳腺癌&quot;,&quot;text&quot;:&quot;乳腺癌&quot;},{&quot;value&quot;:&quot;胃癌&quot;,&quot;text&quot;:&quot;胃癌&quot;},{&quot;value&quot;:&quot;肺癌&quot;,&quot;text&quot;:&quot;肺癌&quot;},{&quot;value&quot;:&quot;食管癌&quot;,&quot;text&quot;:&quot;食管癌&quot;},{&quot;value&quot;:&quot;结直肠癌&quot;,&quot;text&quot;:&quot;结直肠癌&quot;},{&quot;value&quot;:&quot;小肠癌&quot;,&quot;text&quot;:&quot;小肠癌&quot;},{&quot;value&quot;:&quot;肝癌&quot;,&quot;text&quot;:&quot;肝癌&quot;},{&quot;value&quot;:&quot;胰腺癌&quot;,&quot;text&quot;:&quot;胰腺癌&quot;},{&quot;value&quot;:&quot;妇科肿瘤&quot;,&quot;text&quot;:&quot;妇科肿瘤&quot;},{&quot;value&quot;:&quot;泌尿系肿瘤&quot;,&quot;text&quot;:&quot;泌尿系肿瘤&quot;},{&quot;value&quot;:&quot;血液淋巴系统肿瘤&quot;,&quot;text&quot;:&quot;血液淋巴系统肿瘤&quot;},{&quot;value&quot;:&quot;神经系统肿瘤&quot;,&quot;text&quot;:&quot;神经系统肿瘤&quot;},{&quot;value&quot;:&quot;软组织肉瘤&quot;,&quot;text&quot;:&quot;软组织肉瘤&quot;},{&quot;value&quot;:&quot;其他&quot;,&quot;text&quot;:&quot;其他&quot;},{&quot;value&quot;:&quot;神经内分泌肿瘤&quot;,&quot;text&quot;:&quot;神经内分泌肿瘤&quot;}]"
																	data-fieldcode="F001657"
																	data-fieldid="Mh_jiazuzhongliuleixing"
																	data-fieldkind="1" data-form="wycombo"
																	data-id="1193127" data-itemsource="0"
																	data-recordid="304127" data-tableid="T_medicalhis"
																	data-textfield="text" data-value=""
																	id="F001657_404_5NGH7PdF" name="F001657_404_5NGH7PdF"
																	style="text-align: right; font-size: 12px; padding-right: 16px; width: 130px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
														<td
															style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																class="btn-group" style="font-family: &amp; #39;">
															</div></td>
														<td style="display: none; font-family: &amp; #39;"></td>
													</tr>
												</tbody>
												<tbody class="list-deleted hidden"
													style="font-family: &amp; #39;"></tbody>
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td colspan="4"
															style="text-align: right; font-family: &amp; #39;"><div
																class="btn-group box-btn-right"
																style="font-family: &amp; #39;">
															</div></td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-label" colspan="7"
										style="text-align: right; width: 140px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">其他家族史</span></td>
									<td class="td-control" colspan="5"
										style="text-align: left; width: 100px; font-family: &amp; #39;"><div
											class="radio-container" data-form="radio" id="F001658"
											style="font-family: &amp; #39;">
											<label class="radio" style="font-family: &amp; #39;"><input
												data-value="0" id="F001658_1793434" name="F001658_items"
												type="checkbox" value="0" style="font-family: &amp; #39;">无</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="1" id="F001658_1793433" name="F001658_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">有</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001658" data-fieldid="Io_jiazushi"
												data-fieldkind="1" data-id="1193128" data-recordid="304115"
												data-tableid="T_inhospitalhis" data-textfield="value"
												id="F001658_val" name="F001658_val"
												style="text-align: left; font-size: 12px; width: 80px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
									<td colspan="2" data-ref-fieldcode="F001658"
										data-ref-itemvalue="1" data-ref-type="show"
										style="display: none; font-family: &amp; #39;"></td>
									<td class="td-control" colspan="18"
										data-ref-fieldcode="F001658" data-ref-itemvalue="1"
										data-ref-type="show"
										style="text-align: left; display: none; width: 360px; font-family: &amp; #39;"><div
											class="checkbox-container" data-form="checkbox" id="F001659"
											style="font-family: &amp; #39;">
											<label class="checkbox" style="font-family: &amp; #39;"><input
												data-value="1" id="F001659_1793435" name="F001659_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">高血压史</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="2" id="F001659_1793436" name="F001659_items"
												type="checkbox" value="2" style="font-family: &amp; #39;">糖尿病史</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="10" id="F001659_1793437" name="F001659_items"
												type="checkbox" value="10" style="font-family: &amp; #39;">自身免疫系统疾病</label><label
												class="checkbox" style="font-family: &amp; #39;"><input
												data-value="8" id="F001659_1793438" name="F001659_items"
												type="checkbox" value="8" style="font-family: &amp; #39;">其他疾病史</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001659" data-fieldid="Mh_name"
												data-fieldkind="0" data-id="1193129" data-recordid="304126"
												data-tableid="T_medicalhis" data-textfield="value"
												id="F001659_val" name="F001659_val"
												style="text-align: left; font-size: 12px; width: 340px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
									<td class="td-control" colspan="8" data-ref-fieldcode="F001659"
										data-ref-itemvalue="8" data-ref-type="show"
										style="text-align: left; display: none; width: 160px; font-family: &amp; #39;"><input
										class="form-control crfform-input crffield"
										data-fieldcode="F001660" data-fieldid="Mh_otherjibingshi"
										data-fieldkind="1" data-id="1193130" data-recordid="304126"
										data-tableid="T_medicalhis" id="F001660" name="F001660"
										style="text-align: left; font-size: 12px; width: 140px; font-family: &amp; #39;"
										type="text" value=""></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-label" colspan="7"
										style="text-align: right; width: 140px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">吸烟</span></td>
									<td class="td-control" colspan="10"
										style="text-align: left; width: 200px; font-family: &amp; #39;"><div
											class="radio-container" data-form="radio" id="F001687"
											style="font-family: &amp; #39;">
											<label class="radio" style="font-family: &amp; #39;"><input
												data-value="0" id="F001687_1816095" name="F001687_items"
												type="checkbox" value="0" style="font-family: &amp; #39;">无</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="1" id="F001687_1816096" name="F001687_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">有</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="2" id="F001687_1816094" name="F001687_items"
												type="checkbox" value="2" style="font-family: &amp; #39;">已戒</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001687" data-fieldid="Di_ahistoryofsmoking"
												data-fieldkind="1" data-id="1207813" data-recordid="304115"
												data-tableid="T_inhospitalhis" data-textfield="value"
												id="F001687_val" name="F001687_val"
												style="text-align: left; font-size: 12px; width: 180px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
									<td class="td-control" colspan="18"
										data-ref-fieldcode="F001687" data-ref-itemvalue="1"
										data-ref-type="show"
										style="text-align: left; display: none; width: 360px; font-family: &amp; #39;"><div
											class="radio-container" data-form="radio" id="F001688"
											style="font-family: &amp; #39;">
											<label class="radio" style="font-family: &amp; #39;"><input
												data-value="1" id="F001688_1816093" name="F001688_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">＜10支/天</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="2" id="F001688_1816092" name="F001688_items"
												type="checkbox" value="2" style="font-family: &amp; #39;">10-20支/天</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="3" id="F001688_1816091" name="F001688_items"
												type="checkbox" value="3" style="font-family: &amp; #39;">＞20支/天</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001688"
												data-fieldid="Mh_theaverageintensityofsmoking"
												data-fieldkind="1" data-id="1207814" data-recordid="304126"
												data-tableid="T_medicalhis" data-textfield="value"
												id="F001688_val" name="F001688_val"
												style="text-align: left; font-size: 12px; width: 340px; font-family: &amp; #39;"
												type="hidden">
										</div>
										<span class="remark-label"
										style="text-align: left; font-size: 12px; padding-left: 3px; font-family: &amp; #39;">&nbsp;</span></td>
									<td class="td-label" colspan="2" data-ref-fieldcode="F001687"
										data-ref-itemvalue="1" data-ref-type="show"
										style="text-align: right; display: none; width: 40px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">烟龄</span></td>
									<td class="td-control" colspan="5" data-ref-fieldcode="F001687"
										data-ref-itemvalue="1" data-ref-type="show"
										style="text-align: left; display: none; width: 100px; font-family: &amp; #39;"><input
										class="form-control crfform-input crffield"
										data-fieldcode="F001689"
										data-fieldid="Mh_timeofsmokingcigarette" data-fieldkind="1"
										data-id="1207815" data-recordid="304126"
										data-tableid="T_medicalhis" id="F001689" name="F001689"
										style="text-align: left; font-size: 12px; width: 60px; font-family: &amp; #39;"
										type="text" value=""><span class="remark-label"
										style="text-align: left; font-size: 12px; padding-left: 3px; font-family: &amp; #39;">年</span></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-label" colspan="7"
										style="text-align: right; width: 140px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">饮酒</span></td>
									<td class="td-control" colspan="10"
										style="text-align: left; width: 200px; font-family: &amp; #39;"><div
											class="radio-container" data-form="radio" id="F001690"
											style="font-family: &amp; #39;">
											<label class="radio" style="font-family: &amp; #39;"><input
												data-value="0" id="F001690_1816089" name="F001690_items"
												type="checkbox" value="0" style="font-family: &amp; #39;">无</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="1" id="F001690_1816090" name="F001690_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">有</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="2" id="F001690_1816088" name="F001690_items"
												type="checkbox" value="2" style="font-family: &amp; #39;">已戒</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001690"
												data-fieldid="Io_shifouyouyinjiushi" data-fieldkind="1"
												data-id="1207816" data-recordid="304115"
												data-tableid="T_inhospitalhis" data-textfield="value"
												id="F001690_val" name="F001690_val"
												style="text-align: left; font-size: 12px; width: 180px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
									<td class="td-control" colspan="18"
										data-ref-fieldcode="F001690" data-ref-itemvalue="1"
										data-ref-type="show"
										style="text-align: left; display: none; width: 360px; font-family: &amp; #39;"><div
											class="radio-container" data-form="radio" id="F001691"
											style="font-family: &amp; #39;">
											<label class="radio" style="font-family: &amp; #39;"><input
												data-value="1" id="F001691_1816087" name="F001691_items"
												type="checkbox" value="1" style="font-family: &amp; #39;">＜2两/周</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="2" id="F001691_1816086" name="F001691_items"
												type="checkbox" value="2" style="font-family: &amp; #39;">2-5两/周</label><label
												class="radio" style="font-family: &amp; #39;"><input
												data-value="3" id="F001691_1816085" name="F001691_items"
												type="checkbox" value="3" style="font-family: &amp; #39;">＞5两/周</label><input
												class="form-control crfform-input crffield"
												data-fieldcode="F001691"
												data-fieldid="Mh_pingjunyinjiuqiangdu" data-fieldkind="1"
												data-id="1207817" data-recordid="304126"
												data-tableid="T_medicalhis" data-textfield="value"
												id="F001691_val" name="F001691_val"
												style="text-align: left; font-size: 12px; width: 340px; font-family: &amp; #39;"
												type="hidden">
										</div></td>
									<td class="td-label" colspan="2" data-ref-fieldcode="F001690"
										data-ref-itemvalue="1" data-ref-type="show"
										style="text-align: right; display: none; width: 40px; font-family: &amp; #39;"><span
										style="text-align: right; font-size: 12px; font-family: &amp; #39;">酒龄</span></td>
									<td class="td-control" colspan="5" data-ref-fieldcode="F001690"
										data-ref-itemvalue="1" data-ref-type="show"
										style="text-align: left; display: none; width: 100px; font-family: &amp; #39;"><input
										class="form-control crfform-input crffield"
										data-fieldcode="F001692" data-fieldid="Mh_yinjiunianxian"
										data-fieldkind="1" data-id="1207818" data-recordid="304126"
										data-tableid="T_medicalhis" id="F001692" name="F001692"
										style="text-align: left; font-size: 12px; width: 60px; font-family: &amp; #39;"
										type="text" value=""><span class="remark-label"
										style="text-align: left; font-size: 12px; padding-left: 3px; font-family: &amp; #39;">年</span></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="48"
										style="text-align: left; width: 960px; font-family: &amp; #39;"><div
											id="F001457" class="crfgroup-box-noborder"
											data-elementtype="group" data-id="1180695"
											style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="color: rgb(18, 16, 16); text-align: left; font-size: 12px; font-family: &amp; #39;">
												<span class="remark-label"
													style="color: rgb(18, 16, 16); text-align: left; font-size: 12px; font-family: &amp; #39;">药物服用史</span>
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td class="td-control" colspan="40"
															style="text-align: left; width: 800px; font-family: &amp; #39;"><div
																id="F001644" class="crftable-edit"
																data-allowdeldefault="0" data-defaultval="[]"
																data-elementtype="table" data-id="1193077"
																data-recordid="304128" data-tableid="T_treatmenthis"
																style="font-family: &amp; #39;">
																<table class="table table-bordered"
																	style="font-family: &amp; #39;">
																	<thead style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">表号</td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;">药物名称</td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;">剂量</td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;">单位</td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;">持续时间</td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;">控制程度</td>
																			<td style="width: 30px; font-family: &amp; #39;">删除</td>
																		</tr>
																	</thead>
																	<tbody class="list-template hidden"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="0" data-id="0"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: left; font-size: 12px; font-family: &amp; #39;">表号</span></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					style="display: inline-block; position: relative; font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield ui-autocomplete-input"
																						data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																						data-fieldcode="F001645"
																						data-fieldid="Ct_medication" data-fieldkind="0"
																						data-form="wycombo" data-id="1193078"
																						data-itemsource="2"
																						data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																						data-recordid="304128"
																						data-tableid="T_treatmenthis"
																						data-textfield="text"
																						data-url="/Book/SearchMedicationJson"
																						data-value="" id="F001645" name="F001645"
																						style="text-align: right; font-size: 12px; padding-right: 16px; width: 130px; font-family: &amp; #39;"
																						type="text" value="" autocomplete="off"><i
																						class="dropdown-btn icofont-sort-down"
																						style="font-family: &amp; #39;"></i>
																				</div></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001648" data-fieldid="Ct_dosetotal"
																				data-fieldkind="1" data-id="1193081"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				id="F001648" name="F001648"
																				style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><div
																					style="display: inline-block; position: relative; font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield ui-autocomplete-input"
																						data-datas="[{&quot;value&quot;:&quot;微克&quot;,&quot;text&quot;:&quot;微克&quot;},{&quot;value&quot;:&quot;毫克&quot;,&quot;text&quot;:&quot;毫克&quot;},{&quot;value&quot;:&quot;克&quot;,&quot;text&quot;:&quot;克&quot;},{&quot;value&quot;:&quot;毫升&quot;,&quot;text&quot;:&quot;毫升&quot;},{&quot;value&quot;:&quot;毫当量&quot;,&quot;text&quot;:&quot;毫当量&quot;},{&quot;value&quot;:&quot;胶囊&quot;,&quot;text&quot;:&quot;胶囊&quot;},{&quot;value&quot;:&quot;片&quot;,&quot;text&quot;:&quot;片&quot;},{&quot;value&quot;:&quot;滴&quot;,&quot;text&quot;:&quot;滴&quot;},{&quot;value&quot;:&quot;喷&quot;,&quot;text&quot;:&quot;喷&quot;},{&quot;value&quot;:&quot;其他&quot;,&quot;text&quot;:&quot;其他&quot;}]"
																						data-fieldcode="F001649"
																						data-fieldid="Ct_doseunit" data-fieldkind="1"
																						data-form="wycombo" data-id="1193082"
																						data-itemsource="0" data-recordid="304128"
																						data-tableid="T_treatmenthis"
																						data-textfield="text" data-value="" id="F001649"
																						name="F001649"
																						style="text-align: right; font-size: 12px; padding-right: 16px; width: 70px; font-family: &amp; #39;"
																						type="text" value="" autocomplete="off"><i
																						class="dropdown-btn icofont-sort-down"
																						style="font-family: &amp; #39;"></i>
																				</div></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001646"
																				data-fieldid="Ct_leijifutongshijian"
																				data-fieldkind="1" data-id="1193079"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				id="F001646" name="F001646"
																				style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><select
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001647"
																				data-fieldid="Ct_kongzhichengdu" data-fieldkind="1"
																				data-id="1193080" data-itemsource="0"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				data-textfield="value" id="F001647" name="F001647"
																				style="text-align: right; font-size: 12px; width: 114px; font-family: &amp; #39;"><option
																						title="" style="font-family: &amp; #39;"></option>
																					<option value="3" title="达标"
																						style="font-family: &amp; #39;">达标</option>
																					<option value="4" title="未达标"
																						style="font-family: &amp; #39;">未达标</option>
																					<option value="5" title="波动"
																						style="font-family: &amp; #39;">波动</option></select></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-data"
																		style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;" data-id="0"
																			id="row_411_2WZNKiHw">
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><span
																				class="list-crffield" data-fieldcode="R000000"
																				data-fieldid="" data-fieldkind="0" data-id="0"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				id="R000000" name="R000000"
																				style="text-align: left; font-size: 12px; font-family: &amp; #39;">1</span></td>
																			<td
																				style="text-align: center; width: 160px; font-family: &amp; #39;"><div
																					style="display: inline-block; position: relative; font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield ui-autocomplete-input"
																						data-cols="[{ field: &#39;text&#39;, width: 200 }]"
																						data-fieldcode="F001645"
																						data-fieldid="Ct_medication" data-fieldkind="0"
																						data-form="wycombo" data-id="1193078"
																						data-itemsource="2"
																						data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																						data-recordid="304128"
																						data-tableid="T_treatmenthis"
																						data-textfield="text"
																						data-url="/Book/SearchMedicationJson"
																						data-value="" id="F001645_411_2WZNKiHw"
																						name="F001645_411_2WZNKiHw"
																						style="text-align: right; font-size: 12px; padding-right: 16px; width: 130px; font-family: &amp; #39;"
																						type="text" value="" autocomplete="off"><i
																						class="dropdown-btn icofont-sort-down"
																						style="font-family: &amp; #39;"></i>
																				</div></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001648" data-fieldid="Ct_dosetotal"
																				data-fieldkind="1" data-id="1193081"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				id="F001648_411_2WZNKiHw"
																				name="F001648_411_2WZNKiHw"
																				style="text-align: right; font-size: 12px; width: 80px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 100px; font-family: &amp; #39;"><div
																					style="display: inline-block; position: relative; font-family: &amp; #39;">
																					<input
																						class="form-control crfform-input list-crffield ui-autocomplete-input"
																						data-datas="[{&quot;value&quot;:&quot;微克&quot;,&quot;text&quot;:&quot;微克&quot;},{&quot;value&quot;:&quot;毫克&quot;,&quot;text&quot;:&quot;毫克&quot;},{&quot;value&quot;:&quot;克&quot;,&quot;text&quot;:&quot;克&quot;},{&quot;value&quot;:&quot;毫升&quot;,&quot;text&quot;:&quot;毫升&quot;},{&quot;value&quot;:&quot;毫当量&quot;,&quot;text&quot;:&quot;毫当量&quot;},{&quot;value&quot;:&quot;胶囊&quot;,&quot;text&quot;:&quot;胶囊&quot;},{&quot;value&quot;:&quot;片&quot;,&quot;text&quot;:&quot;片&quot;},{&quot;value&quot;:&quot;滴&quot;,&quot;text&quot;:&quot;滴&quot;},{&quot;value&quot;:&quot;喷&quot;,&quot;text&quot;:&quot;喷&quot;},{&quot;value&quot;:&quot;其他&quot;,&quot;text&quot;:&quot;其他&quot;}]"
																						data-fieldcode="F001649"
																						data-fieldid="Ct_doseunit" data-fieldkind="1"
																						data-form="wycombo" data-id="1193082"
																						data-itemsource="0" data-recordid="304128"
																						data-tableid="T_treatmenthis"
																						data-textfield="text" data-value=""
																						id="F001649_411_2WZNKiHw"
																						name="F001649_411_2WZNKiHw"
																						style="text-align: right; font-size: 12px; padding-right: 16px; width: 70px; font-family: &amp; #39;"
																						type="text" value="" autocomplete="off"><i
																						class="dropdown-btn icofont-sort-down"
																						style="font-family: &amp; #39;"></i>
																				</div></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><input
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001646"
																				data-fieldid="Ct_leijifutongshijian"
																				data-fieldkind="1" data-id="1193079"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				id="F001646_411_2WZNKiHw"
																				name="F001646_411_2WZNKiHw"
																				style="text-align: right; font-size: 12px; width: 100px; font-family: &amp; #39;"
																				type="text" value=""></td>
																			<td
																				style="text-align: center; width: 120px; font-family: &amp; #39;"><select
																				class="form-control crfform-input list-crffield"
																				data-fieldcode="F001647"
																				data-fieldid="Ct_kongzhichengdu" data-fieldkind="1"
																				data-id="1193080" data-itemsource="0"
																				data-recordid="304128" data-tableid="T_treatmenthis"
																				data-textfield="value" id="F001647" name="F001647"
																				style="text-align: right; font-size: 12px; width: 114px; font-family: &amp; #39;"><option
																						title="" style="font-family: &amp; #39;"></option>
																					<option value="3" title="达标"
																						style="font-family: &amp; #39;">达标</option>
																					<option value="4" title="未达标"
																						style="font-family: &amp; #39;">未达标</option>
																					<option value="5" title="波动"
																						style="font-family: &amp; #39;">波动</option></select></td>
																			<td
																				style="width: 50px; text-align: center; font-family: &amp; #39;"><div
																					class="btn-group" style="font-family: &amp; #39;">
																				</div></td>
																			<td style="display: none; font-family: &amp; #39;"></td>
																		</tr>
																	</tbody>
																	<tbody class="list-deleted hidden"
																		style="font-family: &amp; #39;"></tbody>
																	<tbody style="font-family: &amp; #39;">
																		<tr style="font-family: &amp; #39;">
																			<td colspan="7"
																				style="text-align: right; font-family: &amp; #39;"><div
																					class="btn-group box-btn-right"
																					style="font-family: &amp; #39;">
																				</div></td>
																		</tr>
																	</tbody>
																</table>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td colspan="42" style="width: 840px; font-family: &amp; #39;"><hr
											style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="leftlabel td-label" colspan="10"
										style="text-align: left; width: 200px; font-family: &amp; #39;"><span
										style="text-align: left; font-size: 16px; font-weight: bold; font-family: &amp; #39;">疾病诊断信息</span></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td colspan="43" style="width: 860px; font-family: &amp; #39;"><hr
											style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="leftlabel td-label" colspan="5"
										style="text-align: left; width: 100px; font-family: &amp; #39;"><span
										style="text-align: left; font-size: 12px; font-family: &amp; #39;">诊断日期</span></td>
									<td class="td-control" colspan="8"
										style="text-align: right; width: 160px; font-family: &amp; #39;"><div
											class="input-append date datepicker"
											data-date-autoclose="true" data-date-format="yyyy-mm-dd"
											data-form="datepicker" style="font-family: &amp; #39;">
											<input class="form-control crfform-input crffield"
												data-fieldcode="F000153" data-fieldid="Di_date"
												data-fieldkind="0" data-id="1180245" data-recordid="304115"
												data-tableid="T_inhospitalhis" id="F000153" name="F000153"
												style="text-align: right; font-size: 12px; width: 113px; font-family: &amp; #39;"
												type="text" value=""><span class="add-on"
												style="font-family: &amp; #39;"><i
												class="icofont-calendar" style="font-family: &amp; #39;"></i></span>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td class="td-control" colspan="20"
										style="text-align: center; width: 400px; font-family: &amp; #39;"><div
											id="F000185" class="crfgroup-box-noborder"
											data-elementtype="group" data-id="1180250"
											style="font-family: &amp; #39;">
											<div class="crfgroup-title"
												style="text-align: center; font-size: 14px; font-family: &amp; #39;">
												<span class="remark-label"
													style="text-align: center; font-size: 14px; font-family: &amp; #39;">出院诊断</span>
											</div>
											<div style="display: none; font-family: &amp; #39;">
												<input class="form-control crfform-input crffield"
													data-fieldcode="F000156" data-fieldid="Di_disease"
													data-fieldkind="0" data-id="1180253" data-recordid="304115"
													data-tableid="T_inhospitalhis" id="F000156" name="F000156"
													type="hidden" value="" style="font-family: &amp; #39;"><input
													class="form-control crfform-input crffield"
													data-fieldcode="F000157" data-fieldid="Di_organ"
													data-fieldkind="0" data-id="1180254" data-recordid="304115"
													data-tableid="T_inhospitalhis" id="F000157" name="F000157"
													type="hidden" value="" style="font-family: &amp; #39;">
											</div>
											<table border="0" cellpadding="3" cellspacing="0"
												class="table-crfform" style="font-family: &amp; #39;">
												<tbody style="font-family: &amp; #39;">
													<tr style="font-family: &amp; #39;">
														<td colspan="7" style="font-family: &amp; #39;"></td>
														<td class="td-label" colspan="8"
															style="text-align: center; width: 160px; font-family: &amp; #39;"><span
															style="color: rgb(201, 26, 68); text-align: center; font-size: 14px; font-family: &amp; #39;">结直肠癌ICD编码C18</span></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="24"
															style="width: 480px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="leftlabel td-label" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">主要诊断</span></td>
														<td class="td-control" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F000154" data-fieldid="Di_principle"
															data-fieldkind="0" data-id="1180251"
															data-recordid="304115" data-tableid="T_inhospitalhis"
															id="F000154" name="F000154"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">ICD</span></td>
														<td class="td-control" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input"
																	data-checkrule="true"
																	data-cols="[{ field: &#39;value&#39;, width: 100 },{ field: &#39;text&#39;, width: 200 }]"
																	data-fieldcode="F000155" data-fieldid="Di_principleicd"
																	data-fieldkind="0" data-form="wycombo"
																	data-id="1180252" data-itemsource="2"
																	data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																	data-recordid="304115"
																	data-required-warning="请填写主要诊断ICD"
																	data-tableid="T_inhospitalhis" data-textfield="value"
																	data-url="/Book/SearchICDJson" data-value=""
																	id="F000155" name="F000155"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 50px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="24"
															style="width: 480px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="leftlabel td-label" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">次要诊断1</span></td>
														<td class="td-control" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F000158" data-fieldid="Di_secondary1"
															data-fieldkind="0" data-id="1180255"
															data-recordid="304115" data-tableid="T_inhospitalhis"
															id="F000158" name="F000158"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">ICD</span></td>
														<td class="td-control" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input"
																	data-cols="[{ field: &#39;value&#39;, width: 100 },{ field: &#39;text&#39;, width: 200 }]"
																	data-fieldcode="F000159"
																	data-fieldid="Di_secondaryicd1" data-fieldkind="0"
																	data-form="wycombo" data-id="1180256"
																	data-itemsource="2"
																	data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" data-url="/Book/SearchICDJson"
																	data-value="" id="F000159" name="F000159"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 50px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="24"
															style="width: 480px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="leftlabel td-label" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">次要诊断2</span></td>
														<td class="td-control" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F000160" data-fieldid="Di_secondary2"
															data-fieldkind="0" data-id="1180257"
															data-recordid="304115" data-tableid="T_inhospitalhis"
															id="F000160" name="F000160"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">ICD</span></td>
														<td class="td-control" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input"
																	data-cols="[{ field: &#39;value&#39;, width: 100 },{ field: &#39;text&#39;, width: 200 }]"
																	data-fieldcode="F000161"
																	data-fieldid="Di_secondaryicd2" data-fieldkind="0"
																	data-form="wycombo" data-id="1180258"
																	data-itemsource="2"
																	data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" data-url="/Book/SearchICDJson"
																	data-value="" id="F000161" name="F000161"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 50px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="24"
															style="width: 480px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="leftlabel td-label" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">次要诊断3</span></td>
														<td class="td-control" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F000162" data-fieldid="Di_secondary3"
															data-fieldkind="0" data-id="1180259"
															data-recordid="304115" data-tableid="T_inhospitalhis"
															id="F000162" name="F000162"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">ICD</span></td>
														<td class="td-control" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input"
																	data-cols="[{ field: &#39;value&#39;, width: 100 },{ field: &#39;text&#39;, width: 200 }]"
																	data-fieldcode="F000163"
																	data-fieldid="Di_secondaryicd3" data-fieldkind="0"
																	data-form="wycombo" data-id="1180260"
																	data-itemsource="2"
																	data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" data-url="/Book/SearchICDJson"
																	data-value="" id="F000163" name="F000163"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 50px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td colspan="24"
															style="width: 480px; font-family: &amp; #39;"><hr
																style="height: 1px; border-width: 1px 0px 0px; border-top-style: solid; border-top-color: rgb(204, 204, 204); padding: 0px; margin: 0px; font-family: &amp; #39;"></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td class="leftlabel td-label" colspan="5"
															style="text-align: left; width: 100px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">次要诊断4</span></td>
														<td class="td-control" colspan="8"
															style="text-align: right; width: 160px; font-family: &amp; #39;"><input
															class="form-control crfform-input crffield"
															data-fieldcode="F000164" data-fieldid="Di_secondary4"
															data-fieldkind="0" data-id="1180261"
															data-recordid="304115" data-tableid="T_inhospitalhis"
															id="F000164" name="F000164"
															style="text-align: right; font-size: 12px; width: 140px; font-family: &amp; #39;"
															type="text" value=""></td>
														<td class="leftlabel td-label" colspan="2"
															style="text-align: left; width: 40px; font-family: &amp; #39;"><span
															style="text-align: left; font-size: 12px; font-family: &amp; #39;">ICD</span></td>
														<td class="td-control" colspan="4"
															style="text-align: left; width: 80px; font-family: &amp; #39;"><div
																style="display: inline-block; position: relative; font-family: &amp; #39;">
																<input
																	class="form-control crfform-input crffield ui-autocomplete-input"
																	data-cols="[{ field: &#39;value&#39;, width: 100 },{ field: &#39;text&#39;, width: 200 }]"
																	data-fieldcode="F000165"
																	data-fieldid="Di_secondaryicd4" data-fieldkind="0"
																	data-form="wycombo" data-id="1180262"
																	data-itemsource="2"
																	data-params="{&quot;studyid&quot;:&quot;2644&quot;}"
																	data-recordid="304115" data-tableid="T_inhospitalhis"
																	data-textfield="value" data-url="/Book/SearchICDJson"
																	data-value="" id="F000165" name="F000165"
																	style="text-align: left; font-size: 12px; padding-right: 16px; width: 50px; font-family: &amp; #39;"
																	type="text" value="" autocomplete="off"><i
																	class="dropdown-btn icofont-sort-down"
																	style="font-family: &amp; #39;"></i>
															</div></td>
													</tr>
													<tr style="font-family: &amp; #39;">
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
														<td
															style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
													</tr>
												</tbody>
											</table>
										</div></td>
								</tr>
								<tr style="font-family: &amp; #39;">
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
									<td
										style="margin: 0px; padding: 0px; font-size: 1px; line-height: 1px; height: 1px; width: 20px; font-family: &amp; #39;">&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>