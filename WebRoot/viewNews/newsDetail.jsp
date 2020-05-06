<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>基于WEB的招聘与求职系统</title>
		<link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets2/css/amazeui.css" />
		<link rel="stylesheet" href="assets2/css/core.css" />
		<link rel="stylesheet" href="assets2/css/menu.css" />
		<link rel="stylesheet" href="assets2/css/index.css" />
		<link rel="stylesheet" href="assets2/css/admin.css" />
		<link rel="stylesheet" href="assets2/css/page/typography.css" />
		<link rel="stylesheet" href="assets2/css/page/form.css" />
		<link rel="stylesheet" href="assets2/css/component.css" />
	</head>
		<body>
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">		
			<div class="am-topbar-left am-hide-sm-only">
                <a href="toIndex" class="logo"><span id="tetx1">用户<span>中心</span></span><i class="zmdi zmdi-layers"></i></a>
            </div>
	
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">欢迎进入招聘求职系统！</h4></li>
				</ul>
				

			</div>
		</header>
		<!-- end page -->
		
		
		<div class="admin">
			<!--<div class="am-g">-->
		<!-- ========== Left Sidebar Start ========== -->
		<!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
				<div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
                  <!-- sidebar start -->
				  <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
				    <div class="am-offcanvas-bar admin-offcanvas-bar">
				    	<!-- User -->
						<div class="user-box am-hide-sm-only">
	                        <div class="user-img">
	                            <img src="assets2/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
	                            <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
	                        </div>
	                        <h5><a href="#">${nowUser}</a> </h5>
	                        <ul class="list-inline">
	                            <li>
	                                <a href="#">
	                                    <i class="am-icon-cog" aria-hidden="true"></i>
	                                </a>
	                            </li>
	
	                            <li>
	                                <a href="#" class="text-custom">
	                                    <i class="am-icon-cog" aria-hidden="true"></i>
	                                </a>
	                            </li>
	                        </ul>
	                    </div>
	                    <!-- End User -->
	            
						 <ul class="am-list admin-sidebar-list">
						    <li><a href="toIndex"><span class="am-icon-home"></span> 首页</a></li>
						    <li class="admin-parent" id="li1">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 信息查看 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
						      	
						        <li id="recruiter1"><a href="findall" class="am-cf" > 招聘信息</span></a></li>
						        <li id="seeker1"><a href="findall" class="am-cf"> 求职信息</span></a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 信息管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						      	 <li id="recruiter2"><a href="torecruit" class="am-cf">招聘管理</span></a></li>
						        <li id="seeker2"><a href="torecruit" class="am-cf"> 求职管理</span></a></li>
						        <li><a href="toEvaluate?action=1" class="am-cf" id="pingjia"> 评价管理</span></a></li>
						        <li><a href="showNews" class="am-cf"> 消息管理</span></a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 个人中心 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
						        <li><a href="showUser" class="am-cf"> 个人信息</a></li>
						        <li><a href="">设置</a></li>   
						      </ul>
						    </li>
						  </ul>
				</div>
				  </div>
				  <!-- sidebar end -->
    
				<!--</div>
			</div>
		</div>-->
		<!-- ========== Left Sidebar end ========== -->
		
		
		
	<!--	<div class="am-g">-->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!--  style="background:url('images/clients/timg6.jpg');background-size:100%;height:600px;" -->
 <main class="app-content" style="width: 80%;height: 70%;  margin:10px ;overflow-y:scroll;">
      <div class="app-title" >
        <div >
          <h1><i class="fa fa-envelope-o"></i> 消息管理</h1>
          <p>简单的收发邮件管理</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="showNews">消息管理</a></li>
        </ul>
      </div>
      <div class="row" >
        <div class="col-md-3"><a class="mb-2 btn btn-primary btn-block" href="">我的信箱</a>
          <div class="tile p-0">
            <h4 class="tile-title folder-head">文件夹</h4>
            <div class="tile-body">
              <ul class="nav nav-pills flex-column mail-nav">
                <li class="nav-item active"><a class="nav-link" href="showNews"><i class="fa fa-inbox fa-fw"></i> 收件箱<span class="badge badge-pill badge-primary float-right"></span></a></li>
                <li class="nav-item"><a class="nav-link" href="showSentNews"><i class="fa fa-envelope-o fa-fw"></i> 发件箱</a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-file-text-o fa-fw"></i> 草稿箱</a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-filter fa-fw"></i>  广告箱<span class="badge badge-pill badge-primary float-right"></span></a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-trash-o fa-fw"></i> 垃圾箱</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-9"  >
          <div class="tile">
            <div class="mailbox-controls">
            </div>
            <div class="table-responsive mailbox-messages" align="left">
            		<h2 align="center">消息详情</h2>
            		<h4>发件人：${thisNews.sname}</h4>
            		<h4>收件人：${thisNews.rname}</h4>
            		<h4>发送时间：${thisNews.time}</h4>
            		<h4>消息标题：${thisNews.title}</h4>
            		<h4>消息内容：</h4>
            		 <div class="card mb-3 border-info">
                <div class="card-body">
                  <blockquote class="card-blockquote">
                    <h5>${thisNews.message}</h5>
                  </blockquote>
                </div>
              </div>
              	  <div class="mailbox-controls">
            </div>
                  <form action="replyNews" method="post" >
                  	<div class="form-group has-success">
                    <label class="form-control-label"  for="inputSuccess1" id="titleText">回复标题：</label>
                  	<input class="form-control is-valid" id="title" type="text" name="title" style="font-size:14px;">       	 
                    </div>
                    <div class="form-group has-success">
                    <label class="form-control-label" for="inputSuccess1"id="messageText" >回复内容：</label>
                  	<input class="form-control is-valid" id="message"  type="text" name="message" style="font-size:14px;" >       	 
                    </div>
                    <div align="center">
                     <button class="btn btn-primary" id="sent" type="submit">发送</button>
                    </div>
                   
                  </form>
            		
            </div>
          </div>
        </div>
      </div>
    </main>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		
		<script type="text/javascript" src="js/jquery-v1.11.3.js" ></script>
		<script type="text/javascript">
		$(document).ready(function(){
			//是否登录
			var islogin="${isLogin}";
			if(islogin!="true"){
				 alert("登录状态已失效，请重新登录");
		                window.location.href= "toLogin";
			}
		
			//根据权限隐藏不属于该用户权限的选项
			var power="${userPower}";
			if(power=="3"){
				$("#seeker1").hide();
				$("#seeker2").hide();
			}else if(power=="4"){
				$("#recruiter1").hide();
				$("#recruiter2").hide();
			}else if(power=="2"){
				$("#text1").text("客服中心");
				$("#li1").hide();
				$("#recruiter2").hide();
				$("#seeker2").hide();
				$("#pingjia").hide();
			}
				
			
			
			
 				
 	
			//提交按钮事件
			$("#sent").click(function(){
				 if ($("#title").val() == "") {
					   alert("标题不能为空!");
					   return false;
					  } else if ($("#title").val().length <3) {
					   alert("标题不能小于3个字");
					   return false;
					  } else if ($("#message").val().length <5) {
					   alert("内容不能小于5个字");
					   return false;
					  } 
			});
			
			//假如是发件方，隐藏回复控件
			var user="${nowUser}";
			var user2="${thisNews.sname}";
			if(user==user2){
				$("#title").hide();
				$("#message").hide();
				$("#sent").hide();
				$("#titleText").hide();
				$("#messageText").hide();
			}
		});
		</script>
		<script type="text/javascript" src="assets2/js/amazeui.min.js"></script>
		<script type="text/javascript" src="assets2/js/app.js" ></script>
		<script type="text/javascript" src="assets2/js/blockUI.js" ></script>
		<script type="text/javascript" src="assets2/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="assets2/js/charts/indexChart.js" ></script>
      <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
    	
    </script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>

	</body>
	
</html>
