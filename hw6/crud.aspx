<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

// GridView Button
protected void btnGV_Click(object sender, EventArgs e)
{
    Response.Redirect("GridView.aspx");
}

// DetailsView Button
protected void btnDV_Click(object sender, EventArgs e)
{
    Response.Redirect("detailsview.aspx");
}

// FormView Button
protected void btnFV_Click(object sender, EventArgs e)
{
    Response.Redirect("formview.aspx");
}

// ListView Button
protected void btnLV_Click(object sender, EventArgs e)
{
    Response.Redirect("listview.aspx");
}

</script>

<html lang="en">

<head>

	 <meta charset="utf-8">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <meta name="description" content="Homework 6 Problem 1">
	 <meta name="author" content="Matt Christians">

	 <title>Homework 6</title>

	 <!-- Bootstrap Core CSS -->
	 <link href="css/yeti-bootstrap.css" rel="stylesheet">

	 <!-- Custom CSS -->
	 <link href="css/styles.css" rel="stylesheet">
	 <link href="css/minimit.css" rel="stylesheet">

	 <!-- Google Font -->
	 <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

	 <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	 <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	 <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	 <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<!--header section -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">
				<img src="img/bmlogo-small.png" alt="">
			</a>
		</div>

		<!-- menu section -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.html">Home</a></li>
				<li><a href="view.aspx">Problem 1: Views</a></li>
				<li><a href="crud.aspx">Problem 2 & 3: CRUD</a></li>
				<li><a href="masterdetail.aspx">Problem 4: Master-detail</a></li>
				<li><a href="parameter.aspx">Problem 4: Parameters</a></li>
				<li><a href="sources.html">Problem Sources</a></li>
			</ul>
		</div>
	</div>
</nav>

<!-- Begin Form -->
<form ID="form1" runat="server">

	<!-- Buttons -->
	<section class="dfilters">
		<div class="row row-centered">
			<div class="col-xs-8 col-centered">
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
					<div class="btn-group" role="group">
						<asp:Button ID="btnGridView" OnClick="btnGV_Click" Text="GridView CRUD" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnDetailsView" OnClick="btnDV_Click" Text="DetailsView CRUD" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnFormView" OnClick="btnFV_Click" Text="FormView CRUD" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnListView" OnClick="btnLV_Click" Text="ListView CRUD" CssClass="btn btn-default" runat="server" />
					</div>
				</div>
			</div>
		</div>
	</section>
    
    <!-- Buttons -->
	<section class="dfilters">
		<div class="row row-centered">
			<div class="col-xs-10 col-centered">
                <p>Although we're not really "crud"-ing...  I was able to to combine problems 2 & 3 after a hours of trial and error to display each different view so it selects, edits, updates, inserts, and deletes entries.</p>
                <p>I decided to combine the two problems in order to algorithmically enhance the forms!</p>
			    <br/>
                <p>Use the buttons up top to navigate to that view's page.  Use the menu up top to navigate back to this page!.</p>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<small class="copyright">Developed by <a href="http://mdchristians.com" target="_blank">Matt Christians</a> for VWP</small>
		</div>
	</footer>
</form>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/page.js"></script>

</body>

</html>