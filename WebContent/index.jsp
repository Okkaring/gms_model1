<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%> 
<% String now = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss").format(new Date()); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index</title>
<link rel="stylesheet" href="css/member.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

<div id="wrapper">
	<!-- TITLE -->
	<header>
	<h1 id="title">GMS INDEX</h1>
	<div id= "clock"> 현재 시간 : <%= now %> </div>
	<hr id="title_line">
	</header>
	<div id="container">
	<!-- MAIN MENU -->
	<table id="index-tab">
		<tr id="index-tab-tr">
			<th><i class="fa fa-heart"></i> STUDENT MGMT</th>
			<th><i class="fa fa-file"></i> GRADE MGMT</th>
			<th><i class="fa fa-bars"></i> LIST</th>
		</tr>
		
	<!-- SUB MENU -->
		<tr>
		<!-- STUDENT MGMT -->
			<td>
				<ul class="index-ul">
					<li><a href="member/member_login.jsp">ADMIN LOGIN</a></li>
					<li><a href="member/member_add.jsp">STUDENT ADD</a></li>
					<li><a href="member/member_list.jsp">STUDENT LIST</a></li>
					<li><a href="member/member_detail.jsp">STUDENT DETAIL</a></li>
					<li><a href="member/member_update.jsp">STUDENT UPDATE</a></li>
					<li><a href="member/member_delete.jsp">STUDENT DELETE</a></li>
				</ul>
			</td>
			
		<!-- GRADE MGMT -->
			<td>
				<ul class="index-ul">
					<li><a href="grade/grade_add.jsp">GRADE ADD</a></li>
					<li><a href="grade/grade_list.jsp">GRADE LIST</a></li>
					<li><a href="grade/grade_detail.jsp">GRADE DETAIL</a></li>
					<li><a href="grade/grade_update.jsp">GRADE UPDATE</a></li>
					<li><a href="grade/grade_delete.jsp">GRADE DELETE</a></li>
				</ul>
			</td>
			
		<!-- LIST -->
			<td>
				<ul class="index-ul">
					<li><a href="board/board_write.jsp">BOARD WRITE</a></li>
					<li><a href="board/board_list.jsp">BOARD LIST</a></li>
					<li><a href="board/board_detail.jsp">BOARD DETAIL</a></li>
					<li><a href="board/board_update.jsp">BOARD UPDATE</a></li>
					<li><a href="board/board_delete.jsp">BOARD DELETE</a></li>
				</ul>
			</td>
		</tr>

	</table>
</div>

<footer>
	<div>
	  <p>Posted by: LEE JUYEON</p>
	  <p>Contact information: <a href="mailto:okkaring@gmail.com">someone@example.com</a>.</p>
	  <a href="util/jdbc_test.jsp">db 연결 테스트</a>
	</div>
</footer>
</div>
</body>
</html>