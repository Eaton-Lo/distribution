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
<style>

/* stylesheet for your custom graph */
.categories {
	fill: none;
	stroke: #fff;
	stroke-linejoin: round;
}

.categories-choropleth {
	fill: #ccc;
}

#tooltip-container {
	position: absolute;
	background-color: #fff;
	color: #000;
	padding: 10px;
	border: 1px solid;
	display: none;
}

#canvas svg {
	border: 0px;
}

.tooltip_key {
	font-weight: bold;
}

.tooltip_value {
	margin-left: 20px;
	float: right;
}

.x-axis {
	fill: #000;
}

.chart {
	background: #fff;
	margin: 5px;
}

.chart .category-bar {
	stroke: white;
	fill: steelblue;
}

.chart .score {
	fill: white;
}

.chart text.name {
	fill: #000;
}

.chart line {
	stroke: #c1c1c1;
}

.chart .rule {
	fill: #000;
}

.main-category-text {
	fill: #FF4A4A;
}

.main-category-bar {
	stroke: #FF4A4A;
	stroke-width: 2px;
}
body {
font-size: 0.9rem;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sider.jsp" />


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/topojson/3.0.2/topojson.min.js"></script>

	<script>

d3.csv("population.csv", function(err, data) {

  var config = {"color1":"#c3e2ff","color2":"#08306B","mainCategory":"Washington","averageCategory":"Nation Average","stateDataColumn":"state_and_district_of_columbia","valueDataColumn":"obese_adults_number"}
  
  var WIDTH = 1000, HEIGHT = 550;

  var COLOR_COUNTS = 9;
  
  var SCALE = 1;
  
  var MAIN_CATEGORY = config.mainCategory;
  var AVG_CATEGORY = config.averageCategory;
  
  function Interpolate(start, end, steps, count) {
      var s = start,
          e = end,
          final = s + (((e - s) / steps) * count);
      return Math.floor(final);
  }
  
  function Color(_r, _g, _b) {
      var r, g, b;
      var setColors = function(_r, _g, _b) {
          r = _r;
          g = _g;
          b = _b;
      };
  
      setColors(_r, _g, _b);
      this.getColors = function() {
          var colors = {
              r: r,
              g: g,
              b: b
          };
          return colors;
      };
  }
  
  function hexToRgb(hex) {
      var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
      return result ? {
          r: parseInt(result[1], 16),
          g: parseInt(result[2], 16),
          b: parseInt(result[3], 16)
      } : null;
  }
  
  var COLOR_FIRST = config.color1, COLOR_LAST = config.color2;
  
  var rgb = hexToRgb(COLOR_FIRST);
  
  var COLOR_START = new Color(rgb.r, rgb.g, rgb.b);
  
  rgb = hexToRgb(COLOR_LAST);
  var COLOR_END = new Color(rgb.r, rgb.g, rgb.b);
  
  var MAP_CATEGORY = config.stateDataColumn;
  var MAP_VALUE = config.valueDataColumn;
  
  var width = WIDTH,
      height = HEIGHT;
  
  var valueById = d3.map();
  
  var startColors = COLOR_START.getColors(),
      endColors = COLOR_END.getColors();
  
  var colors = [];
  
  for (var i = 0; i < COLOR_COUNTS; i++) {
    var r = Interpolate(startColors.r, endColors.r, COLOR_COUNTS, i);
    var g = Interpolate(startColors.g, endColors.g, COLOR_COUNTS, i);
    var b = Interpolate(startColors.b, endColors.b, COLOR_COUNTS, i);
    colors.push(new Color(r, g, b));
  }
  
  var quantize = d3.scale.quantize()
      .domain([0, 1.0])
      .range(d3.range(COLOR_COUNTS).map(function(i) { return i }));
  
  var path = d3.geo.path();
  
  var svg = d3.select("#canvas-svg").append("svg")
      .attr("width", width)
      .attr("height", height);
  
  d3.tsv("https://s3-us-west-2.amazonaws.com/vida-public/geo/us-state-names.tsv", function(error, names) {
  
  name_id_map = {};
  id_name_map = {};
  
  for (var i = 0; i < names.length; i++) {
    name_id_map[names[i].name] = names[i].id;
    id_name_map[names[i].id] = names[i].name;
  }
  
  data.forEach(function(d) {
    var id = name_id_map[d[MAP_CATEGORY]];
    valueById.set(id, +d[MAP_VALUE]); 
  });
  
  quantize.domain([d3.min(data, function(d){ return +d[MAP_VALUE] }),
    d3.max(data, function(d){ return +d[MAP_VALUE] })]);
  
  function makeBars() {
    var names = [],
        ids = [],
        name_values = [],
        values = [],
        chart,
        width = 400,
        bar_height = 20,
        height = (bar_height + 2 * gap) * names.length;
    
    var total_categories = 0, categories_count = 0;
    Object.keys(name_id_map).forEach(function(n) {
      if (valueById.get(+name_id_map[n])) {
        ids.push(+name_id_map[n]);
        values.push(valueById.get(+name_id_map[n]));
        name_values.push({name: n, value: valueById.get(+name_id_map[n])});
        total_categories += valueById.get(+name_id_map[n]);
        categories_count++;
      }
    });
    
    values.push(Math.round(total_categories / categories_count));
    name_values.push({name: AVG_CATEGORY, value: Math.round(total_categories / categories_count)});
    
    values = values.sort(function(a, b) {
      return -(a - b);
    });
    
    name_values = name_values.sort(function(a, b) {
      return -(a.value - b.value);
    });
    
    name_values.forEach(function(d) {
      names.push(d.name);
    });
  
    var left_width = 150;
    
    var x = d3.scale.linear()
       .domain([0, d3.max(values)])
       .range([0, width]);
    
    var xAxis = d3.svg.axis()
      .scale(x)
      .orient("top");
   
    var gap = 3;
    // redefine y for adjusting the gap
    var y = d3.scale.ordinal()
      .domain(names)
      .rangeBands([0, (bar_height + 2 * gap) * names.length]);
  
    chart = d3.select("#canvas-svg")
      .append('svg')
      .attr('class', 'chart')
      .attr('width', left_width + width + 100)
      .attr('height', (bar_height + gap * 2) * names.length + 30)
      .append("g")
      .attr("transform", "translate(10, 20)");
  
    chart.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(" + left_width + ", 0)")
      .call(xAxis)
    
  
    chart.selectAll(".tick").append("line")
      .attr("x1", 0)
      .attr("x2", 0)
      .attr("y1", 0)
      .attr("y2", (bar_height + gap * 2) * names.length);
  
    chart.selectAll("rect")
      .data(name_values)
      .enter().append("rect")
      .attr("x", left_width)
      .attr("y", function(d) { return y(d.name) + gap; })
      .attr("name", function(d, i) {
        return d.name;
      })
      .attr("width", function(d, i) {
        return x(d.value);
      })
      .attr("height", bar_height)
      .style("fill", function(d) {
        var i = quantize(d.value);
        var color = colors[i].getColors();
        return "rgb(" + color.r + "," + color.g +
            "," + color.b + ")";
      })
      .attr("class", function(d) {
        if (d.name === MAIN_CATEGORY || d.name === AVG_CATEGORY) {
          return "main-category-bar";
        } else {
          return "category-bar";
        }
      });
  
    chart.selectAll("text.score")
      .data(name_values)
      .enter().append("text")
      .attr("x", function(d) { return x(d.value) + left_width; })
      .attr("y", function(d, i){ return y(d.name) + y.rangeBand()/2; } )
      .attr("dx", -5)
      .attr("dy", ".36em")
      .attr("text-anchor", "end")
      .attr('class', 'score')
      .text(function(d) {
        return d.value;
      });
   
    chart.selectAll("text.name")
      .data(name_values)
      .enter().append("text")
      .attr("x", left_width / 2)
      .attr("y", function(d, i){
        return y(d.name) + y.rangeBand()/2; } )
      .attr("dy", ".36em")
      .attr("text-anchor", "middle")
      .attr('class', function(d) {
        if (d.name === MAIN_CATEGORY || d.name === AVG_CATEGORY) {
          return "main-category-text";
        } else {
          return "";
        }
      })
      .text(function(d) {
        return d.name;
      });
  }
  
  function makeMap(us) {
    svg.append("g")
        .attr("class", "categories-choropleth")
      .selectAll("path")
        .data(topojson.feature(us, us.objects.states).features)
      .enter().append("path")
        .attr("transform", "scale(" + SCALE + ")")
        .style("fill", function(d) {
          if (valueById.get(d.id)) {
            var i = quantize(valueById.get(d.id));
            var color = colors[i].getColors();
            return "rgb(" + color.r + "," + color.g +
                "," + color.b + ")";
          } else {
            return "";
          }
        })
        .attr("d", path)
        .on("mousemove", function(d) {
            var html = "";
  
            html += "<div class=\"tooltip_kv\">";
            html += "<span class=\"tooltip_key\">";
            html += id_name_map[d.id];
            html += "</span>";
            html += "<span class=\"tooltip_value\">";
            html += (valueById.get(d.id) ? valueById.get(d.id) : "");
            html += "";
            html += "</span>";
            html += "</div>";
            
            $("#tooltip-container").html(html);
            $(this).attr("fill-opacity", "0.8");
            $("#tooltip-container").show();
            
            var coordinates = d3.mouse(this);
            
            var map_width = $('.categories-choropleth')[0].getBoundingClientRect().width;
            
            if (d3.event.pageX < map_width / 2) {
              d3.select("#tooltip-container")
                .style("top", (d3.event.pageY + 15) + "px")
                .style("left", (d3.event.pageX + 15) + "px");
            } else {
              var tooltip_width = $("#tooltip-container").width();
              d3.select("#tooltip-container")
                .style("top", (d3.event.pageY + 15) + "px")
                .style("left", (d3.event.pageX - tooltip_width - 30) + "px");
            }
        })
        .on("mouseout", function() {
                $(this).attr("fill-opacity", "1.0");
                $("#tooltip-container").hide();
            });
  
    svg.append("path")
        .datum(topojson.mesh(us, us.objects.states, function(a, b) { return a !== b; }))
        .attr("class", "categories")
        .attr("transform", "scale(" + SCALE + ")")
        .attr("d", path);
  }
  
  d3.json("https://s3-us-west-2.amazonaws.com/vida-public/geo/us.json", function(error, us) {
    makeMap(us);
    makeBars(data);
  });
  
  });
});

</script>



	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
		<h1 class="h2">Money Donate</h1>

	</div>

	<div id="tooltip-container"></div>
	<br />
	<br />
	<div id="canvas-svg"></div>
	<h5>Unit : 1,000 USD</h5>
	<br />
	<br />
	<div class="btn-toolbar mb-2 mb-md-0">

		<h5>Donate Record</h5>
		&nbsp;&nbsp;&nbsp;

		<div class="form-group mx-sm-2 mb-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search">
				<span class="input-group-btn">
					<button class="btn btn-outline-info" type="button">
						<i class="fas fa-search"></i>
					</button>
				</span>
			</div>
		</div>

	</div>
	<br />
	<div class="table-responsive col-6">
		<table class="table table-striped table-sm">
			<thead>
				<tr>
					<th>State</th>
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
