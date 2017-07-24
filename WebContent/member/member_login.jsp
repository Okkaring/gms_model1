<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGIN</title>
<link rel="stylesheet" href="../css/member.css" />
</head>

<body>
<div id="wrapper">
	<!-- TITLE -->
	<h1 id="title">
	<a href="../index.jsp">
	ADMIN LOGIN</a></h1>
	<hr id="title_line"><br /><br />
	
	<!-- CONTENT -->
	<div id="container">
		<img src="../img/mainimg.jpg"/><br /><br />
			<span id="login_id">ID</span><input type="text" placeholder="※ID는 숫자 포함 8자 이내"/><br>
			<span id="login_pass">Password</span><input type="password"/><br />
		<br />
		<button id="login_btn"  onclick="window.location.href='member_detail.html'">LOGIN</button>
		<button id="cancle_btn" onclick="window.location.href='../index.html'">MAIN</button>
	</div>	
</div>
</body>
</html>