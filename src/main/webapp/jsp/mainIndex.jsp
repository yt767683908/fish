<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>用户中心</title>
<link rel="icon" href="/fish/img/favicon.ico">
<link rel="stylesheet"
	href="/fish/webFrame/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="/fish/js/jquery-3.3.1.js"
	type="text/javascript" charset="UTF-8"></script>
<script type="text/javascript"
	src="/fish/webFrame/bootstrap/js/bootstrap.min.js" charset="UTF-8"></script>
</head>
<body>
	<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
		<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">工作台<span
			id="userRealName" style="color: white;"></span></a> <input
			class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link"
				href="/fish/api/user/quit">Sign out</a></li>
		</ul>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active" href="#">
								<span data-feather="home"></span> Dashboard <span
								class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file"></span> Orders
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span> Products
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="users"></span> Customers
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="bar-chart-2"></span> Reports
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="layers"></span> Integrations
						</a></li>
					</ul>

					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>Saved reports</span> <a
							class="d-flex align-items-center text-muted" href="#"> <span
							data-feather="plus-circle"></span>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Current month
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Last quarter
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Social engagement
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Year-end sale
						</a></li>
					</ul>
				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
				<h1 class="h2">Dashboard</h1>
				<div class="btn-toolbar mb-2 mb-md-0">
					<div class="btn-group mr-2">
						<button class="btn btn-sm btn-outline-secondary">Share</button>
						<button class="btn btn-sm btn-outline-secondary">Export</button>
					</div>
					<button class="btn btn-sm btn-outline-secondary dropdown-toggle">
						<span data-feather="calendar"></span> This week
					</button>
				</div>
			</div>

			<canvas class="my-4" id="myChart" width="900" height="380"></canvas>

			<h2>用户中心</h2>
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th>用户编号</th>
							<th>用户名</th>
							<th>真实姓名</th>
							<th>联系电话</th>
							<th>邮箱</th>
						</tr>
					</thead>
					<tbody id="userBody">
					</tbody>
				</table>
			</div>
			</main>
		</div>
	</div>
	<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
	<script>
		feather.replace()
	</script>
	<!-- Graphs -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script>
		var ctx = document.getElementById("myChart");
		var myChart = new Chart(ctx, {
			type : 'line',
			data : {
				labels : [ "Sunday", "Monday", "Tuesday", "Wednesday",
						"Thursday", "Friday", "Saturday" ],
				datasets : [ {
					data : [ 15339, 21345, 18483, 24003, 23489, 24092, 12034 ],
					lineTension : 0,
					backgroundColor : 'transparent',
					borderColor : '#007bff',
					borderWidth : 4,
					pointBackgroundColor : '#007bff'
				} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : false
						}
					} ]
				},
				legend : {
					display : false,
				}
			}
		});

		$(function() {
			var name = userRealName;
			$("#userRealName").html(name);
			$.ajax({
				url : '/fish/api/user/showPerson',
				type : 'post',
				data : {
					data1 : "哈哈",
					data2 : "嘻嘻"
				},
				async : false,
				dataType : 'json',
				success : function(data) {
					console.log(data);
					var html = "";
					for (var i = 0; i < data.length; i++) {
						html += '<tr>' + '<td>' + data[i].user_id + '</td>'
								+ '<td>' + data[i].username + '</td>' + '<td>'
								+ data[i].realname + '</td>' + '<td>'
								+ data[i].phone + '</td>' + '<td>'
								+ data[i].email + '</td>' + '</tr>';
					}
					$("#userBody").html(html);
				}
			})
		})
	</script>
</body>
</html>