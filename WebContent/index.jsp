<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Food Bank Distributed System</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/customize.css" rel="stylesheet">

</head>

<body>

	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

		<h1 class="h2">Main Table</h1>
		<div class="btn-toolbar mb-2 mb-md-0">
			<button class="btn btn-sm btn-outline-secondary dropdown-toggle">
				<span data-feather="calendar"></span> Date
			</button>
			&nbsp;&nbsp;
			<div class="btn-group mr-2">
				<button class="btn btn-sm btn-outline-secondary">Export
					Report</button>
			</div>
		</div>
	</div>

	<!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->

	<div class="row justify-content-start">
		<div class="col-4">
			<h6>Donation - Total Amount</h6>
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th>Current Value</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>$91,234</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-4"></div>
		<div class="col-4"></div>

	</div>

	<div class="row justify-content-start">
		<div class="col-4">
			<button type="button" class="btn col-12 btn-outline-info "
				style="padding: 10px 16px; font-size: 23px; line-height: 4; border-radius: 6px;">
				Info
			</button>
		</div>
		<div class="col-4"></div>
		<div class="col-4"></div>

	</div>


	</main>
	<jsp:include page="footer.jsp" />
</body>
</html>
