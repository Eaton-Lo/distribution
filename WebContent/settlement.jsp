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
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
		<h1 class="h2">Balance</h1>
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

	<canvas id="myChart" width="450" height="190"></canvas>

	<br />
	<br />
	<div class="row">
		<div class="col-6">
			<h5 class="text-center">Income</h5>

			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>Date</th>
						<th>Item</th>
						<th>Income</th>
						<th>Note</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1,001</td>
						<td>Lorem</td>
						<td>ipsum</td>
						<td>dolor</td>
					</tr>
					<tr>
						<td>1,002</td>
						<td>amet</td>
						<td>consectetur</td>
						<td>adipiscing</td>
					</tr>
					<tr>
						<td>1,003</td>
						<td>Integer</td>
						<td>nec</td>
						<td>odio</td>
					</tr>
					<tr>
						<td>1,003</td>
						<td>libero</td>
						<td>Sed</td>
						<td>cursus</td>
					</tr>
					<tr>
						<td>1,004</td>
						<td>dapibus</td>
						<td>diam</td>
						<td>Sed</td>
					</tr>
					<tr>
						<td>1,005</td>
						<td>Nulla</td>
						<td>quis</td>
						<td>sem</td>
					</tr>
					<tr>
						<td>1,006</td>
						<td>nibh</td>
						<td>elementum</td>
						<td>imperdiet</td>
					</tr>
					<tr>
						<td>1,007</td>
						<td>sagittis</td>
						<td>ipsum</td>
						<td>Praesent</td>
					</tr>
					<tr>
						<td>1,008</td>
						<td>Fusce</td>
						<td>nec</td>
						<td>tellus</td>
					</tr>
					<tr>
						<td>1,009</td>
						<td>augue</td>
						<td>semper</td>
						<td>porta</td>
					</tr>
					<tr>
						<td>1,010</td>
						<td>massa</td>
						<td>Vestibulum</td>
						<td>lacinia</td>
					</tr>
					<tr>
						<td>1,011</td>
						<td>eget</td>
						<td>nulla</td>
						<td>Class</td>
					</tr>
					<tr>
						<td>1,012</td>
						<td>taciti</td>
						<td>sociosqu</td>
						<td>ad</td>
					</tr>

				</tbody>
			</table>
		</div>
		<div class="col-6">
			<h5 class="text-center">Outcome</h5>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>Date</th>
						<th>Item</th>
						<th>Income</th>
						<th>Note</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1,001</td>
						<td>Lorem</td>
						<td>ipsum</td>
						<td>dolor</td>
					</tr>
					<tr>
						<td>1,002</td>
						<td>amet</td>
						<td>consectetur</td>
						<td>adipiscing</td>
					</tr>
					<tr>
						<td>1,003</td>
						<td>Integer</td>
						<td>nec</td>
						<td>odio</td>
					</tr>
					<tr>
						<td>1,003</td>
						<td>libero</td>
						<td>Sed</td>
						<td>cursus</td>
					</tr>
					<tr>
						<td>1,004</td>
						<td>dapibus</td>
						<td>diam</td>
						<td>Sed</td>
					</tr>
					<tr>
						<td>1,005</td>
						<td>Nulla</td>
						<td>quis</td>
						<td>sem</td>
					</tr>
					<tr>
						<td>1,006</td>
						<td>nibh</td>
						<td>elementum</td>
						<td>imperdiet</td>
					</tr>
					<tr>
						<td>1,007</td>
						<td>sagittis</td>
						<td>ipsum</td>
						<td>Praesent</td>
					</tr>
					<tr>
						<td>1,008</td>
						<td>Fusce</td>
						<td>nec</td>
						<td>tellus</td>
					</tr>
					<tr>
						<td>1,009</td>
						<td>augue</td>
						<td>semper</td>
						<td>porta</td>
					</tr>
					<tr>
						<td>1,010</td>
						<td>massa</td>
						<td>Vestibulum</td>
						<td>lacinia</td>
					</tr>
					<tr>
						<td>1,011</td>
						<td>eget</td>
						<td>nulla</td>
						<td>Class</td>
					</tr>
					<tr>
						<td>1,012</td>
						<td>taciti</td>
						<td>sociosqu</td>
						<td>ad</td>
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


<!-- Graphs -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script>
	var ctx = document.getElementById("myChart");
	var myChart = new Chart(ctx,
			{
				type : 'line',
				data : {
					labels : [ "Jan.", "Feb.", "Mar.", "Apr.", "May", "June",
							"July", "Aug." ],
					datasets : [
							{
								label : 'Income',
								data : [ 15339, 21345, 18483, 24003, 23489,
										24092, 12034, 14464 ],
								lineTension : 0,
								backgroundColor : 'transparent',
								borderColor : '#007bff',
								borderWidth : 4,
								pointBackgroundColor : '#007bff'
							},
							{
								label : 'Outcome',
								data : [ 5339, 1345, 8483, 4003, 3489, 4092,
										2034, 4464 ],
								lineTension : 0,
								backgroundColor : 'transparent',
								borderColor : '#000',
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
						display : true,
					}
				}
			});
</script>


</html>
