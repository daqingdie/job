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
                <a href="toIndex" class="logo"><span id="text1">用户<span>中心</span></span><i class="zmdi zmdi-layers"></i></a>
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
          <h1><i class="fa fa-envelope-o"></i> 评价管理</h1>
          <p>不以不善而废其善</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="">评价管理</a></li>
        </ul>
      </div>
      <div class="row user">
        
        <div class="col-md-3">
          <div class="tile p-0">
            <ul class="nav flex-column nav-tabs user-tabs">
              <li class="nav-item"><a id="a1" class="nav-link" href="toEvaluate?action=1" >全部评价</a></li>
              <li class="nav-item"><a id="a2" class="nav-link" href="toEvaluate?action=2" >待评价</a></li>
              <li class="nav-item"><a id="a3" class="nav-link" href="toEvaluate?action=3" >已评价</a></li>
               <li class="nav-item"><a id="a4" class="nav-link" href="toEvaluate?action=4" >收到的评价</a></li>
               <li class="nav-item"><a id="a5" class="nav-link" href="toEvaluate?action=5" >发出的评价</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-9">
          <div class="tab-content">
            <div class="tab-pane active" id="user-timeline">
             <c:forEach var="e" items="${evaluates}">
               <div class="timeline-post">
                <div class="post-media"><a href="#"><img src="images/a1.jpg" style="width:40px;"></a>
                  <div class="content">
                    <h5><a href="#">${e.sname}</a></h5>
                    	
                   
                    <p class="text-muted"><small><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${e.time}" type="both"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	对${e.rname}的评价</small></p>
                    
                  </div>
                </div>
                
                <c:choose>
                	<c:when test="${e.rname==nowUser&&e.status=='1'}">
                	<div class="post-content">
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;待评价</p>
                </div>
            
                	</c:when>
                	<c:when test="${e.rname==nowUser&&e.status=='2'}">
                	<div class="post-content">
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${e.message}</p>
                </div>
                <ul class="post-utility">
                  <li class="likes"><a href="#"><i class="fa fa-fw fa-lg fa-thumbs-o-up"></i>点赞</a></li>
                  <li class="shares"><a href="#"><i class="fa fa-fw fa-lg fa-share"></i>分享</a></li>
                  <li class="comments"><i class="fa fa-fw fa-lg fa-comment-o"></i>评价</li>
                </ul>
                	</c:when>
                	<c:when test="${e.sname==nowUser&&e.status=='2'}">
                	<div class="post-content">
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${e.message}</p>
                </div>
                <ul class="post-utility">
                  
                  <li class="comments"><a  href="toUpdateEvaluate?id=${e.id}">修改</a></li>
                </ul>
                	</c:when>
                	<c:when test="${e.sname==nowUser&&e.status=='1'}">
                	<div class="post-content">
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;待评价</p>
                </div>
                <ul class="post-utility">
                  
                  <li class="comments"><a  href="toUpdateEvaluate?id=${e.id}">立即评价</a></li>
                </ul>
                	</c:when>
                </c:choose>
              </div>
              </c:forEach>
            </div>
            <div class="tab-pane fade" id="user-settings">
              <div class="tile user-settings">
                <h4 class="line-head">Settings</h4>
                <form>
                  <div class="row mb-4">
                    <div class="col-md-4">
                      <label>First Name</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="col-md-4">
                      <label>Last Name</label>
                      <input class="form-control" type="text">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-8 mb-4">
                      <label>Email</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-8 mb-4">
                      <label>Mobile No</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-8 mb-4">
                      <label>Office Phone</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-8 mb-4">
                      <label>Home Phone</label>
                      <input class="form-control" type="text">
                    </div>
                  </div>
                  <div class="row mb-10">
                    <div class="col-md-12">
                      <button class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i> Save</button>
                    </div>
                  </div>
                </form>
              </div>
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
				
				$("#seeker2").hide();
			}else if(power=="4"){
				
				$("#recruiter2").hide();
			}else if(power=="2"){
				$("#text1").text("客服中心");
				$("#li1").hide();
				$("#recruiter2").hide();
				$("#seeker2").hide();
				$("#pingjia").hide();
				$("#a1").hide();
			}
		
	
			
			var isSent="${update}";
			if(isSent=="true")    //更新成功时
 				alert("更新成功");
			
		
 				
			
			//判断当前是哪个页面
			var action="${action}";
			if(action=="1")
 				$("#a1").attr("class","nav-link active");	
 			else if(action=="2")
 				$("#a2").attr("class","nav-link active");	
 			else if(action=="3")
 				$("#a3").attr("class","nav-link active");	
 			else if(action=="4")
 				$("#a4").attr("class","nav-link active");	
 			else if(action=="5")
 				$("#a5").attr("class","nav-link active");	
 		
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
