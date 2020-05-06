<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<script type="text/javascript">
    function saveJob() {
        var form = document.forms[3];
        form.action = "<%=basePath %>Jobadd";
        form.method = "post";
        form.submit();
    }
</script>
<script type="text/javascript">
    function updateJob() {
        var form = document.forms[4];
        form.action = "<%=basePath %>Jobupdate";
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
function editRec(job_id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>Jobupdate",
	        data:{"job_id":job_id},
	        success:function(data) {
	            $("#edit_job_id").val(data.job_id);
	            $("#edit_job_name").val(data.job_name);
	            $("#edit_job_type").val(data.job_type);
	            $("#edit_job_place").val(data.job_place);
	            $("#edit_job_pay").val(data.job_pay);
	            $("#edit_job_sex").val(data.job_sex);
	            $("#edit_job_birth").val(data.job_birth);
	            $("#edit_job_time").val(data.job_time);
	            $("#edit_job_education").val(data.job_education);
	            $("#edit_rec_phone").val(data.job_phone);
	            $("#edit_rec_introduce").val(data.job_introduce);	            
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
				               <button type="button" class="btn btn-primary" id="job_add"><span class="am-icon-plus"></span>添加求职信息</button>
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
                <c:forEach items="${Job}" var="j">
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
                      <button type="button" edit-id="${j.job_id}" edit-name="${j.job_name}" edit-type="${j.job_type}" edit-place="${j.job_place}" edit-pay="${j.job_pay}" edit-sex="${j.job_sex}" edit-birth="${j.job_birth}" edit-time="${j.job_time}" edit-education="${j.job_education}" edit-phone="${j.job_phone}" edit-introduce="${j.job_introduce}"class="am-btn am-btn-default am-btn-xs am-text-secondary edit_btn"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                      <button onclick="window.location.href = '<%=basePath %>Jobdelete?job_id=${j.job_id}'" type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
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

      </div>
					  <!-- Row end -->
					  
					</div>
				
				
				
				
				</div>
			

			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		</div>
		
		<div class="modal fade" id="modal_addjob" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加求职信息</h4>
            </div>
            <div class="modal-body">

<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">求职者姓名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_name" id="addjob_name" placeholder="请输入求职者姓名">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作类别</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_type" id="addjob_type" placeholder="请输入工作类别">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作地点</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_place" id="addjob_place" placeholder="请输入工作地点">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">期望薪资</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_pay" id="addjob_pay" placeholder="请输入期望薪资">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">性别</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_sex" id="addjob_sex" placeholder="请输入性别">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">出生年份</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_birth" id="addjob_birth" placeholder="请输入出身年份">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作年限</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_time" id="addjob_time" placeholder="请输入工作年限">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">最高学历</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_education" id="addjob_education" placeholder="请输入最高学历">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">手机号码</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_phone" id="addjob_phone" placeholder="请输入手机号码">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">自我介绍</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_introduce" id="addjob_introduce" placeholder="请输入自我介绍">
      <span class="help-block"></span>
    </div>
  </div>
</form>
			</div>
            <div class="modal-footer">
				<button type="button" class="btn btn-success" data-dismiss="modal" id="job_save">添加</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改 -->
<div class="modal fade" id="modal_jobupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改求职信息</h4>
            </div>
            <div class="modal-body">

<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">求职者姓名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_name" id="jobupdate_name" placeholder="请输入求职者姓名">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作类别</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_type" id="jobupdate_type" placeholder="请输入工作类别">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作地点</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_place" id="jobupdate_place" placeholder="请输入工作地点">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">期望薪资</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_pay" id="jobupdate_pay" placeholder="请输入期望薪资">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">性别</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_sex" id="jobupdate_sex" placeholder="请输入性别">
      <span class="help-block"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">出生年份</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_birth" id="jobupdate_birth" placeholder="请输入出身年份">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作年限</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_time" id="jobupdate_time" placeholder="请输入工作年限">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">最高学历</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_education" id="jobupdate_education" placeholder="请输入最高学历">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">手机号码</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_phone" id="jobupdate_phone" placeholder="请输入手机号码">
      <span class="help-block"></span>
    </div>
  </div>
   <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">自我介绍</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="job_introduce" id="jobupdate_introduce" placeholder="请输入自我介绍">
      <span class="help-block"></span>
    </div>
  </div>
</form>
			</div>
            <div class="modal-footer">
				<button type="button" class="btn btn-success" data-dismiss="modal" id="job_update">修改</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script src="js/jquery-v1.11.3.js"></script>
		<script type="text/javascript">
  $(document).ready(function(){
	$("#job_add").click(function(){
	//发送ajax请求
	  $("#modal_addjob").modal({
	   backdrop:"static"
	 });
 });
 }); 
 
    $("#job_save").click(function(){
    //1.进行校验
    if(!validate_job_add()){
    return false;
    };
    //2.ajax请求
    $.ajax({
	        type:"post",
	        url:"<%=basePath%>Jobadd",
	        data:$("#modal_addjob form").serialize(),
	        success:function(data) {      
	        alert("添加成功");      
	        }
	    });
}); 

    function validate_job_add(){
			//1、拿到要校验的数据，使用正则表达式
			//求职者姓名检验
			 var job_name = $("#addjob_name").val();
             var jname = /^[\u2E80-\u9FFF]{2,4}/;
			if(!jname.test(job_name)){
	 			//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
				show_validate_msg("#addjob_name", "error", "姓名格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_name", "success", "");
			};
			//工作类别检验
			var job_type = $("#addjob_type").val();
			var jtype = /^[\u2E80-\u9FFF]{2,10}/;
			if(!jtype.test(job_type)){
				show_validate_msg("#addjob_type", "error", "工作类别格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_type", "success", "");
			}
			//工作地点检验
			var job_place = $("#addjob_place").val();
			var jplace = /^[\u2E80-\u9FFF]{2,10}/;
			if(!jplace.test(job_place)){
				show_validate_msg("#addjob_place", "error", "工作地点格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_place", "success", "");
			}
			//期望薪资检验
			var job_pay = $("#addjob_pay").val();
			//var jpay = /^[\u2E80-\u9FFF]{2,10}/;
			if(job_pay<=1000||job_pay>=999999){
				show_validate_msg("#addjob_pay", "error", "期望薪资格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_pay", "success", "");
			}
			//性别检验
			var job_sex = $("#addjob_sex").val();
			//var rnumber = /^[1-9]|[1-9]\d|1[01]\d|12[0-8]/;
			if(job_sex=="男"||job_sex=="女"){
				show_validate_msg("#addjob_sex", "success", "");
			}else{
				show_validate_msg("#addjob_sex", "error", "请看好你的性别！");
				return false;
			}
			//出生年份检验
			var job_birth = $("#addjob_birth").val();
			var jbirth =  /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
			if(!jbirth.test(job_birth)){
				show_validate_msg("#addjob_birth", "error", "出生年份格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_birth", "success", "");
			}
			//工作年限检验
			var job_time = $("#addjob_time").val();
			//var jtime=  /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
			if(job_time<=0||job_time>=20){
				show_validate_msg("#addjob_time", "error", "工作年限格式有误！");
				return false;
			}else{
				show_validate_msg("#addjob_time", "success", "");
			}
			//最高学历检验
			var job_education = $("#addjob_education").val();
			//var jtime=  /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
			if(job_education=="本科"||job_education=="博士"){
				show_validate_msg("#addjob_education", "success", "");
			}else{
				show_validate_msg("#addjob_education", "error", "最高学历格式有误！");
				return false;
			}
			//手机号码检验
			var job_phone = $("#addjob_phone").val();
			var jphone =  /^1[3456789]\d{9}$/;
			if(!jphone.test(job_phone)){
				show_validate_msg("#addjob_phone", "error", "手机号码格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_phone", "success", "");
			}
			//自我介绍检验
			var job_introduce = $("#addjob_introduce").val();
			if(job_introduce==""){
				show_validate_msg("#addjob_introduce", "error", "自我介绍格式有误!");
				return false;
			}else{
				show_validate_msg("#addjob_introduce", "success", "");
			}
			return true;
		}
    
    //修改(on方法)
        $(document).on("click", ".edit_btn",function() {
		//查出招聘信息，显示
		//getRec($(this).attr("edit-id"));
		$("#jobupdate_name").val($(this).attr("edit-name"));
		$("#jobupdate_type").val($(this).attr("edit-type"));
		$("#jobupdate_place").val($(this).attr("edit-place"));
		$("#jobupdate_pay").val($(this).attr("edit-pay"));
		$("#jobupdate_sex").val($(this).attr("edit-sex"));
		$("#jobupdate_birth").val($(this).attr("edit-birth"));
		$("#jobupdate_time").val($(this).attr("edit-time"));
		$("#jobupdate_education").val($(this).attr("edit-education"));
		$("#jobupdate_phone").val($(this).attr("edit-phone"));
		$("#jobupdate_introduce").val($(this).attr("edit-introduce"));
		$("#job_update").attr("edit-id",$(this).attr("edit-id"));
		   //弹出模态框 
           $("#modal_jobupdate").modal({
	         backdrop:"static"
	         });
       });
        $("#job_update").click(function(){
    //1.进行校验
    if(!validate_rec_update()){
    return false;
    };
    //2.ajax请求
    $.ajax({
	        type:"post",
	        url:"<%=basePath%>Jobupdate?job_id="+$(this).attr("edit-id"),
	        data:$("#modal_jobupdate form").serialize(),
	        success:function(data) {      
	        alert("修改成功！");      
	        }
	    });
}); 
function validate_rec_update(){
			//1、拿到要校验的数据，使用正则表达式
			//1、拿到要校验的数据，使用正则表达式
			//求职者姓名检验
			 var job_name = $("#jobupdate_name").val();
             var jname = /^[\u2E80-\u9FFF]{2,4}/;
			if(!jname.test(job_name)){
	 			//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
				show_validate_msg("#jobupdate_name", "error", "姓名格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_name", "success", "");
			};
			//工作类别检验
			var job_type = $("#jobupdate_type").val();
			var jtype = /^[\u2E80-\u9FFF]{2,10}/;
			if(!jtype.test(job_type)){
				show_validate_msg("#jobupdate_type", "error", "工作类别格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_type", "success", "");
			}
			//工作地点检验
			var job_place = $("#jobupdate_place").val();
			var jplace = /^[\u2E80-\u9FFF]{2,10}/;
			if(!jplace.test(job_place)){
				show_validate_msg("#jobupdate_place", "error", "工作地点格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_place", "success", "");
			}
			//期望薪资检验
			var job_pay = $("#jobupdate_pay").val();
			//var jpay = /^[\u2E80-\u9FFF]{2,10}/;
			if(job_pay<=1000||job_pay>=999999){
				show_validate_msg("#jobupdate_pay", "error", "期望薪资格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_pay", "success", "");
			}
			//性别检验
			var job_sex = $("#jobupdate_sex").val();
			//var rnumber = /^[1-9]|[1-9]\d|1[01]\d|12[0-8]/;
			if(job_sex=="男"||job_sex=="女"){
				show_validate_msg("#jobupdate_sex", "success", "");
			}else{
				show_validate_msg("#jobupdate_sex", "error", "请看好你的性别！");
				return false;
			}
			//出生年份检验
			var job_birth = $("#jobupdate_birth").val();
			var jbirth =  /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
			if(!jbirth.test(job_birth)){
				show_validate_msg("#jobupdate_birth", "error", "出生年份格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_birth", "success", "");
			}
			//工作年限检验
			var job_time = $("#jobupdate_time").val();
			//var jtime=  /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
			if(job_time<=0||job_time>=20){
				show_validate_msg("#jobupdate_time", "error", "工作年限格式有误！");
				return false;
			}else{
				show_validate_msg("#jobupdate_time", "success", "");
			}
			//最高学历检验
			var job_education = $("#jobupdate_education").val();
			//var jtime=  /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
			if(job_education=="本科"||job_education=="博士"){
				show_validate_msg("#jobupdate_education", "success", "");
			}else{
				show_validate_msg("#jobupdate_education", "error", "最高学历格式有误！");
				return false;
			}
			//手机号码检验
			var job_phone = $("#jobupdate_phone").val();
			var jphone =  /^1[3456789]\d{9}$/;
			if(!jphone.test(job_phone)){
				show_validate_msg("#jobupdate_phone", "error", "手机号码格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_phone", "success", "");
			}
			//自我介绍检验
			var job_introduce = $("#jobupdate_introduce").val();
			if(job_introduce==""){
				show_validate_msg("#jobupdate_introduce", "error", "自我介绍格式有误!");
				return false;
			}else{
				show_validate_msg("#jobupdate_introduce", "success", "");
			}
			return true;
		}
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
