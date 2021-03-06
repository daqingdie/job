<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>基于WEB的招聘与求职系统</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        

        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200i,300,300i,400,600,700,700i,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700&amp;subset=latin-ext" rel="stylesheet">

    </head>

    <body >
    
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
                            <li class="active"><a href="toIndex">返回首页</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
		</header>
		

        <!-- Top content -->
        <div class="top-content" >
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <div class="description">
                            	<p>
	                            	利用互联网+的思想，打破传统招聘求职的局限性，利用网络的时效性和全球性，
	                            	使招聘和求职变得更加规范，方便，快捷，有效。让招聘者更快地找到对应的人才，
	                            	求职者更快找到心仪的工作。
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>欢迎注册成为会员</h3>
                            		<p>输入您的用户名，密码，手机号和选择用户类型</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="register" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="username">Username</label>
			                        	<input type="text" name="username" id="username" value="${user.username}" placeholder="请输入用户名" class="form-username form-control" id="username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="password">Password</label>
			                        	<input type="password" name="password" id="password" placeholder="请输入密码" class="form-password form-control" id="password">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="password2">Password2</label>
			                        	<input type="password" name="password2" id="password2" placeholder="请再次输入密码" class="form-password form-control" id="password2">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="phone">Phone</label>
			                        	<input type="text" name="phone" placeholder="请输入手机号" id="phone" class="form-username form-control" id="phone">
			                        </div>
			                        <div class="form-group" >
			                    		  <strong>&nbsp;&nbsp;&nbsp;用户类型：&nbsp;</strong>
										 
										    <input type="radio" name="power" id="optionsRadios1" value="3" checked>
										 	   招聘者&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
										  
										 
										    <input type="radio" name="power" id="optionsRadios2" value="4">
										    	&nbsp;求职者
										  
										
			                        </div>
			                        <button type="submit" class="btn" id="submit">注册</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>或者通过第三方登录:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
       


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript">
		$(document).ready(function(){
			
			if("${register}".valueOf("false"))
 			alert("注册失败，该用户名已存在");
 			
		 	var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式 
		 	var pattern2 = /^(?:\d+|[a-zA-Z]+|[!@#$%^&*]+)$/; //验证密码合法性
			$("#submit").click(function(){
					  if ($("#username").val() == "") {
					   alert("用户名不能为空!");
					   return false;
					  } else if ($("#username").val().length <3) {
					   alert("用户名不能小于3位!");
					   return false;
					  } else if ($("#password").val() == "") {
					   alert("密码不能为空!");
					   return false;
					  } else if ($("#password").val().length <5) {
					   alert("密码不能小于5位!");
					   return false;
					  }else if (!pattern2.test($("#password").val())) {
					   alert("密码含有非法字符");
					   return false;
					  }else if ($("#password").val()!=$("#password2").val()) {
					   alert("两次密码输入不一致");
					   return false;
					  }else if (!pattern.test($("#phone").val())) {
					   alert("手机号码格式错误");
					   return false;
					  }
					 return true;
	
			});
		});
		</script>
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>