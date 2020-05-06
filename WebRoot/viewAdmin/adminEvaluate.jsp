<%@page import="com.lq.po.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
  
    <title>基于WEB的管理员与交易系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="toIndex">管理员中心</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <li class="app-search">
          <input class="app-search__input" type="search" placeholder="Search">
          <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>

        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
 <li><a class="dropdown-item" href="logout" onclick="return login_out()"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="images/a1.jpg" width="60px" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">${nowUser}</p>
          <p class="app-sidebar__user-designation"></p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="toIndex"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">首页</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">用户管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="toAdminUser?power=3"><i class="icon fa fa-circle-o"></i> 招聘者管理</a></li>
            <li><a class="treeview-item" href="toAdminUser?power=4"><i class="icon fa fa-circle-o"></i> 求职者管理</a></li>
            <li><a class="treeview-item" href="toAdminUser?power=2"><i class="icon fa fa-circle-o"></i> 客服管理</a></li>

          </ul>
        </li>
        <li><a class="app-menu__item" href="adminRecruiter"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">招聘信息管理</span></a></li>
        <li><a class="app-menu__item" href="adminSeeker"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">求职信息管理</span></a></li>
        <li><a class="app-menu__item" href="adminEvaluate"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">评价管理</span></a></li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> 招聘信息管理</h1>
          <p>招聘信息列表</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item active"><a href="#">招聘信息管理</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
           
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th width="30px">编号</th>
                    <th width="75px" id="text1">评价用户</th>
                    <th width="75px" id="text2">被评价用户</th>
                    <th id="text3">评价内容</th>
                    <th width="120px">评价时间</th>
                    <th>操作</th>
                  </tr>
                </thead>
                 
                <tbody>
                 <c:forEach var="evaluate" items="${evaluates}">
				<tr>
				   		<td >${evaluate.id}</td>
				   		<td>${evaluate.sname}</td>
				   		<td >${evaluate.rname}</td>
				   		<td >${evaluate.message}</td>
				   		<td ><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${evaluate.time}" type="both"/></td>
				 
				   		
				   			
				   		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   			<a href="adminDeleteEvaluate?id=${evaluate.id}" onclick="return del()"><button class="btn btn-info" type="button">删除</button></a></td>
				   	</tr>
				</c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </main>
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
     
		$(document).ready(function(){
			//是否登录
			var islogin="${isLogin}";
			if(islogin!="true"){
				 alert("登录状态已失效，请重新登录");
		                window.location.href= "toLogin";
			}
			
			
			
		
			
 			
 			//删除评价时
			var del="${delete}";
			if(del=="true")    //删除成功时
 				alert("删除成功，点击确定返回");
 		
			
		});
       </script>
       <script>
function del(){
var i=window.confirm("您确认删除吗");
return i;
}
</script>	
 <script>
	function login_out(){
		var i=window.confirm("注销后需重新登录，您确认注销吗");
		return i;
	}
</script>			
  </body>
</html>