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
    <main class="app-content" >
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> 招聘者管理</h1>
          <p>招聘者信息列表</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">用户管理</li>
          <li class="breadcrumb-item active"><a href="#">招聘者管理</a></li>
        </ul>
      </div>
       <div class="row"  >
        <div class="col-md-6"  style="margin:0 auto;">
          <div class="tile">
            <h3 class="tile-title">修改用户信息</h3>
            <div class="tile-body">
              <form action="adminUpdateUser?id=${oldUser.id}" method="post" name="user" >
                <div class="form-group">
                  <label class="control-label" id="text1">用户名</label>
                  <input class="form-control" name="username" value="${oldUser.username}" type="text" >
                </div>
                <div class="form-group">
                  <label class="control-label" id="text2">用户密码</label>
                  <input class="form-control" name="password" value="${oldUser.password}" type="text" >
                </div>
                <div class="form-group">
                  <label class="control-label" id="text3">手机号</label>
                  <input class="form-control" name="phone" type="text" value="${oldUser.phone}">
                </div>
                <div class="form-group">
                  <label class="control-label">权限</label>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="power" value="3">招聘者
                    </label>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="power"  value="4">求职者
                    </label>
                  </div>
                   <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="power"  value="2">客服
                    </label>
                  </div>
                </div>
                 <div class="tile-footer"  align="center">
                 <input type="submit" class="btn btn-primary" name="修改" >
             	&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="toAdminUser?power=3">取消</a>
            </div>
                 
              </form>
            </div>
           
          </div>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){
    		//是否登录
			var islogin="${isLogin}";
			if(islogin!="true"){
				 alert("登录状态已失效，请重新登录");
		                window.location.href= "toLogin";
			}
			
			var update="${update}";
 			if(update=="false")    //更新成功时
 				alert("更新失败，已存在相同用户名用户");
 			
 			//单选框默认选中值
 			var power="${oldUser.power}";
 			if(power==3)
 				$('input:radio').eq(0).attr('checked', 'true');
 			if(power==4)
 				$('input:radio').eq(1).attr('checked', 'true');
 			if(power==2)
 				$('input:radio').eq(2).attr('checked', 'true');
 				
 				
 			//根据权限修改显示效果
			var power="${oldUser.power}";
			if(power=="2"){
				$("#text1").text("客服昵称");
				$("#text2").text("客服密码");
				$("#text3").text("客服编号");
			}
		});
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
 <script>
	function login_out(){
		var i=window.confirm("注销后需重新登录，您确认注销吗");
		return i;
	}
</script>		
  </body>
</html>