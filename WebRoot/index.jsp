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
                            <li><a href="toUI" id="myUI" >个人中心</a></li>
                            <li><a href="showNews" id="news">我的消息</a></li>
                            <li><button type="button" id="bangzhu" class="btn btn-default navbar-btn">未登录</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
		</header>
		
		
        
        <!-- home -->
        <section class="home">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="intro">
                            <div class="text-center"> </div>
                            <strong class="welcome">欢迎来到</strong>
                            <h3>基于WEB的招聘与求职系统</h3>
                            <!--span>Be part of a revolution</span-->
                            <ul class="list-inline">
                                <li><a class="btn btn-primary" href="toLogin" role="button" id="buttonLogin">立即登录</a> </li>
                                <li><a class="btn btn-default" href="#" role="button">浏览大厅</a> </li>
                            </ul>
                        </div>  
                    </div>
                </div>
            </div>
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
                            <div class="single-slide"><img src="images/clients/dlink-logo.png" alt=""></div>
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
			var islogin="${isLogin}";
			//console.log("${isLogin}");
			//console.log(islogin);
			if(islogin=="true")
				$("#bangzhu").text("欢迎您,"+"${nowUser}");
			else
				$("#bangzhu").text("未登录");
			
			$("#bangzhu").click(function(){
				if(islogin=="true"){
					if(window.confirm("您已登录，是否确定注销")){
		                 //alert("确定");
		                 //alert("注销成功");
		                 window.location.href= "logout";
		              }else{
		                 //alert("取消");
		                 return false;
		             }
				}else{
					alert("您还未登录，请先登录");
					window.location.href= "toLogin";
				}
					
					
			});
			
			//登录按钮点击事件
			$("#buttonLogin").click(function(){
				if(islogin=="true"){
					alert("您已登录,无需重复登录");
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
			
			//注销登录时
			var loginOut="${loginOut}";
			if(loginOut=="true")    //注销成功时
 				alert("注销成功");
			
		});
		</script>
    </body>
</html>    