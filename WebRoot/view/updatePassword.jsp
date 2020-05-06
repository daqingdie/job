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
                <a href="toIndex" class="logo"><span>用户<span>中心</span></span><i class="zmdi zmdi-layers"></i></a>
            </div>
	
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">欢迎进入招聘求职系统！</h4></li>
				</ul>
				
				<ul class="am-nav am-navbar-nav am-navbar-right">
					<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
					<li class="hidden-xs am-hide-sm-only">
                        <form role="search" class="app-search">
                            <input type="text" placeholder="Search..." class="form-control">
                            <a href=""><img src="assets2/img/search.png"></a>
                        </form>
                    </li>
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
						    <li class="admin-parent">
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
						        <li><a href="toEvaluate?action=1" class="am-cf"> 评价管理</span></a></li>
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
		<div class="content-page" >
			<!-- Start content -->
			<div class="content">
				<div class="am-g">
						<div class="am-u-md-6" style="width: 90%;height: 100%;  margin:50px ;" >
						<!-- 折线图堆叠 -->
						<div class="card-box" >
							<div  id="pie1" style="width: 100%;height: 80%; " ><br>
									<h1 class="logo" align="center">修改密码</h1><br>
									<form action="updateUserPassword?id=${id}" method="post" name="user" id="ListForm">
								<div class="form-group" style="text-align:center;">
                                    <label >旧密码：</label>
                                    <input type="password"  id="oldPassword" class="form-control" style="width: 300px; margin:0 auto;">
                                </div><br><br>
                                <div class="form-group" style="text-align:center;">
                                    <label >新密码：</label>
                                    <input type="password" name="password" id="newPassword" class="form-control" style="width: 300px; margin:0 auto;" >
                                </div><br><br>
                                 <div class="form-group" style="text-align:center;">
                                    <label >
                                    	重复新密码：</label>
                                    <input type="password" id="newPassword2"  class="form-control"  style="width: 300px; margin:0 auto;" >
                                </div><br>
                            <div class="col-md-8 col-md-offset-2">
                                <div class="form-group text-center">
                                    <button type="submit" id="submit" class="btn btn-primary">确认修改</button>
                                </div>
                            </div>
                </form>							
							</div>
								
						</div>
						</div>
				</div>
				
			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="assets2/js/jquery-2.1.0.js" ></script>
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
			}
			
			//修改信息按钮事件
			$("#updateUser").click(function(){
				window.location.href= "toUpdateUser";
			});
			
			//修改密码按钮事件
			$("#updatePassword").click(function(){
				window.location.href= "logout";
			});
			
			var update="${update}";
			if(update=="false")    //更新失败时
 				alert("更新失败，该用户名已存在");
 			
 			var password="${oldPassword}"; //用户密码	
 			var pattern = /^(?:\d+|[a-zA-Z]+|[!@#$%^&*]+)$/; //验证密码合法性
			$("#submit").click(function(){
						//alert("测试");
					  if ($("#oldPassword").val() != password) {
					   alert("旧密码验证失败，请检查密码是否输入正确");
					   return false;
					  }else if ($("#newPassword").val()=="") {
					   alert("新密码不能为空!");
					   return false;
					  }else if ($("#newPassword").val().length <5) {
					   alert("新密码不能小于5位!");
					   return false;
					  }else if (!pattern.test($("#newPassword").val())) {
					   alert("新密码含有非法字符");
					   return false;
					  }else if ($("#newPassword").val()!=$("#newPassword2").val()) {
					   alert("两次新密码输入不一致");
					   return false;
					  }
					 return true;
	
			});
			
			
		});
		</script>
		<script type="text/javascript" src="assets2/js/amazeui.min.js"></script>
		<script type="text/javascript" src="assets2/js/app.js" ></script>
		<script type="text/javascript" src="assets2/js/blockUI.js" ></script>
		<script type="text/javascript" src="assets2/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="assets2/js/charts/indexChart.js" ></script>
		

	</body>
	
</html>
