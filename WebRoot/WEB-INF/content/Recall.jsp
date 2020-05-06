<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<script type="text/javascript">
    function RecandJob() {
        var form = document.forms[3];
        form.action = "<%=basePath %>RecandJob";
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
				          <form action="find" method="post">
				            <input type="text" class="am-form-field" name="rec_id" style="height:30px">
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
   <th>职位编号</th>
  <th>招聘职位</th>
  <th>招聘人数</th>
  <th>性别要求</th>
  <th>工作描述</th>
  <th>工作城市</th>
  <th>基本薪资</th>
  <th>操作</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <c:forEach items="${Rec}" var="r">
      <tr>
      <th><input type="checkbox"></th>                                       
<th>${r.rec_id}</th>
  <th>${r.rec_name}</th>
  <th>${r.rec_number}</th>
  <th>${r.rec_sex}</th>
  <th>${r.rec_describe}</th>
  <th>${r.rec_city}</th>
  <th>${r.rec_pay}</th>
               <th>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button id="rec_apply" edit-id="${r.rec_id}" type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary  edit_btn"><span class="am-icon-pencil-square-o"></span> 申请职位</button>
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
<!-- 申请职位 -->
<div class="modal fade" id="modal_apply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">申请职位</h4>
            </div>
            <div class="modal-body">

<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">求职编号</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_id" id="apply_id" placeholder="请输入你的求职编号">
      <span class="help-block"></span>
    </div>
  </div>
</form>
			</div>
            <div class="modal-footer">
				<button type="button" class="btn btn-success" data-dismiss="modal" id="recapply_save">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
      </div>
      </div>
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script src="js/jquery-v1.11.3.js"></script>
		 <script type="text/javascript">
		 $(document).ready(function(){
		 $(document).on("click", ".edit_btn",function() {
		 $("#recapply_save").attr("edit-id",$(this).attr("edit-id"));
	  $("#modal_apply").modal({
	   backdrop:"static"
	 });
 });
 $("#recapply_save").click(function(){
    //1.进行校验
    if(!validate_rec_apply()){
    return false;
    };
    //2.ajax请求
    $.ajax({
	        type:"post",
	        url:"<%=basePath%>RecandJob?rec_id="+$(this).attr("edit-id"),
	        data:$("#modal_apply form").serialize(),
	        success:function(data) {      
	        alert("恭喜你申请成功！	");      
	        }
	    });
}); 
function validate_rec_apply(){
			//1、拿到要校验的数据，使用正则表达式
			//招聘职位检验
			 var job_id = $("#apply_id").val();
             //var rname = /^[\u2E80-\u9FFF]{2,10}/;
			if(job_id<=0||job_id>200){
				//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
				show_validate_msg("#apply_id", "error", "没有此人!");
				return false;
				}else{
				show_validate_msg("#apply_id", "success", "");
			};
			return true;
			}
		 });
		 function show_validate_msg(ele,status,msg){
			//清除当前元素的校验状态
			$(ele).parent().removeClass("has-success has-error");
			$(ele).next("span").text("");
			if("success"==status){
				$(ele).parent().addClass("has-success");
				$(ele).next("span").text(msg);
			}else if("error" == status){
				$(ele).parent().addClass("has-error");
				$(ele).next("span").text(msg);
			}
		}
		 </script>
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