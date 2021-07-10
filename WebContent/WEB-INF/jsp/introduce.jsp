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
    <link rel = "stylesheet" style = "text/css" href = "css/index.css">
    <link rel="shortcut icon" href="img/head.ico">
    <link rel="bookmark" href="img/head.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
   
    
	
</head>

<body>

<div id="wrapper">
    <!--首页开始-->
    <header id="header">
        <div class="logo">
            <span class="icon fa-book"></span>
        </div>
                    <div class="content">
                <div class="inner">
                   <p>本系统参考以下开源程序和站点制作。</p>
                   <p>©2020 霉霉小站 | Powered by <a href="https://www.wodetaylor.ml/staff" one-link-mark="yes">SSPANEL</a></p>
                </div>
            </div>
            <nav>
            	<form action="${pageContext.request.contextPath}/go_index.do" method="post" id="go_index" style="margin:0px;">
                <ul>
                
                    <li><a href="javascript:history.back(-1)" one-link-mark="yes">返回</a></li>
                    <li><a  one-link-mark="yes"></a></li>
                    
            			<li><a href="javascript:document:go_index.submit();" one-link-mark="yes">退出</a></li>
            		
                </ul>
                </form>
            </nav>
        
    </header>
    <!--首页结束-->
  
    
    <!-- 版权底部 -->
    <footer id="footer">
     <!--   <p class="copyright">©2020 霉霉小站</p> --> 
    </footer>
    <!-- 版权结束 -->
   
</div>
<!-- BG -->
<div id="bg" style="background-image:url('img/bg.jpg')"></div>
<!-- Scripts -->
<script type="text/javascript" src="js/nprogress.min.js"></script>
<script type="text/javascript" src="js/jquery@1.11.3"></script>
<script type="text/javascript" src="js/skel.min.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="js/main.js"></script>

<script>
    try {
        if (window.console && window.console.log) {
            console.log("%c霉霉小站", " text-shadow: 0 1px 0 #ccc,0 2px 0 #c9c9c9,0 3px 0 #bbb,0 4px 0 #b9b9b9,0 5px 0 #aaa,0 6px 1px rgba(0,0,0,.1),0 0 5px rgba(0,0,0,.1),0 1px 3px rgba(0,0,0,.3),0 3px 5px rgba(0,0,0,.2),0 5px 10px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.2),0 20px 20px rgba(0,0,0,.15);font-size:5em");
            console.log("%chttps://github.com/Anankke/SSPanel-Uim", "background: rgba(252,234,187,1);background: -moz-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%,rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -webkit-gradient(left top, right top, color-stop(0%, rgba(252,234,187,1)), color-stop(12%, rgba(175,250,77,1)), color-stop(28%, rgba(0,247,49,1)), color-stop(39%, rgba(0,210,247,1)), color-stop(51%, rgba(0,189,247,1)), color-stop(64%, rgba(133,108,217,1)), color-stop(78%, rgba(177,0,247,1)), color-stop(87%, rgba(247,0,189,1)), color-stop(100%, rgba(245,22,52,1)));background: -webkit-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -o-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -ms-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: linear-gradient(to right, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fceabb', endColorstr='#f51634', GradientType=1 );font-size:3em");
        }
    } catch (e) {
    }
</script>

<!-- 進度條 -->
<script>
    
    $(function () {
        $(window).load(function () {
            NProgress.done();
        });
        NProgress.set(0.0);
        NProgress.configure({showSpinner: false});
        NProgress.configure({minimum: 0.4});
        NProgress.configure({easing: 'ease', speed: 1200});
        NProgress.configure({trickleSpeed: 200});
        NProgress.configure({trickleRate: 0.2, trickleSpeed: 1200});
        NProgress.inc();
        $(window).ready(function () {
            NProgress.start();
        });
    });
    </script>



</body></html>