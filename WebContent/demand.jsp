<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>System</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
   	<script src="js/jquery-3.2.1.min.js"></script>
    <script>
    
 // Send the data using post
    var posting = $.post( "/Distribution/PantryServlet", { action: "list_all"}).done(function( data ) {
         //alert( "Data Loaded: " + data );
         // Put the results in tbody
         
    });

    </script>
  </head>
  <body>
  <jsp:include page="header.jsp" />
  <jsp:include page="sider.jsp" />

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
        
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
            <h1 class="h2">Demand</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <button type="button" class="btn btn-outline-primary">Add New</button>&nbsp;&nbsp;
              <button type="button" class="btn btn-outline-warning">Modify</button>&nbsp;&nbsp;
              <button type="button" class="btn btn-outline-danger">Delete</button>&nbsp;&nbsp;
              <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Month</button>
  			  <div class="dropdown-menu">
   				<a class="dropdown-item" href="#">1</a>
    				<a class="dropdown-item" href="#">2</a>
    				<a class="dropdown-item" href="#">3</a>
   				<a class="dropdown-item" href="#">4</a>
   				<a class="dropdown-item" href="#">5</a>
   				<a class="dropdown-item" href="#">6</a>
   				<a class="dropdown-item" href="#">7</a>
   				<a class="dropdown-item" href="#">8</a>
   				<a class="dropdown-item" href="#">9</a>
   				<a class="dropdown-item" href="#">10</a>
   				<a class="dropdown-item" href="#">11</a>
   				<a class="dropdown-item" href="#">12</a>
  			  </div>
  			  &nbsp;&nbsp;
              <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort By</button>
  			  <div class="dropdown-menu">
   				<a class="dropdown-item" href="#">Id</a>
    				<a class="dropdown-item" href="#">Food Type</a>
    				<a class="dropdown-item" href="#">Food </a>
   				<a class="dropdown-item" href="#">City</a>
   				<a class="dropdown-item" href="#">Zip Code</a>
  			  </div>
            </div>
          </div>

          <div class="table-responsive">
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
                <tr>
                  <td>2</td>
                  <td>Project Bread - The Walk For Hunger of MA</td>
                  <td>145 Border St</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02128</td>
                  <td>(617) 723-5000</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>St Francis House Inc. Pantry</td>
                  <td>39 Boylston Street</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02112</td>
                  <td>617-654-1225</td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>The Paulist Center</td>
                  <td>5 Park St.</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02108</td>
                  <td>617-742-4460</td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>Greater Boston Food Bank</td>
                  <td>diam</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td>617-654-1225</td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>St Anthony Shrine/Franciscan Food Center</td>
                  <td>quis</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td>617-654-1225</td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>Sojourner House</td>
                  <td>elementum</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td>617-654-1225</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>Salvation Army/South End Food Pantry</td>
                  <td>ipsum</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td>617-654-1225</td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>Rosie's Place Pantry</td>
                  <td>nec</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td>617-654-1225</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>International Institute of Boston Pantry</td>
                  <td>semper</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td>617-654-1225</td>
                </tr>
                 <tr>
                  <td>11</td>
                  <td>Haley House Food Pantry</td>
                  <td>semper</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
                 <tr>
                  <td>12</td>
                  <td>Boston Rescue Mission / Pantry</td>
                  <td>semper</td>
                  <td>Boston</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
                 <tr>
                  <td>13</td>
                  <td>Western Avenue Baptist Church Food Pantry</td>
                  <td>semper</td>
                  <td>Cambridge</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
                 <tr>
                  <td>14</td>
                  <td>Cambridge Senior Center Food Pantry</td>
                  <td>semper</td>
                  <td>Cambridge</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
                 <tr>
                  <td>15</td>
                  <td>Brookline Emergency Food Pantry</td>
                  <td>semper</td>
                  <td>Brookline</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
                 <tr>
                  <td>16</td>
                  <td>Food Not Bombs of Boston</td>
                  <td>semper</td>
                  <td>Cambridge</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
                 <tr>
                  <td>17</td>
                  <td>Salvation Army/Mystic Valley Pantry</td>
                  <td>semper</td>
                  <td>Malden</td>
                  <td>MA</td>
                  <td>02110</td>
                  <td></td>
                </tr>
               
              </tbody>
            </table>
          </div>
        </main>
      </div>
    </div>
    <jsp:include page="footer.jsp" />
    </body>
</html>
