<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server"></script>

<html lang="en">
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Matt Christians - VWP Fall 2014</title>
    <meta name="description" content="Matt Christians VWP Website">

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom Styles -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

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
      <a class="navbar-brand" href="default.aspx">Home</a>
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
        <li><a href="#">HW 3</a></li>
        <li><a href="#">HW 4</a></li>
        <li><a href="#">HW 5</a></li>
        <li><a href="#">HW 6</a></li>
        <li><a href="#">Project</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">

      <div class="main-header">
        <h3> Go ahead, take a look around!</h3>
        <p>This project is based on Twitter's Bootstrap.  The original stylesheets were modified slightly in order to obtain various looks for homework like the table, for example.  General styles were created and reside in the "styles.css" file.</p>
        <p>Please also note that within the directory, my stylesheets are in the folder labeled "css", images are stored in "img", fonts in "fonts", and javascript in "js".  I can change this if need be, but I've developed a habit for labeling things that way.</p>
        <p>If you have any questions on the coding, please feel free to email me at <a href="mailto:chri2655@d.umn.edu">Chri2655@d.umn.edu</a></p>
      </div>

    </div><!-- /.container -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>