<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>注册</title>

<!-- 引入jquery框架 -->
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->

<style type="text/css">
input {
	width: 200px;
}
</style>

</head>
<body style="background: #AEEFE5">
	<ul class="nav nav-pills">
		<li role="presentation" class="active"><a href="#">Home</a></li>
		<li role="presentation"><a href="#">Profile</a></li>
		<li role="presentation"><a href="#">Messages</a></li>
	</ul>

	<div class="container">

		<h1 style="text-align: center;">--- 注册 ---</h1>
		<br> <br>


		<form class="form-horizontal"
			action="${pageContext.request.contextPath}/EmpServlet?cmd=register"
			method="post">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">昵称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="nickname"
						placeholder="nickname" name="nickname" onclick="nMsg()">
				</div>
				<span id="nicknameSpan" style="float: right"></span>
			</div>

			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password1"
						placeholder="Password" name="password">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password2"
						placeholder="PasswordAgain">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<select class="form-control" id="gender">
						<option>男</option>
						<option>女</option>
					</select>
				</div>

			</div>

			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">工资</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="salary"
						placeholder="Salary" name="salary">
				</div>
			</div>

			<!-- 显示请求域中的信息 -->
			<div style="color: red">${requestScope.nicknameMsg }</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">注册</button>
					&emsp;&emsp;
					<button type="reset" class="btn btn-warning">重置</button>
				</div>
			</div>

		</form>

		<blockquote class="blockquote-reverse">
			<p>爱上一个人 就不怕付出自己一生</p>
			<footer>
				S.H.E <cite title="Source Title">你曾是少年</cite>
			</footer>
		</blockquote>





	</div>
	<!-- /container -->

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>




<script type="text/javascript">
	// -------------------

	/* 当光标放入到nickname的输入框中, 则提示输入信息 */
	function nMsg() {
		// alert("点击了nickname输入框");

		// 获取对应的span标签, 
		var nSpan = document.getElementById("nicknameSpan");

		// 在span标签中显示提示内容
		nSpan.innerHTML = "<font color='blue'>请输入8到16位的昵称</font>";
	}
</script>

</html>
