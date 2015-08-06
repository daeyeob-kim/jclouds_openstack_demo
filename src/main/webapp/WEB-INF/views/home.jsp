<%@page import="org.jclouds.openstack.nova.v2_0.domain.Server"%>
<%@page import="java.util.List"%>
<%@page import="co.fastcat.jcloud.OpenstackAPI"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<% OpenstackAPI testControl = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
List<Server> instanceList; %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Dashboard_demo</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- Custom styles for this template -->
<link href="resources/css/jcloud_demo.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="container">
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a href="#">Dashboard</a></li>
					<li role="presentation"><a href="#">Key-pair</a></li>
				</ul>
			</nav>
			<h3 class="text-muted">Dashboard_demo</h3>
		</div>

		<div class="jumbotron" style="text-align: left">
			<div>
				${list.get(1).getStatus}
				<div>현재 생성되어있는 Instance의 수 : 1개</div>
				<div>현재 생성되어있는 Instance의 수 : 1개</div>
				<div>현재 생성되어있는 Instance의 수 : 1개</div>
				<div>현재 생성되어있는 Instance의 수 : 1개</div>
				<div>현재 생성되어있는 Instance의 수 : 1개</div>
				<div style="float:right"><button type="button" class="btn btn-primary">Add Instance</button></div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="row">
				<div class="col-lg-12">
					<div class="input-group">
						<select class="form-control">
								<option value="name">Instance Name</option>
								<option value="id">Instance ID</option>
								<option value="status">Status</option>
								<option value="image">Image ID</option>
								<option value="flavor">Flavor Id</option>
						</select>
						<span class="input-group-addon"> 
						</span> <input type="text" class="form-control"
							placeholder="Input Text"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">Search</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /.col-lg-6 -->
			</div>
			<!-- /.row -->
		</div>

		<c:forEach var="i" begin="0" end="10" step="1" >
		<div class="row marketing">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-5">
						<div>
							<b>NAME</b>
						</div>
						<div>ubuntu_test</div>
						<div>
							<b>ID</b>
						</div>
						<div>0dbc69d2-5a71-4668-b7f5-71048b2ba3bb</div>
					</div>
					<div class="col-md-4">
						<table>
							<tr>
								<td><b>Image</b></td>
								<td>Ubuntu 14.04.2 LTS</td>
							</tr>
							<tr>
								<td><b>Flavor</b></td>
								<td>m1.medium</td>
							</tr>
							<tr>
								<td><b>Status</b></td>
								<td><font color=green>Active</font></td>
							</tr>
							<tr>
								<td><b>Power State</b></td>
								<td><font color=green>Running</font></td>
							</tr>
						</table>
					</div>
					<div class="col-md-3">
						<table>
							<tr>
								<td><b>Key Pair</b></td>
								<td>Ubuntu_test</td>
							</tr>
							<tr>
								<td>.</td>
								<td></td>
							</tr>
						</table>
						<div style="float: right">
							<div class="btn-group" role="group">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-expanded="false">
										Action <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Add Floating IP</a></li>
										<li><a href="#">Remove Floating IP</a></li>

										<li><a href="#">Instance Start</a></li>
										<li><a href="#">Instance Stop</a></li>
										<li><a href="#"><font color=red>Instance
													Terminate</font></a></li>
										<li><a href="#">more info...</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>

		<footer class="footer"> </footer>

	</div>
	<!-- /container -->


	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
