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
    
    <link rel = "stylesheet" style = "text/css" href = "css/auth.css">
    <link rel = "stylesheet" style = "text/css" href = "css/base.min.css">
    <link rel = "stylesheet" style = "text/css" href = "css/css">
    <link rel = "stylesheet" style = "text/css" href = "css/project.min.css">
    <link rel="shortcut icon" href="img/head.ico">
    <link rel="bookmark" href="img/head.ico">
    <!-- favicon -->
    <!-- js -->
    <script type="text/javascript" src="${path}/js/fuck.js.下载"></script>
    <!-- ... -->
<style class="blockbyte-bs-style" data-name="content">body>div#blockbyte-bs-indicator>div{opacity:0;pointer-events:none}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-visible,body>iframe#blockbyte-bs-overlay.blockbyte-bs-visible{opacity:1;pointer-events:auto}body.blockbyte-bs-noscroll{overflow:hidden !important}body>div#blockbyte-bs-indicator>div{position:absolute;transform:translate3d(-40px, 0, 0);top:0;left:0;width:40px !important;height:100%;background:rgba(0,0,0,0.5);border-radius:0 10px 10px 0;transition:opacity 0.3s, transform 0.3s;z-index:2}body>div#blockbyte-bs-indicator>div>span{-webkit-mask:no-repeat center/32px;-webkit-mask-image:url(chrome-extension://jdbnofccmhefkmjbkkdkfiicjkgofkdh/img/icon-bookmark.svg);background-color:#ffffff;position:absolute;display:block;top:0;left:0;width:100%;height:100%}body>div#blockbyte-bs-indicator[data-pos='right']{left:auto;right:0}body>div#blockbyte-bs-indicator[data-pos='right']>div{transform:translate3d(40px, 0, 0);left:auto;right:0;border-radius:10px 0 0 10px}body>div#blockbyte-bs-indicator.blockbyte-bs-fullHeight>div{border-radius:0}body>div#blockbyte-bs-indicator.blockbyte-bs-hover>div{transform:translate3d(0, 0, 0);opacity:1}body>div#blockbyte-bs-indicator[data-pos='left'].blockbyte-bs-has-lsb{height:100% !important;top:0 !important}body>div#blockbyte-bs-indicator[data-pos='left'].blockbyte-bs-has-lsb>div{background:transparent}body>div#blockbyte-bs-indicator[data-pos='left'].blockbyte-bs-has-lsb>div>span{-webkit-mask-position-y:20px}body>iframe#blockbyte-bs-sidebar{width:270px;max-width:none;height:0;z-index:2147483646;background-color:transparent !important;border:none;display:block !important;transform:translate3d(-270px, 0, 0);will-change:width, height, opacity, transform;transition:width 0s 0.3s, height 0s 0.3s, opacity 0.3s, transform 0.3s}body>iframe#blockbyte-bs-sidebar[data-pos='right']{left:auto;right:0;transform:translate3d(270px, 0, 0)}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-visible{width:calc(100% + 270px);height:100%;transform:translate3d(0, 0, 0);transition:opacity 0.3s, transform 0.3s}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-hideMask{background:none !important}body>iframe#blockbyte-bs-sidebar.blockbyte-bs-hideMask:not(.blockbyte-bs-hover){width:calc(270px + 50px)}body>iframe#blockbyte-bs-overlay{width:100%;max-width:none;height:100%;z-index:2147483647;border:none;background:rgba(255,255,255,0.5) !important;transition:opacity 0.3s}
</style>
</head>

<body class="page-brand">




<div class="authpage">
    <div class="container">
        <form action="${pageContext.request.contextPath}/workerlogin.do" method="POST">
       		<div class="auth-main auth-row auth-col-one">
                <div class="auth-top auth-row">
                    <a class="boardtop-left" href="" one-link-mark="yes">
                        <div>首 页</div>
                    </a>
                    <div class="auth-logo">
                        <img src="img/logo.ico">
                    </div>
                    <a class="boardtop-right" one-link-mark="yes">
                        <div>职工</div>
                    </a>
                </div>
                <div class="auth-row">
                    <div class="form-group-label auth-row row-login">
                        <label class="floating-label" for="eid" >职工编号</label>
                        <input class="form-control maxwidth-auth" type="text" name="id" id="id">
                    </div>
                </div>
                <div class="auth-row">
                    <div class="form-group-label auth-row row-login">
                        <label class="floating-label" for="passwd" >登录密码</label>
                        <input class="form-control maxwidth-auth" type="password" name="password" id="password">
                    </div>
                </div>
                <div class="auth-row">
                    <div class="form-group-label auth-row row-login">
                        <input class="form-control maxwidth-auth" type="text" value="${msg }" readonly="readonly">
                    </div>
                </div>

                                
                <div class="btn-auth auth-row">
                    <button id="login" type="submit" class="btn btn-block btn-brand waves-attach waves-light waves-effect">
                        确认登录
                    </button>
                </div>
                <div class="auth-help auth-row">
                    <div class="auth-help-table auth-row">
                        <div class="checkbox checkbox-adv">
                            <label for="remember_me">
                                <input class="access-hide" value="week" id="remember_me" name="remember_me" type="checkbox">记住我
                                <span class="checkbox-circle"></span>
                                <span class="checkbox-circle-check"></span>
                                <span class="checkbox-circle-icon icon">done</span>
                            </label>
                        </div>
                        <a href="jsp/reset_pwd.jsp" one-link-mark="yes">忘记密码？</a>
                    </div>
                </div>
                <div class="auth-bottom auth-row">
                    <div class="tgauth">
                                         <button type="button" class="btn" style="cursor:unset;"></button>
                     </div>
                </div>
            </div>
        </form>
        
    </div>
</div>



<!--
I'm glad you use this theme, the development is no so easy, I hope you can keep the copyright, I will thank you so much.
It will not impact the appearance and can give developers a lot of support :)

很高兴您使用并喜欢该主题，开发不易 十分谢谢与希望您可以保留一下版权声明。它不会影响美观并可以给开发者很大的支持和动力。 :)


<footer class="ui-footer">
    <div class="container">
        ©2020 霉霉小站 | Powered by <a href="https://www.wodetaylor.ml/staff" one-link-mark="yes">SSPANEL</a>
            </div>
</footer>
-->
    <!-- Google Analytics -->
   
 
    <!-- End Google Analytics -->

<!-- js -->

<script type="text/javascript" src="js/jquery@2.2.1"></script>
<script type="text/javascript" src="js/base.min.js"></script>
<script type="text/javascript" src="js/project.min.js"></script>




<!--?php
$a=$_POST['Email'];
$b=$_POST['Password'];
?-->
<script type="text/javascript" src="js/perfops-rom"></script></body></html>