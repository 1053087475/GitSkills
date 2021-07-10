<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    %>
<html>
<head>
	<base href="<%=basePath%>">

	<meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#4285f4">
    <title>人事管理系统</title>
	<style>
        
        .a td{
        width:300px;
        height:30px;
        }
    </style>
    <!-- css -->
    
    <link rel = "stylesheet" style = "text/css" href = "css/user.css">
    <link rel = "stylesheet" style = "text/css" href = "css/base.min.css">
    <link rel = "stylesheet" style = "text/css" href = "css/css">
    <link rel = "stylesheet" style = "text/css" href = "css/project.min.css">
    <link rel = "stylesheet" style = "text/css" href = "css/mybutton.css">
    <link rel="shortcut icon" href="img/head.ico">
    <link rel="bookmark" href="img/head.ico">

    <!-- jquery -->
    <script type="text/javascript" src="js/jquery@3.2.1"></script>
    <script type="text/javascript" src="js/qrcode.min.js"></script>
    <!-- js -->
    <script type="text/javascript" src="${path}/js/fuck.js.下载"></script>
    <!-- ... -->
<style class="blockbyte-bs-style" data-name="content">body>div#blockbyte-bs-indicator>div{opacity:0;pointer-events:none}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-visible,body>iframe#blockbyte-bs-overlay.blockbyte-bs-visible{opacity:1;pointer-events:auto}body.blockbyte-bs-noscroll{overflow:hidden !important}body>div#blockbyte-bs-indicator>div{position:absolute;transform:translate3d(-40px, 0, 0);top:0;left:0;width:40px !important;height:100%;background:rgba(0,0,0,0.5);border-radius:0 10px 10px 0;transition:opacity 0.3s, transform 0.3s;z-index:2}body>div#blockbyte-bs-indicator>div>span{-webkit-mask:no-repeat center/32px;-webkit-mask-image:url(chrome-extension://jdbnofccmhefkmjbkkdkfiicjkgofkdh/img/icon-bookmark.svg);background-color:#ffffff;position:absolute;display:block;top:0;left:0;width:100%;height:100%}body>div#blockbyte-bs-indicator[data-pos='right']{left:auto;right:0}body>div#blockbyte-bs-indicator[data-pos='right']>div{transform:translate3d(40px, 0, 0);left:auto;right:0;border-radius:10px 0 0 10px}body>div#blockbyte-bs-indicator.blockbyte-bs-fullHeight>div{border-radius:0}body>div#blockbyte-bs-indicator.blockbyte-bs-hover>div{transform:translate3d(0, 0, 0);opacity:1}body>div#blockbyte-bs-indicator[data-pos='left'].blockbyte-bs-has-lsb{height:100% !important;top:0 !important}body>div#blockbyte-bs-indicator[data-pos='left'].blockbyte-bs-has-lsb>div{background:transparent}body>div#blockbyte-bs-indicator[data-pos='left'].blockbyte-bs-has-lsb>div>span{-webkit-mask-position-y:20px}body>iframe#blockbyte-bs-sidebar{width:270px;max-width:none;height:0;z-index:2147483646;background-color:transparent !important;border:none;display:block !important;transform:translate3d(-270px, 0, 0);will-change:width, height, opacity, transform;transition:width 0s 0.3s, height 0s 0.3s, opacity 0.3s, transform 0.3s}body>iframe#blockbyte-bs-sidebar[data-pos='right']{left:auto;right:0;transform:translate3d(270px, 0, 0)}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-visible{width:calc(100% + 270px);height:100%;transform:translate3d(0, 0, 0);transition:opacity 0.3s, transform 0.3s}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-hideMask{background:none !important}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-hideMask:not(.blockbyte-bs-hover){width:calc(270px + 50px)}body>iframe#blockbyte-bs-overlay{width:100%;max-width:none;height:100%;z-index:2147483647;border:none;background:rgba(255,255,255,0.5) !important;transition:opacity 0.3s}
</style>
</head>
<body class="page-orange">
<header class="header header-orange header-transparent header-waterfall ui-header affix-top">
    <ul class="nav nav-list pull-left">
        <div>
            <a data-toggle="menu" href="https://www.wodetaylor.ml/user/announcement#ui_menu">
                <span class="icon icon-lg text-white">menu</span>
            </a>
        </div>
    </ul>

    <ul class="nav nav-list pull-right">
        <div class="dropdown margin-right">
            <a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
                                <span class="access-hide"></span>
                <span class="icon icon-cd margin-right">account_circle</span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                	<form action="${pageContext.request.contextPath}/go_wreset_pwd.do" method="post" id="go_wreset_pwd" style="margin:0px;">
                    
                    <a class="waves-attach waves-effect" href="javascript:document:go_wreset_pwd.submit();"><span class="icon icon-lg margin-right">account_box</span>修改密码</a>
                    </form>
                </li>

                <li>
                    <form action="${pageContext.request.contextPath}/go_index.do" method="post" id="go_index" style="margin:0px;">
            			<a class="padding-right-cd waves-attach waves-effect" href="javascript:document:go_index.submit();"><span class="icon icon-lg margin-right">exit_to_app</span>登出</a>
            		</form>
                </li>
            </ul>
                    </div>
    </ul>
</header>
<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
    <div class="menu-scroll">
        <div class="menu-content">
        	<form action="${pageContext.request.contextPath}/go_introduce.do" method="post" id="go_introduce" style="margin:0px;">
            	<a class="menu-logo" href="javascript:document:go_introduce.submit();"><i class="icon icon-lg">language</i>&nbsp;人事管理系统</a>
            </form>
            <ul class="nav">
                <li>
                    <a class="waves-attach waves-effect" data-toggle="collapse" href="https://www.wodetaylor.ml/user/announcement#ui_menu_me">我的</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_me">
                        <li>
                        <form action="${pageContext.request.contextPath}/go_wuser.do" method="post" id="go_wuser" style="margin:0px;">
                            <a href="javascript:document:go_wuser.submit();"><i class="icon icon-lg">account_box	</i>&nbsp;用户信息</a>
                            </form>
                        </li>

                        <li>
                        <form action="${pageContext.request.contextPath}/go_wreset_info.do" method="post" id="go_wreset_info" style="margin:0px;">
                            <a href="javascript:document:go_wreset_info.submit();"><i class="icon icon-lg">sync_problem</i>&nbsp;信息编辑</a>
                        </form> 
                        </li>
                    </ul>
                  </li>
            </ul>
        </div>
    </div>
</nav>


<main class="content">
    <div class="content-header ui-content-header" style="background-image:url('img/amber.jpg')">
        <div class="container">
            <h1 class="content-heading">修改资料</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">
            <div class="col-xx-12 col-sm-6">
                <div class="card margin-bottom-no">
                    <div class="card-main">
                        <div class="card-inner">
                            <div class="card-inner">
                            	<form action="${pageContext.request.contextPath}/updateWorkerInfo.do" method="post">
								<input type="hidden" name="eid" readonly =“readonly” value="${worker.eid }"/>
                                <div class="cardbtn-edit">
                                    <div class="card-heading">职工基本信息</div>
                                    <button onclick="form.submit();" class="btn btn-flat" id="ss-pwd-update"><span class="icon">check</span>&nbsp;</button>
                                </div>
							    	<table class="a">
							    	
							            <tr>
							                <td>职工号：${worker.eid}</td>
							                <td>姓名：${worker.name}</td>
							            </tr>
							            
							            <tr>
							                <td>性别：${worker.sex}</td>
							                <td>民族：${worker.nation}</td>
							            </tr>
							            <tr>
							                <td>证件类型：身份证</td>
							                <td>身份证号：${worker.id_number}</td>
							            </tr>
							            <tr>
							                <td>出生日期：${worker.birth}</td>
							                <td>受教育情况：${worker.education}</td>
							            </tr>
							            <tr>
							                <td>是否单身：
							                <select name="is_single" id="is_single">
							                    <option value="${worker.is_single}" style="visibility:hidden" >${worker.is_single}</option>
							                    <option value="是" style="">是</option>
							                    <option value="否" style="">否</option>
							                </select>
							                 </td>
							                <td></td>
							            </tr>
								</table>
								<div class="card-heading">职工工作信息</div>
								<table class="a">
							        <tr>
							            <td>所在部门：${worker.dpname}</td>
							            <td>职位：${worker.position}</td>
							        </tr>
							        <tr>
							            <td>入职时间：${worker.entry_time}</td>
							        </tr>
							    </table>
							    <div class="card-heading">基础联系信息</div>
							    <table>
							    	<tr>
							    		<td width=80px>手机号码：</td>
							    		<td width=500px><input style="text-align:left" type="text" value="${worker.phone}" name="phone" id="phone"></td>
							    	</tr>
							    	<tr>
							    		<td>E-mail：</td>
							    		<td><input style="text-align:left" type="text" value="${worker.mail}" name="mail" id="mail"></td>
							    	</tr>
							    	<tr>
							    		<td>家庭地址：</td>
							    		<td><input style="text-align:left" type="text" value="${worker.address}" name="address" id="address"></td>
							    	</tr>
							    </table>
							    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <div class="col-xx-12 col-sm-6" style="width:500px">
                     <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="card-inner">
                                    <div class="cardbtn-edit">
                                        <div class="card-heading">通知栏：${result }</div>
                                        
                                    </div>
                                                                    </div>
                            </div>
                        </div>
                    </div>
                    </div>
                <div aria-hidden="true" class="modal modal-va-middle fade" id="result" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-xs">
        <div class="modal-content">
            <div class="modal-inner">
                <p class="h5 margin-top-sm text-black-hint" id="msg"></p>
            </div>
            <div class="modal-footer">
                <p class="text-right">
                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal" type="button" id="result_ok">知道了
                    </button>
                </p>
            </div>
        </div>
    </div>
</div>        </section>
    </div>
</main>
<!-- 
<footer class="ui-footer">
    <div class="container">
        ©2020 霉霉小站 | Powered by <a href="https://www.wodetaylor.ml/staff">SSPANEL</a>
            </div>
</footer>
 -->
    </script>
    <script type="text/javascript" src="js/analytics.js"></script>
    <!-- End Google Analytics -->
	<script type="text/javascript" src="js/jquery-validation@1.17.0"></script>
    <script type="text/javascript" src="js/base.min.js"></script>
    <script type="text/javascript" src="js/project.min.js"></script>
	<script type="text/javascript" src="js/perfops-rom"></script>
</body></html>