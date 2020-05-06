<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<script type="text/javascript">
    function saveRec() {
        var form = document.forms[0];
        form.action = "<%=basePath %>add";
        form.method = "post";
        form.submit();
    }
</script>
<html lang="zh-CN"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

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
<div class="panel panel-default">
  <div class="panel-heading header">
	  <div>
	  	<button type="button" class="btn btn-success" 
				data-toggle="modal" data-target="#myModal4">
			添加</button>
		<button type="button" class="btn btn-danger">删除</button>
	  </div>
	  <div>
<table class="table table-bordered table-hover" style="white-space: nowrap;word-break:break-all; word-wrap:break-all;">
  <thead>
    <tr>
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
      <c:forEach items="${findallList}" var="r">
      <tr>
      <th><input type="checkbox"></th>                                       
<th>${r.rec_id}</th>
  <th>${r.rec_name}</th>
  <th>${r.rec_number}</th>
  <th>${r.rec_sex}</th>
  <th>${r.rec_describe}</th>
  <th>${r.rec_city}</th>
  <th>${r.rec_pay}</th>
  <th><button type="button" class="btn btn-success btn-xs"
				data-toggle="modal" data-target="#myModal">
			<span class="glyphicon glyphicon-list"></span>
			修改</button>
		  <button type="button"  href="${path}/delete?rec_id=${r.rec_id}" class="btn btn-info btn-xs" 
				  data-toggle="modal" data-target="#myModal2">
			  <span class="glyphicon glyphicon-user"></span>
			  删除</button>
  </tr>                             
</c:forEach>
  </tbody>
</table>
</div>
  <div class="panel-footer">
    <ul class="pagination square">
        <li><a href="#">&laquo;</a></li>
        <li class="active"><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&raquo;</a></li>
    </ul>
  </div>
</div>
	
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Info</h4>
            </div>
            <div class="modal-body">
				Info
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">删除确认</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">确认</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">More</h4>
            </div>
            <div class="modal-body">
				More
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加招聘信息</h4>
            </div>
            <div class="modal-body">

<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">招聘职位</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="rec_name" placeholder="请输入招聘职位">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">招聘人数</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="rec_number" placeholder="请输入招聘人数">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">性别要求</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="rec_sex" placeholder="请输入性别要求">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">工作描述</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="rec_describe" placeholder="请输入工作描述">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">工作城市</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="rec_city" placeholder="请输入工作城市">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">基本薪资</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="rec_pay" placeholder="请输入基本薪资">
    </div>
  </div>
</form>

			</div>
            <div class="modal-footer">
				<button type="button" class="btn btn-success" data-dismiss="modal" onclick="saveRec()">添加</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-v1.11.3.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    
    
</body></html>