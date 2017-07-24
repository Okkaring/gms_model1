

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%> 
<% String now = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss").format(new Date()); %>

<%!
	public String getSpec(HttpServletRequest request){
	String spec="";
	
	String name=request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String birth=request.getParameter("birthday");
	String age=String.valueOf(Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date())) -Integer.parseInt(birth));
	String email = request.getParameter("email");
	String major = request.getParameter("major");
	
	spec=String.format("%s/%s/%s/%s/%s/%s/%s",name,id,pw,gender,age,email,major);
	
	return spec;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>member_detail</title>
<link rel="stylesheet" href="../css/member.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div id="wrapper">

	<h1 id="title">
	<a href="../index.jsp">
	MEMBER DETAIL</a></h1>
	<hr id="title_line"><br /><br />
	<div id= "clock"> 현재 시간 : <%= now %> </div>
	
	<div id="container">
	<h1> Hello!! <%= this.getSpec(request) %> !</h1>
	
	<%String[] arr = getSpec(request).split("/"); %>
	
	<table id="index-tab">
		<tr id="index-tab-tr">
			<th>STUDENT INFORMATION</th>
			<th><i class="fa fa-heart"></i></th>
		</tr>
		<tr>
			<td>NAME</td>
			<td><%= arr[0] %></td>
		</tr>
		<tr>
			<td>ID</td>
			<td><%= arr[1] %></td>
		</tr>
		<tr>
			<td>PASSWORD</td>
			<td><%= arr[2] %></td>
		</tr>
	
		<tr>
			<td>GENDER</td>
			<td><%= arr[3] %></td>
		</tr>
		<tr>
			<td>AGE</td>
			<td><%= arr[4] %></td>
		</tr>
		<tr>
			<td>@E-MAIL</td>
			<td><%= arr[5] %></td>
		</tr>
		<tr>
			<td>MAJOR</td>
			<td><%= arr[6] %></td>
		</tr>

	</table>
	
	
	</div>
</div>
	
</body>
</html>