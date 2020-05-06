<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>基于WEB的招聘与求职系统</title>
        
        <!-- stylesheets -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/ionicons.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200i,300,300i,400,600,700,700i,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700&amp;subset=latin-ext" rel="stylesheet">

    </head>
    <body>
        <!-- navbar -->
		<header>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="toIndex">218</a>

                    </div>
                    <div id="navbar" class="navbar-collapse collapse nav-top">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="toIndex">首页</a></li>
                            <li><a href="">招聘大厅</a></li>
                            <li><a href="">求职大厅</a></li>
                            <li><a href="" id="myUI">个人中心</a></li>
                            <li><a href="" id="news">我的消息</a></li>
                            <li><button type="button"  class="btn btn-default navbar-btn">未登录</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
		</header>
        
        <section  class="home">
        <section class="contact">
            <div class="container">
                <div class="row">
                </div>
                <form action="login" method="post" name="user" id="ListForm">
                 <strong class="welcome">登录系统</strong>
                            <!--span>Be part of a revolution</span-->
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group" style="text-align:center;">
                                    <label style="color:white">用户名</label>
                                    <input type="text" name="username" class="form-control" id="username" style="width: 300px; margin:0 auto;" placeholder="请输入您的用户名">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label style="color:white">密码</label>
                                    <input type="password" name="password" id="userpassword"  class="form-control"   style="width: 300px; margin:0 auto;" placeholder="请输入您的密码">
                                </div>
                            </div>
                            <div class="col-md-8 col-md-offset-2">
                                <div class="form-group text-center">
                                    <button type="submit" id="submit" class="btn btn-default ">登录</button>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label style="color:white">还没有账号？</label>
                                    <a href="toRegister" style="color:white">点我注册</a>
                                    </div>
                               </div>
                        </div>    
                    </div>
                </div>
                </form>
            </div>
        </section>
           </section>             
        
           <!-- CLIENTS -->   
        <section class="clients">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <div class="clients-logo">
                            <div class="single-slide"><img src="images/clients/nvidia-logo.jpg" alt=""></div>
                            <div class="single-slide"><img src="images/clients/nba.jpg" alt=""></div>
                            <div class="single-slide"><img src="images/clients/uflogo.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/y-plan-logo-small.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/ucla.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/upenn-logo.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/scsba-header-brand.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/logo_unitn.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/logoTxt.png" alt=""></div>
                            <div class="single-slide"><img src="images/clients/iop.gif" alt=""></div>
                            <div class="single-slide"><img src="images/clients/dlink-logo.png" alt="">
                        </div>
                    </div>    
                </div>    
            </div> 
            </div>           
        </section>  
        
        <!-- javascript -->
        <script src="js/jquery-v1.11.3.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.js"></script>
		<script src="js/custom.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function(){
		
			//注册跳转是
			var register="${register}";
			if(register=="true")
				alert("注册成功，已跳转到登录界面");
			
			var islogin="${isLogin}";
			if(islogin=="true")
				$("#bangzhu").text("欢迎您,"+"${nowUser}");
			else
				$("#bangzhu").text("未登录");
		
			if(islogin=="true"){
				alert("您已登录，无需重复登录");
				window.location.href= "index.jsp";
			}
			
			if("${login}".valueOf("false"))
 				alert("登录失败，请检查用户名或密码是否正确！");
			$("#submit").click(function(){
					  if ($("#username").val() == "") {
					   alert("用户名不能为空!");
					   return false;
					  } else if ($("#username").val().length <3) {
					   alert("用户名不能小于3位!");
					   return false;
					  } else if ($("#userpassword").val() == "") {
					   alert("密码不能为空!");
					   return false;
					  } else if ($("#userpassword").val().length <5) {
					   alert("密码不能小于5位!");
					   return false;
					  }
					 return true;
	
			});
			
			//个人中心点击事件
			$("#myUI").click(function(){
				if(islogin!="true"){
					alert("您还未登录，请先登录");
					return false;
				}
					
			});
			
			//我的消息点击事件
			$("#news").click(function(){
				if(islogin!="true"){
					alert("您还未登录，请先登录");
					return false;
				}					
			});
		});
		</script>
    </body>
</html>    