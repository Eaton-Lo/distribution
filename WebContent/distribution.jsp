<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>System</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="css/jquery-ui.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">

<style>
a:hover {
	text-decoration: none;
}

.collapsible {
	border: 1px solid #888;
	border-radius: 10px;
	padding: 10px;
	margin: 20px 0;
	cursor: pointer;
}

.collapsible>h3 {
	border-bottom: 1px solid #888;
	padding: 5px;
}

.collapsible>h3::before {
	color: #000;
	content: '\f35a ';
	font-family: "Font Awesome 5 Free";
}

.steps-form {
	display: table;
	width: 100%;
	position: relative;
}

.steps-form .steps-row {
	display: table-row;
}

.steps-form .steps-row:before {
	top: 14px;
	bottom: 0;
	position: absolute;
	content: " ";
	width: 100%;
	height: 1px;
	background-color: #ccc;
}

.steps-form .steps-row .steps-step {
	display: table-cell;
	text-align: center;
	position: relative;
}

.steps-form .steps-row .steps-step p {
	margin-top: 0.5rem;
}

.steps-form .steps-row .steps-step button[disabled] {
	opacity: 1 !important;
	filter: alpha(opacity = 100) !important;
}

.steps-form .steps-row .steps-step .btn-circle {
	width: 30px;
	height: 30px;
	text-align: center;
	padding: 6px 0;
	font-size: 12px;
	line-height: 1.428571429;
	border-radius: 15px;
	margin-top: 0;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
		<h1 class="h2">Distribution</h1>
		<hr />
		<button class="btn btn-outline-secondary btn-sm dropdown-toggle"
			type="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Month</button>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="#">1</a> <a class="dropdown-item"
				href="#">2</a> <a class="dropdown-item" href="#">3</a> <a
				class="dropdown-item" href="#">4</a> <a class="dropdown-item"
				href="#">5</a> <a class="dropdown-item" href="#">6</a> <a
				class="dropdown-item" href="#">7</a> <a class="dropdown-item"
				href="#">8</a> <a class="dropdown-item" href="#">9</a> <a
				class="dropdown-item" href="#">10</a> <a class="dropdown-item"
				href="#">11</a> <a class="dropdown-item" href="#">12</a>
		</div>
		<div class="form-group mx-sm-2 mb-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-outline-info" type="button">
						<i class="fas fa-search"></i>
					</button>
				</span>
			</div>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="btn-toolbar mb-2 mb-md-0">
			<button type="button" class="btn btn-outline-primary">Add</button>
			&nbsp;&nbsp;
			<button type="button" class="btn btn-outline-warning">Modify</button>
			&nbsp;&nbsp;
			<button type="button" class="btn btn-outline-danger">Delete</button>
			&nbsp;&nbsp;

			<button class="btn btn-outline-secondary btn-sm dropdown-toggle"
				type="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">Sort By</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">Id</a> <a class="dropdown-item"
					href="#">Food Type</a> <a class="dropdown-item" href="#">Food </a>
				<a class="dropdown-item" href="#">City</a> <a class="dropdown-item"
					href="#">Zip Code</a>
			</div>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Dairy Products</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Milk</td>
						<td>5232 Ounces</td>
						<td></td>
					</tr>
					<tr>
						<td>Yogurt</td>
						<td>1435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Fruits</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Kiwi</td>
						<td>5232 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Mongo</td>
						<td>2435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Grape</td>
						<td>9435 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Banana</td>
						<td>4435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Peach</td>
						<td>1435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Staple</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Wheat</td>
						<td>5232 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Oats</td>
						<td>5127 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Potato</td>
						<td>2345 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Corn</td>
						<td>3260 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Soybean</td>
						<td>3435 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Meat</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Beef</td>
						<td>7832 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Pork</td>
						<td>9039 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Lamb</td>
						<td>2435 lb</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Dessert</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Cookie</td>
						<td>5232 Ounces</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Cake</td>
						<td>1435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td>Bread</td>
						<td>7242 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Vegetables</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Carrot</td>
						<td>5232 Ounces</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td></td>
						<td>1435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="collapsible">
		<h3>&nbsp;Condiments</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>Soy Sauce</td>
						<td>3795 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
					<tr>
						<td></td>
						<td>1435 Count</td>
						<td><a href="#" data-toggle="modal"
							data-target="#exampleModal">details</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</main>
	<jsp:include page="footer.jsp" />
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th>Pantry Name</th>
								<th>Progress</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Combined Jewish Philanthropies</td>
								<td>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 25%" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</td>
								<td>Preparing</td>
							</tr>
							<tr>
								<td>Sojourner House</td>
								<td>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</td>
								<td>Delivering</td>
							</tr>
							<tr>
								<td>St Francis House Inc. Pantry</td>
								<td>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 25%" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</td>
								<td>Preparing</td>
							</tr>
							<tr>
								<td>The Paulist Center</td>
								<td>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 100%" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</td>
								<td>Completed</td>
							</tr>
							<tr>
								<td>Greater Boston Food Bank</td>
								<td>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</td>
								<td>Delivering</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
	$(function() {
		$(".collapsible").accordion({
			collapsible : true
		});
	});
	// Send the data using post
	var posting = $.post("/Distribution/PantryServlet", {
		action : "list_all"
	}).done(function(data) {
		//alert( "Data Loaded: " + data );
		// Put the results in tbody

	});
</script>
</html>
