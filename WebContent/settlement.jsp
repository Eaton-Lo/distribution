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
						<td>08/01/2018</td>
						<td>donation</td>
						<td>3,000</td>
						<td>donor id: 1422334</td>
					</tr>
					<tr>
						<td>08/07/2018</td>
						<td>donation</td>
						<td>1,000</td>
						<td>donor id: 2524034</td>
					</tr>
					<tr>
						<td>08/10/2018</td>
						<td>donation</td>
						<td>1,500</td>
						<td>anonymous</td>
					</tr>
					<tr>
						<td>08/10/2018</td>
						<td>donation</td>
						<td>1,200</td>
						<td>donor id: 1411043</td>
					</tr>
					<tr>
						<td>08/12/2018</td>
						<td>donation</td>
						<td>500</td>
						<td>donor id: 1498824</td>
					</tr>
					<tr>
						<td>08/15/2018</td>
						<td>donation</td>
						<td>400</td>
						<td>anonymous</td>
					</tr>
					<tr>
						<td>08/19/2018</td>
						<td>donation</td>
						<td>2,500</td>
						<td>donor id: 1477034</td>
					</tr>
					<tr>
						<td>08/22/2018</td>
						<td>donation</td>
						<td>100</td>
						<td>anonymous</td>
					</tr>
					<tr>
						<td>08/25/2018</td>
						<td>donation</td>
						<td>150</td>
						<td>donor id: 1400234</td>
					</tr>
					<tr>
						<td>08/27/2018</td>
						<td>donation</td>
						<td>1,400</td>
						<td>anonymous</td>
					</tr>
					<tr>
						<td>08/30/2018</td>
						<td>donation</td>
						<td>4,000</td>
						<td>donor id: 1465334</td>
					</tr>
					<tr>
						<td>08/30/2018</td>
						<td>donation</td>
						<td>5,000</td>
						<td>donor id: 4324334</td>
					</tr>
					<tr>
						<td>08/31/2018</td>
						<td>donation</td>
						<td>2,000</td>
						<td>donor id: 3428934</td>
					</tr>

				</tbody>
			</table>
			
				<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>Income Amount</th>
						<th>$ 15,000</th>
					</tr>
				</thead>
				<tbody>
				
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
						<th>Outcome</th>
						<th>Note</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>08/28/2018</td>
						<td>food</td>
						<td>10,000</td>
						<td>Chicken</td>
					</tr>
					<tr>
						<td>08/28/2018</td>
						<td>food</td>
						<td>2,000</td>
						<td>Tomato</td>
					</tr>
					<tr>
						<td>08/29/2018</td>
						<td>food</td>
						<td>14,000</td>
						<td>Pork</td>
					</tr>
					<tr>
						<td>08/29/2018</td>
						<td>food</td>
						<td>2,000</td>
						<td>Potato</td>
					</tr>
					<tr>
						<td>08/29/2018</td>
						<td>food</td>
						<td>3,000</td>
						<td>Apple</td>
					</tr>
					<tr>
						<td>08/30/2018</td>
						<td>food</td>
						<td>1,500</td>
						<td>Kiwi</td>
					</tr>
					<tr>
						<td>08/30/2018</td>
						<td>food</td>
						<td>4,000</td>
						<td>Wheat</td>
					</tr>
					<tr>
						<td>08/30/2018</td>
						<td>food</td>
						<td>20,000</td>
						<td>Beef</td>
					</tr>
					<tr>
						<td>08/30/2018</td>
						<td>food</td>
						<td>1,200</td>
						<td>Milk</td>
					</tr>
					

				</tbody>
			</table>
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>Outcome Amount</th>
						<th>$ 14,000</th>
					</tr>
				</thead>
				<tbody>
				
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
										24092, 12034, 15464 ],
								lineTension : 0,
								backgroundColor : 'transparent',
								borderColor : '#007bff',
								borderWidth : 4,
								pointBackgroundColor : '#007bff'
							},
							{
								label : 'Outcome',
								data : [ 14339, 20450, 16483, 21003, 20489, 22092,
										11034, 14464 ],
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
