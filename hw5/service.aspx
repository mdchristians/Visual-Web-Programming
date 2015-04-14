<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<script runat="server">

protected void lbSettings_Click(Object sender, EventArgs e) 
{
	Response.Redirect("signup.aspx");
}

protected void lbSignOut_Click(object sender, EventArgs e)
{
    Response.Redirect("signout.aspx");
}

</script>

<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>BM Service Page</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

	<!-- Custom styles for this template -->
	<link href="css/service.css" rel="stylesheet">

</head>

<body>
<form ID="form1" runat="server">

<asp:SqlDataSource ID="srcMembers"
    SelectCommand="SELECT * FROM members;"
    ConnectionString="<%$ ConnectionStrings:members %>"
    runat="server">
</asp:SqlDataSource>

<nav class="navbar navbar-fixed-top header">
	<div class="col-md-12">
		<div class="navbar-header">
			
			<a href="#" class="navbar-brand"><img src="img/bmlogo-small.png"></a>
			
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="http://www.bluestmoon.com" target="_ext">+Bluest Moon</a></li>
			<li>
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-bell"></i></a>
			</li>
			<li><a href="#"><i class="glyphicon glyphicon-th-large"></i></a></li>
			<li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
		</ul>
	</ul>
</div>  
</div> 
</nav>
<div class="navbar navbar-default" id="subnav">
	<div class="col-md-12">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse2">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse2">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Personal Info</a></li>
				<li><a href="#">Security</a></li>
				<li><a href="#">Language</a></li>
				<li><a href="#">Data Tools</a></li>
				<li><a href="#">Account History</a></li>
				<li><asp:LinkButton id="lbSignOut" Text="Sign Out" OnClick="lbSignOut_Click" runat="server"/></li>
			</ul>
		</div>  
	</div> 
</div>

<!--main-->
<div class="container" id="main">
	<div class="row">

		<!-- Welcome Content-->
		<div class="col-md-6 col-sm-6">
			<div class="panel panel-default">
				<div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>About</h4></div>
				<div class="panel-body">
					<img src="img/photo.png" class="img-circle pull-right">
					<a href="#">Edit profile</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">View profile</a>
					<div class="clearfix"></div>
					<hr>
					<ul class="list-unstyled">
						<li><b>Bluest Moon+ Settings</b></li>
						<li><asp:LinkButton id="lbSettings" Text="Edit settings" OnClick="lbSettings_Click" runat="server"/></li>
					</ul>
					<ul class="list-unstyled">
						<li><b>Circles</b></li>
						<li><a href="#">View your circles</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- User's Content -->
		<div class="col-md-6 col-sm-6">
			<div class="panel panel-default">
				<div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Account Info</h4></div>
				<div class="panel-body">

					<!-- User Info -->
					<div class="col-md-12">
						<div class="row">
							<asp:GridView ID="gvMembers" runat="server" DataSourceID="srcMembers" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>