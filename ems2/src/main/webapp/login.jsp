<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: #AEEFE5">

	<h1 style="text-align: center;color: #E7FFFA">登录界面</h1>
	<hr width="80%">
	
	<form style="text-align: center;" action="${pageContext.request.contextPath }/EmpServlet?cmd=login" method="post">
		<label for="exampleInputName2">昵称：</label>
		<input id="nickname" name="nickname" placeholder="请输入昵称" />
		<br>
		<label for="exampleInputName2">密码：</label>
		<input type="password" id="password" name="password" placeholder="请输入密码" />
		<br>
		<br>
		<button type="submit" class="btn btn-default">登录</button>
	</form>

</body>
</html>