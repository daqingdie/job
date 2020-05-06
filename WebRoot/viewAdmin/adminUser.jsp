<%@page import="com.lq.po.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
          <h1><i class="fa fa-th-list" id="text4"></i> </h1>
          <p  id="text5"></p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">用户管理</li>
          <li class="breadcrumb-item active"><a href="#"  id="text6"></a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
            <a href="toAddService" id="a1"><button class="btn btn-primary" type="button">添加客服</button></a>
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th>用户ID</th>
                    <th id="text1">用户名</th>
                    <th id="text2">用户密码</th>
                    <th id="text3">用户手机号</th>
                    <th>用户状态</th>
                    <th>操作</th>
                  </tr>
                </thead>
                 
                <tbody>
                 <c:forEach var="user" items="${adminUsers}">
				<tr>
				   		<td >${user.id}</td>
				   		<td>${user.username}</td>
				   		<td >${user.password}</td>
				   		<td >${user.phone}</td>
				   		<c:choose>
				   			<c:when test="${user.power=='2'}">
				   				<td  id="power">客服</td>
					   		</c:when>
					   		<c:when test="${user.power=='3'}">
				   				<td  id="power">招聘者</td>
					   		</c:when>
					   		<c:when test="${user.power=='4'}">
				   				<td  id="power">求职者</td>
					   		</c:when>
					   		<c:otherwise>
					   			<td  id="power">冻结</td>
					   		</c:otherwise>
				   		</c:choose>
				   		
				   			
				   		<td><a href="toAdminUpdateUser?id=${user.id}"><button class="btn btn-success" type="button">修改</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   			<a href="deleteUser?id=${user.id}" onclick="return del()"><button class="btn btn-info" type="button">删除</button></a></td>
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
			
			//根据权限修改显示效果
			var power="${power}";
			if(power=="2"){
				$("#text1").text("客服昵称");
				$("#text2").text("客服密码");
				$("#text3").text("客服编号");
				$("#text4").text("客服管理");
				$("#text5").text("客服列表");
				$("#text6").text("客服管理");
			}else{
				$("#a1").hide();
				if(power=="4"){
					$("#text4").text("求职者管理");
					$("#text5").text("求职者列表");
					$("#text6").text("求职者管理");
				}else if(power=="3"){
					$("#text4").text("招聘者管理");
					$("#text5").text("招聘者列表");
					$("#text6").text("招聘者管理");
				}
			
			}
			
		
			//更新用户时
			var update="${update}";
			if(update=="true")    //更新成功时
 				alert("更新成功，点击确定返回");
 				
 			
 			//删除用户时
			var del="${delete}";
			if(del=="true")    //删除成功时
 				alert("删除成功，点击确定返回");
 				
 			//添加客服时
 			if("${register}".valueOf("true"))
 			alert("添加成功");
		
			
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