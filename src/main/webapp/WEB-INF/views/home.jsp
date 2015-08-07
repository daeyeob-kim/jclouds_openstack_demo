<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

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


				<div class="col-lg-6">10.0.1.65</div>
				<div class="col-lg-6" style="text-align: right"><a href="corp.fastcat.co:8980">Horizon
					Dashboard로 이동</a></div>
				<div>.</div>
				<div>현재 생성되어있는 Instance의 수 : ${list.size()}개</div>
				<div>.</div>
				<div class="modal fade" id="layerpop">					  
					<div class="modal-dialog">						    
						<div class="modal-content">
							<form action="launchInstance" method="GET">								      
								<div class="modal-header">									        
									<button type="button" class="close" data-dismiss="modal">×</button>									        
									<h4 class="modal-title">Add Instance</h4>
									      
								</div>
								      
								<!-- body -->
								      
								<div class="modal-body">
									<div class="input-group">
										<span class="input-group-addon" id="getRegion">Region</span>
										<input type="text" class="form-control" value="RegionOne" name="getRegion"
											placeholder="region NAME" aria-describedby="">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon" id="getInstanceName">InstanceName</span>
										<input type="text" class="form-control" name="getInstanceName"
											placeholder="instance NAME" aria-describedby="">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon" id="getImageId">ImageId</span>
										<input type="text" class="form-control" placeholder="image ID"
										value="19257f34-d638-4343-a0c7-c7e2f407ebff" name="getImageId"
											aria-describedby="">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon" id="getFlavorId">FlavorId</span>
										<input type="text" class="form-control" value="2" name="getFlavorId"
											placeholder="flavor ID" aria-describedby="">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon" id="getNetworkId">NetworkId</span>
										<input type="text" class="form-control" value="30711dfc-49b3-4d28-b4b8-942847551db2" name="getNetworkId"
											placeholder="network ID" aria-describedby="">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon" id="getSettingPw">SettingPassword</span>
										<input type="text" class="form-control" value="1234" name="getSettingPw"
											placeholder="Instance's admin password"	aria-describedby="">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon" id="getKeyPair">KeyPair</span>
										<input type="text" class="form-control" placeholder="keypair" value="ubuntu_test"
										id="getKeyPair" name="getKeyPair" aria-describedby="">
									</div>									      
								</div>
								<div class="modal-footer"><br>			        
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Back</button>									        
									<button type="submit" class="btn btn-primary"
										>Add Instance</button>									      
								</div>
							</form>							    
						</div>						  
					</div>
				</div>


				<div style="float: right">
					<button type="button" class="btn btn-primary"  data-target="#layerpop"
					data-toggle="modal">Add Instance</button>
				</div>
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
						</select> <span class="input-group-addon"> </span> <input type="text"
							class="form-control" placeholder="검색기능은 아직 미구현입니다.."> <span
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

		<c:forEach var="i" begin="0" end="${list.size()-1}" step="1">
			<div class="row marketing">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-5">
							<div>
								<b>NAME</b>
							</div>
							<div>${list.get(i).instanceName}</div>
							<div>
								<b>ID</b>
							</div>
							<div>${list.get(i).instanceId}</div>
						</div>
						<div class="col-md-4">
							<table>
								<tr>
									<td><b>Image</b></td>
									<td>${list.get(i).image}</td>
								</tr>
								<tr>
									<td><b>Flavor</b></td>
									<td>${list.get(i).flavor}</td>
								</tr>
								<tr>
									<td><b>Key Pair</b></td>
									<td>${list.get(i).keyPair}</td>
								</tr>
								<tr>
									<td><b>Status</b></td>
									<script>
									var a="SHUTOFF"
									if(a=="${list.get(i).status}"){
										document.write("<td><font color=red>${list.get(i).status}</font></td>");
									}else{
										document.write("<td><font color=green>${list.get(i).status}</font></td>");
									}
									</script>
								</tr>
							</table>
						</div>
						<div class="col-md-3">
							<table>
								<tr>
									<td><b>Floating IP</b></td>
									<td>${list.get(i).floatingIp}</td>
								</tr>
								<tr>
									<td><b>Fixed IP</b></td>
									<td>${list.get(i).fixedIp}</td>
								</tr>
							</table>
							<div style="float: right; margin-top: 5px">
								<div class="btn-group" role="group">
									<div class="btn-group" role="group">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown" aria-expanded="false">
											Action <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="addFloatingIp?id=${list.get(i).instanceId}">Add
													Floating IP</a></li>
											<li><a
												href="removeFloatingIp?id=${list.get(i).instanceId}">Remove
													Floating IP</a></li>

											<li><a href="startInstance?id=${list.get(i).instanceId}">Instance
													Start</a></li>
											<li><a href="stopInstance?id=${list.get(i).instanceId}">Instance
													Stop</a></li>
											<li><a
												href="terminateInstance?id=${list.get(i).instanceId}"><font
													color=red>Instance Terminate</font></a></li>
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
