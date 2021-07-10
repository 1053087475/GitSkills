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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	
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
    <script src="./stu_files/fuck.js.下载"></script>
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
    <div class="content-header ui-content-header" style="background-image:url('img/amber.jpg'")>
        <div class="container">
            <h1 class="content-heading">修改密码</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">

            <div class="col-xx-12 col-sm-6">
                <div class="card margin-bottom-no">
                    <div class="card-main">
                        <div class="card-inner">
                            <form action="${pageContext.request.contextPath}/updateWorkerPassword.do" method="post">
                                <div class="cardbtn-edit">
                                    <div class="card-heading">账号登录密码修改</div>
                                    <button onclick="form.submit();" type="button" class="btn btn-flat" ><span class="icon">check</span>&nbsp;
                                    </button>
                                </div>
                                <div class="form-group form-group-label control-highlight">
                                	<input type="hidden" name="eid" readonly =“readonly” value="${worker.eid }"/>
                                    <label class="floating-label" name="oldpwd">当前密码</label>
                                    <input class="form-control maxwidth-edit" name="oldpwd" id="oldpwd" type="password">
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" name="pwd">新密码</label>
                                    <input class="form-control maxwidth-edit" name="pwd" id="pwd" type="password">
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" name="repwd">确认新密码</label>
                                    <input class="form-control maxwidth-edit" name="repwd" id="repwd" type="password">
                                </div>
                                <div class="form-group form-group-label">
                                	<div class="card-heading">通知栏：${result }</div>
                                </div>
                                </form>
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