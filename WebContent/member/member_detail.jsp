

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%> 
<% String now = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss").format(new Date()); %>

<%!
	public String getSpec(HttpServletRequest request){
	String spec="";
	String name=request.getParameter("name");
	String gender="남";
	String birth=request.getParameter("birthday");
	String age=String.valueOf(Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date())) -Integer.parseInt(birth));
	spec=String.format("%s(%s) %s 세", name,gender,age);
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
	
	<table id="index-tab">
		<tr id="index-tab-tr">
			<th>STUDENT INFORMATION</th>
			<th><i class="fa fa-heart"></i></th>
		</tr>
		<tr>
			<td>NAME</td>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>ID!!</td>
			<td><%= request.getParameter("id") %></td>
		</tr>
		<tr>
			<td>PASSWORD</td>
			<td><%= request.getParameter("pw") %></td>
		</tr>
		<tr>
			<td>BIRTHDATE</td>
			<td><%= request.getParameter("birthday") %></td>
		</tr>
		<tr>
			<td>GENDER</td>
			<td><%= request.getParameter("gender") %></td>
		</tr>
		<tr>
			<td>@E-MAIL</td>
			<td><%= request.getParameter("email") %></td>
		</tr>
		<tr>
			<td>MAJOR</td>
			<td><%= request.getParameter("major") %></td>
		</tr>
		<tr>
			<td>SUBJECT</td>
			<td><%= request.getParameter("subject") %></td>
		</tr>
	</table>
	
	
	</div>
</div>
	
</body>
</html>