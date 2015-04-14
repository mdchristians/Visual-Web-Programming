<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
  <head>
    <title>Location</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Social Media Style -->
    <link href="css/social-sharing.css" rel="stylesheet">

    <!-- Custom Styles -->
    <link href="css/styles.css" rel="stylesheet">

    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>
    <![endif]-->
    
    <style>
      #map-outer {height: 440px; padding: 20px; border: 2px solid #CCC; margin-bottom: 20px; background-color:#FFF }
	  #map-container { height: 400px }
	  @media all and (max-width: 768px) {
		#map-outer  { height: 650px }
		}
    </style>
  </head>
  <body>
  <div id="fb-root"></div>
  <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=632400336858350&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="container">

      <div class="main-header">
        <h1>Matt Christians</h1>
        <p class="lead">VWP, Fall 2014, Homework Assignments</p>
      </div>

    </div><!-- /.container -->


<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/vwpteam37/Default.aspx">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">HW1</a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Problem One</a></li>
            <li class="dropdown-submenu">
        <a tabindex="-1" href="#">Problem Two</a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="/vwpteam37/hw1/table.html" target="_blank">table.html</a></li>
          <li><a tabindex="-1" href="/vwpteam37/hw1/tablecode.html" target="_blank">table.css</a></li>
        </ul>
            </li>
            <li class="dropdown-submenu">
        <a tabindex="-1" href="#">Problem Three</a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="/vwpteam37/hw1/myChoice.html" target="_blank">myChoice</a></li>
          <li><a tabindex="-1" href="/vwpteam37/hw1/soda.html" target="_blank">Water</a></li>
          <li><a tabindex="-1" href="/vwpteam37/hw1/water.html" target="_blank">Soda</a></li>
        </ul>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">HW2</a>
          <ul class="dropdown-menu" role="menu">
            <li><a tabindex="-1" href="/vwpteam37/hw2/default.aspx">Overview</a></li>
            <li><a tabindex="-1" href="/vwpteam37/hw2/converter-output.html">Converter Output</a></li>
          </ul>
        </li>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">HW3</a>
          <ul class="dropdown-menu" role="menu">
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">Problem 1</a>
              <ul class="dropdown-menu">
                <li><a tabindex="-1" href="/vwpteam37/hw3/PieChart3D.aspx" target="_blank">Pie Chart</a></li>
                <li><a tabindex="-1" href="/vwpteam37/hw3/PieChart3D-Source.html" target="_blank">Pie Chart Source</a></li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">Problem 2</a>
              <ul class="dropdown-menu">
                <li><a tabindex="-1" href="/vwpteam37/hw3/Location.aspx" target="_blank">Location</a></li>
                <li><a tabindex="-1" href="/vwpteam37/hw3/Location-Source.html" target="_blank">Location Source</a></li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">Problem 3</a>
              <ul class="dropdown-menu">
                <li><a tabindex="-1" href="/vwpteam37/hw3/GdpPerState.aspx" target="_blank">GDP Per State</a></li>
                <li><a tabindex="-1" href="/vwpteam37/hw3/GdpPerState-Source.html" target="_blank">GDP Per State Source</a></li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">Problem 4</a>
              <ul class="dropdown-menu">
                <li><a tabindex="-1" href="/vwpteam37/hw3/GdpPerStateArray.aspx" target="_blank">GDP Per State Array</a></li>
                <li><a tabindex="-1" href="/vwpteam37/hw3/GdpPerStateArray-Source.html" target="_blank">GDP Per State Array Source</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li><a href="#">HW 4</a></li>
        <li><a href="#">HW 5</a></li>
        <li><a href="#">HW 6</a></li>
        <li><a href="#">Project</a></li>
      </ul>
    </div>
  </div>
</nav>

  <div class="container">
  <div class="row">
      <div id="map-outer" class="col-md-12">
          <div id="address" class="col-md-4">
            <h2>Twitter's Headquarters!</h2>
            <address>
            <strong>Tweet Tweet</strong><br>
                1355 Market Street<br>
                Suite 900<br>
                San Francisco, California<br>
                94103<br>
           </address>
           <p>I chose to use Twitter's headquarters because the framework I am using for this class is Twitter's Bootstrap.</p>  <p>I think Silicon Valley would be a fun place to visit one day.</p>
          </div>
        <div id="map-container" class="col-md-8"></div>
      </div><!-- /map-outer -->
  </div> <!-- /row -->
</div><!-- /container -->
	<div class="container">
    <div class="btn-group">
        <button class="btn btn-default btn-lg disabled">Share:</button> 
        <a class="btn btn-default btn-lg" target="_blank" title="On Facebook" href="http://www.facebook.com/sharer.php?u=https://twitter.com/">
   			<i class="fa fa-facebook fa-lg fb"></i>
		</a>
        <a class="btn btn-default btn-lg" target="_blank" title="On Twitter" href="http://twitter.com/share?url=https://twitter.com/&text=Check%20Out%20Twitter%20Homepage%20Matt%20Christians">
            <i class="fa fa-twitter fa-lg tw"></i>
        </a>
    </div>
</div>

</div>
    


    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script>	
	
      function init_map() {
		var myLocation = new google.maps.LatLng(37.776775,-122.416791);
		  
        var mapOptions = {
          center: myLocation,
          zoom: 14
        };
		
		var marker = new google.maps.Marker({
			position: myLocation,
			title:"Twitter Headquarters"});
			
        var map = new google.maps.Map(document.getElementById("map-container"),
            mapOptions);
		
		marker.setMap(map);	

      }
	  
      google.maps.event.addDomListener(window, 'load', init_map);
	  
    </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
