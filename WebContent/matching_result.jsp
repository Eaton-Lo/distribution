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
<script src="js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">

<script>
	// Send the data using post
	var posting = $.post("/Distribution/PantryServlet", {
		action : "list_all"
	}).done(function(data) {
		//alert( "Data Loaded: " + data );
		// Put the results in tbody

	});
</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
		<h1 class="h2">&nbsp;&nbsp;&nbsp;Matching Result</h1>

		<div class="btn-toolbar mb-2 mb-md-0">

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
			<button class="btn btn-outline-secondary btn-sm dropdown-toggle"
				type="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">Sort By</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">Name</a> <a class="dropdown-item"
					href="#">Quantity</a>
			</div>
		</div>
	</div>

	<div class="table-responsive col-10">
		<table class="table table-striped table-sm">
			<thead>
				<tr>
					<th>Pantry Name</th>
					<th>Detail</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Combined Jewish Philanthropies</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>

				<tr>
					<td>St Francis House Inc. Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>The Paulist Center</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Greater Boston Food Bank</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>St Anthony Shrine/Franciscan Food Center</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Sojourner House</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Salvation Army/South End Food Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Rosie's Place Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>International Institute of Boston Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Haley House Food Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Boston Rescue Mission / Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Western Avenue Baptist Church Food Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Cambridge Senior Center Food Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Brookline Emergency Food Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Food Not Bombs of Boston</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
				<tr>
					<td>Salvation Army/Mystic Valley Pantry</td>
					<td><a href="#" data-toggle="modal"
						data-target="#exampleModal">details</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	</main>
	</div>
	</div>
	<jsp:include page="footer.jsp" />
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Matching Result Detail</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th>Receiver Number</th>
								<th>Food</th>
								<th>Quantity</th>
								<th>Unit</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1413782</td>
								<td>Banana</td>
								<td>500</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1413782</td>
								<td>Kiwi</td>
								<td>120</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1413782</td>
								<td>Pineapple</td>
								<td>200</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1413782</td>
								<td>Wheat</td>
								<td>4000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1413782</td>
								<td>Oat</td>
								<td>3000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1413782</td>
								<td>Beef</td>
								<td>1000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1413782</td>
								<td>Pork</td>
								<td>1500</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1593853</td>
								<td>Soy Sauce</td>
								<td>120</td>
								<td>counts</td>
							</tr>
							<tr>
								<td>1593853</td>
								<td>Wheat</td>
								<td>4000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1593853</td>
								<td>Oat</td>
								<td>3000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>1593853</td>
								<td>Beef</td>
								<td>1000</td>
								<td>lb</td>
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
</html>
