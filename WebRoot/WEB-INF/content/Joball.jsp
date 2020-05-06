<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<script type="text/javascript">
    function saveRec() {
        var form = document.forms[2];
        form.action = "<%=basePath %>add";
        form.method = "post";
        form.submit();
    }
</script>
<script type="text/javascript">
    function updateRec() {
        var form = document.forms[3];
        form.action = "<%=basePath %>update";
        form.method = "post";
        form.submit();
    }
</script>
<script type="text/javascript">
    function findRecbyid(rec_id) {
    $.ajax({
	        type:"get",
	        url:"<%=basePath%>findupdate",
	        data:{"rec_id":rec_id},
	        success:function(data) {
	            $("#edit_rec_id").val(data.rec_id);
	            $("#edit_rec_name").val(data.rec_name);
	            $("#edit_rec_number").val(data.rec_number);
	            $("#edit_rec_sex").val(data.rec_sex);
	            $("#edit_rec_describe").val(data.rec_describe);
	            $("#edit_rec_city").val(data.rec_city);
	            $("#edit_rec_pay").val(data.rec_pay);	            
	        }
	    });
	}
</script>
<script type="text/javascript">
function editRec(rec_id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>update",
	        data:{"rec_id":rec_id},
	        success:function(data) {
	            $("#edit_rec_id").val(data.rec_id);
	            $("#edit_rec_name").val(data.rec_name);
	            $("#edit_rec_number").val(data.rec_number);
	            $("#edit_rec_sex").val(data.rec_sex);
	            $("#edit_rec_describe").val(data.rec_describe);
	            $("#edit_rec_city").val(data.rec_city);
	            $("#edit_rec_pay").val(data.rec_pay);	            
	        }
	    });
	}
</script>
<html lang="zh-CN"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
		<title>求职招聘模板</title>
		<link rel="stylesheet" href="<%=basePath%>assets/css/amazeui.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/core.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/menu.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/index.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/admin.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/page/typography.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/page/form.css" />
    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>
		<body>
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">		
			<div class="am-topbar-left am-hide-sm-only">
                <a href="tomain" class="logo"><span>招聘求职<span>系统</span></span><i class="zmdi zmdi-layers"></i></a>
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
                            <a href=""><img src="<%=basePath%>assets/img/search.png"></a>
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
	                            <img src="<%=basePath%>assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
	                            <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
	                        </div>
	                        <h5><a href="#">流云</a> </h5>
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
						    <li><a href="tomain"><span class="am-icon-home"></span> 首页</a></li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 信息查看 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
						        <li><a href="findall" class="am-cf"> 招聘信息</span></a></li>
						        <li><a href="findalljob">求职信息</a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 信息管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						        <li><a href="torecruit" class="am-cf"> 招聘管理</span></a></li>
						        <li><a href="tojob" class="am-cf"> 求职管理</span></a></li>
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
				  <div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="card-box">
					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12 am-u-md-6">
				          <div class="am-btn-toolbar">
				            <div class="am-btn-group am-btn-group-xs">
				              <button type="button" class="am-btn am-btn-default"
				data-toggle="modal" data-target="#myModal4"><span class="am-icon-plus"></span>添加</button>
				              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
				              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
				              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
				            </div>
				          </div>
				        </div>	
				        
						<div class="am-u-sm-12 am-u-md-3">
				          <div class="am-input-group am-input-group-sm">
				          <form action="jobfind" method="post">
				            <input type="text" class="am-form-field" name="job_id" style="height:30px">
				          <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default am-btn-xs am-text-secondary" type="submit" style="position:absolute;height:30px">搜索</button>
				          </span>
				          </form>
				          </div>
				        </div>
				      </div>
					  <!-- Row end -->
					  
					  <!-- Row start -->
					  	<div class="am-g">
        <div class="am-u-sm-12">
          <form class="am-form">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr class="am-primary">
                <th><input type="checkbox"></th>
<th>求职编号</th>
  <th>求职者姓名</th>
  <th>工作类别</th>
  <th>工作地点</th>
  <th>期望薪资</th>
  <th>性别</th>
  <th>出生年份</th>
  <th>工作年限</th>
  <th>最高学历</th>
  <th>手机号码</th>
  <th>自我介绍</th>
  <th>操作</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <c:forEach items="${job}" var="j">
      <tr>
      <th><input type="checkbox"></th>                                       
<th>${j.job_id}</th>
  <th>${j.job_name}</th>
  <th>${j.job_type}</th>
  <th>${j.job_place}</th>
  <th>${j.job_pay}</th>
  <th>${j.job_sex}</th>
  <th>${j.job_birth}</th>
  <th>${j.job_time}</th>
  <th>${j.job_education}</th>
  <th>${j.job_phone}</th>
  <th>${j.job_introduce}</th>
  <th>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button onclick="editRec('${j.job_id}')" type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary" data-toggle="modal" data-target="#myModal5"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    </div>
                  </div>
                </th>
              </tr>
              </c:forEach>
              </tbody>
            </table>
            <div class="am-cf">
              <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第 
            ${page.pageNow} 页</font>
              <div class="am-fr">
                <ul class="am-pagination">
                  <!-- <li class="am-disabled"><a href="?pageNow=${page.pageNow-1}">«</a></li> -->
                  <li class="am-active"><a href="?pageNow=${page.pageNow-1}">«</a></li>
                  <li><a href="?pageNow=1">1</a></li>
                  <li><a href="?pageNow=2">2</a></li>
                  <li><a href="?pageNow=3">3</a></li>
                  <li><a href="?pageNow=4">4</a></li>
                  <li><a href="?pageNow=5">5</a></li>
                  <li class="am-active"><a href="?pageNow=${page.pageNow+1}">»</a></li>
                </ul>
              </div>
            </div>
            <hr />
            <p>注：.....</p>
          </form>
        </div>
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script src="js/jquery-v1.11.3.js"></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/app.js" ></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/blockUI.js" ></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/charts/indexChart.js" ></script>
		   
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	</body>
	
</html>