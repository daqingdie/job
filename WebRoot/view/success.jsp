<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hello 
	<a href="toUpdateUser">准备更新数据</a>
	<a href="updateUser">更新数据</a><br>
	${nowUser}<br>
	${oldUser.id}<br>
	${oldUser.username}<br>
	${oldUser.password}<br>
	${oldUser.phone}<br>
</body>
 <script src="js/jquery-v1.11.3.js"></script>
 <script type="text/javascript">
 	$(document).ready(function(){
 	if("${register}".valueOf("true"))
 		alert("注册成功");
 });
 </script>
 
</html>