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

<script src="http://d3js.org/d3.v3.min.js"></script>
<style type="text/css">

/* On mouse hover, lighten state color */
path:hover {
	fill-opacity: .7;
}

/* Style for Custom Tooltip */
div.tooltip {
	position: absolute;
	text-align: center;
	width: 60px;
	height: 28px;
	padding: 2px;
	font: 12px sans-serif;
	background: white;
	border: 0px;
	border-radius: 8px;
	pointer-events: none;
}

/* Legend Font Style */
body {
	font: 11px sans-serif;
}

/* Legend Position Style */
.legend {
	position: absolute;
	left: 800px;
	top: 350px;
}
</style>

</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />
	<script type="text/javascript">

		
//Width and height of map
var width = 960;
var height = 500;

// D3 Projection
var projection = d3.geo.albersUsa()
				   .translate([width/2, height/2])
				   .scale([1000]);          // scale things down so see entire US
        
// Define path generator
var path = d3.geo.path()               // path generator that will convert GeoJSON to SVG paths
		  	 .projection(projection);  // tell path generator to use albersUsa projection

		
// Define linear scale for output
var color = d3.scale.linear()
			  .range(["rgb(213,222,217)","rgb(69,173,168)","rgb(84,36,55)","rgb(217,91,67)"]);

var legendText = ["Cities Lived", "States Lived", "States Visited", "Nada"];

//Create SVG element and append map to the SVG
var svg = d3.select("body")
			.append("svg")
			.attr("width", width)
			.attr("height", height);
        
// Append Div for tooltip to SVG
var div = d3.select("body")
		    .append("div")   
    		.attr("class", "tooltip")               
    		.style("opacity", 0);

// Load in my states data!
d3.csv("stateslived.csv", function(data) {
color.domain([0,1,2,3]); // setting the range of the input data

// Load GeoJSON data and merge with states data
d3.json("US-States.json", function(error, json) {

// Loop through each state data value in the .csv file
for (var i = 0; i < data.length; i++) {

	// Grab State Name
	var dataState = data[i].state;

	// Grab data value 
	var dataValue = data[i].visited;

	// Find the corresponding state inside the GeoJSON
	for (var j = 0; j < json.features.length; j++)  {
		var jsonState = json.features[j].properties.name;

		if (dataState == jsonState) {

		// Copy the data value into the JSON
		json.features[j].properties.visited = dataValue; 

		// Stop looking through the JSON
		break;
		}
	}
}
		
// Bind the data to the SVG and create one path per GeoJSON feature
svg.selectAll("path")
	.data(json.features)
	.enter()
	.append("path")
	.attr("d", path)
	.style("stroke", "#fff")
	.style("stroke-width", "1")
	.style("fill", function(d) {

	// Get data value
	var value = d.properties.visited;

	if (value) {
	//If value exists
	return color(value);
	} else {
	//If value is undefined
	return "rgb(213,222,217)";
	}
});
var legend = d3.select("body").append("svg")
	.attr("class", "legend")
	.attr("width", 140)
.attr("height", 200)
	.selectAll("g")
	.data(color.domain().slice().reverse())
	.enter()
	.append("g")
	.attr("transform", function(d, i) { return "translate(0," + i * 20 + ")"; });

legend.append("rect")
.attr("width", 18)
.attr("height", 18)
.style("fill", color);

legend.append("text")
.data(legendText)
.attr("x", 24)
.attr("y", 9)
.attr("dy", ".35em")
.text(function(d) { return d; });
});

});
</script>



	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
		<h1 class="h2">Money Donate</h1>

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

	<div class="table-responsive col-6">
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
								<th>Food</th>
								<th>Quantity</th>
								<th>Unit</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Banana</td>
								<td>500</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Kiwi</td>
								<td>120</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Pineapple</td>
								<td>200</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Wheat</td>
								<td>4000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Oat</td>
								<td>3000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Beef</td>
								<td>1000</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Pork</td>
								<td>1500</td>
								<td>lb</td>
							</tr>
							<tr>
								<td>Soy Sauce</td>
								<td>120</td>
								<td>counts</td>
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
