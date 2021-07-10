<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                	<form action="${pageContext.request.contextPath}/go_areset_pwd.do" method="post" id="go_areset_pwd" style="margin:0px;">
                    
                    <a class="waves-attach waves-effect" href="javascript:document:go_areset_pwd.submit();"><span class="icon icon-lg margin-right">account_box</span>修改密码</a>
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
                        <form action="${pageContext.request.contextPath}/go_auser.do" method="post" id="go_wuser" style="margin:0px;">
                            <a href="javascript:document:go_wuser.submit();"><i class="icon icon-lg">account_box	</i>&nbsp;用户信息</a>
                            </form>
                        </li>

                        <li>
                        <form action="${pageContext.request.contextPath}/allWorker.do" method="post" id="allWorker" style="margin:0px;">
                            <a href="javascript:document:allWorker.submit();"><i class="icon icon-lg">visibility</i>&nbsp;查看职工信息</a>
                        </form> 
                        </li>
                        
                        <li>
                        <form action="${pageContext.request.contextPath}/statistics.do" method="post" id="statistics" style="margin:0px;">
                            <a href="javascript:document:statistics.submit();"><i class="icon icon-lg">hourglass_empty</i>&nbsp;统计</a>
                        </form> 
                        </li>
                    </ul>
                    <a class="waves-attach waves-effect" data-toggle="collapse" href="https://www.wodetaylor.cf/user#ui_menu_use" one-link-mark="yes">管理</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_use">
                        <li>
                        
                        <form action="${pageContext.request.contextPath}/go_insert.do" method="post" style="margin:0px;" id="go_insert">
                            <a href="javascript:document:go_insert.submit();"><i class="icon icon-lg">add</i>&nbsp;添加职工</a>
                        </form> 
                        </li>
                        <li>
                        
                        <form action="${pageContext.request.contextPath}/go_find.do" method="post" style="margin:0px;" id="go_find">
                            <a href="javascript:document:go_find.submit();"><i class="icon icon-lg">search</i>&nbsp;搜索职工</a>
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
            <h1 class="content-heading">职工列表</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">
            <div class="ui-card-wrap">
                <div class="row">
                    
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <div class="card-doubleinner">
                                        <p class="card-heading">${msg } ${result }</p>
                                    </div>
                                    <div class="card-table">
                                        <div class="table-responsive table-user">
                                        
                                            <table class="table" id="mytable">
                                                <tbody><tr>
                                                    <th >职工号</th>
                                                    <th >职工姓名</th>
                                                    <th >职工职业</th>
                                                    <th >职工部门</th>
                                                    <th >工作年限</th>
                                                    <th width=100px style="padding-left:76px" colspan="2">相关操作</th>
                                                </tr>
                                                <c:forEach items="${workers }" var="x">
												
                                                <tr>
                                                	<form action="${pageContext.request.contextPath}/searchWorker.do" method="post">
                                                    <td ><input type="hidden" name="eid" readonly =“readonly” value="${x.eid }"/>${x.eid }</td>
   													<td >${x.name }</td>
   													<td >${x.position }</td>
   													<td >${x.dpname }</td>
   													<td >${x.workyear }</td>
   													<td width=30px style="padding-left:10px;padding-right:5px">
   													<button onclick="form.submit();" type="button" class="btn btn-brand" >查看信息</button>
   													</td>
   													 </form>
   													 
   													 <form action="${pageContext.request.contextPath}/deleteWorker.do" method="post">
   													 <td width=30px style="padding-left:5px;padding-right:10px">
   														<input type="hidden" name="eid" readonly =“readonly” value="${x.eid }"/>
   														<button onclick="form.submit();" type="button" class="btn btn-red" style="color:red">删除信息</button>
   													</td>
   													</form>
                                                </tr>
                                               
													</c:forEach>
                                                </tbody></table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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