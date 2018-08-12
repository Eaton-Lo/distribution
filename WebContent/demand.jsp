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
<link href="css/jquery-ui.css" rel="stylesheet">

</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
		<h1 class="h2">Demand</h1>
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
		<input type="text"/>
		</div>
		<button class="btn btn-outline-info btn-sm"
				type="button" >Search</button>
		<div class="btn-toolbar mb-2 mb-md-0">
			<button type="button" class="btn btn-outline-primary">Add
			 </button>
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
		<h3>Dairy Products</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					
				</thead>
				<tbody>
					<tr>
						<td>Milk</td>
						<td>5232 Ounces</td>
						<td>details</td>
					</tr>
					<tr>
						<td>Yogurt</td>
						<td>1435 Count</td>
						<td>details</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3>Fruits</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Address</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Combined Jewish Philanthropies</td>
						<td>126 High Street</td>
						<td>Boston</td>
						<td>MA</td>
						<td>02110</td>
						<td>617-654-1225</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3>Staple Foods</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Address</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Combined Jewish Philanthropies</td>
						<td>126 High Street</td>
						<td>Boston</td>
						<td>MA</td>
						<td>02110</td>
						<td>617-654-1225</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3>Meat</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Address</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Combined Jewish Philanthropies</td>
						<td>126 High Street</td>
						<td>Boston</td>
						<td>MA</td>
						<td>02110</td>
						<td>617-654-1225</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3>Dessert</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Address</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Combined Jewish Philanthropies</td>
						<td>126 High Street</td>
						<td>Boston</td>
						<td>MA</td>
						<td>02110</td>
						<td>617-654-1225</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3>Vegetables</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Address</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Combined Jewish Philanthropies</td>
						<td>126 High Street</td>
						<td>Boston</td>
						<td>MA</td>
						<td>02110</td>
						<td>617-654-1225</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3>Condiments</h3>
		<div>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Address</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Combined Jewish Philanthropies</td>
						<td>126 High Street</td>
						<td>Boston</td>
						<td>MA</td>
						<td>02110</td>
						<td>617-654-1225</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</main>
	<jsp:include page="footer.jsp" />
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
