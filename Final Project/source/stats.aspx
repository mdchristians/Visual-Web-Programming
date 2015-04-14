<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<script runat="server">

protected void btnSkaters_Click(object sender, EventArgs e)
{

    pnlSkaters.Visible = true;
    pnlGoalies.Visible = false;
}

protected void btnGoalies_Click(object sender, EventArgs e)
{

    pnlSkaters.Visible = false;
    pnlGoalies.Visible = true;
}

</script>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="VWP Project Final Website">
	<meta name="author" content="Matt Christians">

	<title>IHL</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="css/styles.css" rel="stylesheet">
	<link href="css/minimit.css" rel="stylesheet">
	<link href="css/carousel.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>

	<!-- Team Dropdown Menu Script -->
	<script>

		$(document).ready(function(){
			$(".dropdown").hover(            
				function() {
					$('.dropdown-menu', this).stop( true, false ).slideDown("fast");
					$(this).toggleClass('open');        
				},
				function() {
					$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
					$(this).toggleClass('open');       
				}
				);
		});

	</script>

	<!-- SQL Data Source: srcSkaters -->
	<asp:SqlDataSource ID="srcSkaters"
    	SelectCommand="SELECT * FROM Skaters;"
    	ConnectionString="<%$ ConnectionStrings:Skaters %>"
    	runat="server">
	</asp:SqlDataSource>

	<!-- SQL Data Source: srcGoalies -->
	<asp:SqlDataSource ID="srcGoalies"
    	SelectCommand="SELECT * FROM Goalies;"
    	ConnectionString="<%$ ConnectionStrings:Goalies %>"
    	runat="server">
	</asp:SqlDataSource>

	<!-- Begin Nav Container -->
	<div class="navbar-wrapper">
		<div class="container">

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
						<a class="navbar-brand" href="index.html">Intergalactic Hockey League</a>
					</div>

					<!-- menu section -->
					<div class="collapse navbar-collapse navbar-ex1-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.html">Home</a></li>
							<li><a href="news.html">News</a></li>
							<li class="dropdown mega-dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Teams <span class="caret"></span></a>       
								<div class="dropdown-menu mega-dropdown-menu">
									<div class="container">
										<!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane active">
												<ul class="nav-list list-inline">
													<li><a href="roster.html"><img src="img/nav/admirals.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/chiefs.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/emperors.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/force.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/raiders.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/rebels.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/tatooine.jpg"></a></li>
													<li><a href="roster.html"><img src="img/nav/wampas.jpg"></a></li>
												</ul>
											</div>
										</div>
									</div>                   
								</div>        
							</li>
							<li><a href="stats.html">Stats</a></li>
							<li><a href="project.html">Project Guidelines</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Tabbed Statistics Table -->
	<form ID="form1" runat="server">
		<div class="container table">
			<div class="row row-centered">
				<div class="col-xs-10 col-centered">
					<h1>Tabbed Player Statistics</h1>
					<!-- Start the Form -->
					<div class="col-md-6 col-md-offset-3 col-centered">
							<fieldset>

								<!-- Position Selector -->
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-6">
											<asp:Button ID="btnSkaters" OnClick="btnSkaters_Click" CssClass="btn btn-primary btn-block" Text="Skaters" runat="server" />
										</div>
										<div class="col-md-6">
											<asp:Button ID="btnGoalies" OnClick="btnGoalies_Click" CssClass="btn btn-primary btn-block" Text="Goalies" runat="server" />
										</div>
									</div>
								</div>
							</fieldset>
					</div>

					<!-- Table Skaters - GridView -->
					<asp:Panel ID= "pnlSkaters" visible="true" runat="server">
						<asp:GridView 
							ID="gvSkaters" 
							runat="server" 
							AutoGenerateColumns="False" 
							DataSourceID="srcSkaters"
							AllowPaging="true"
							CssClass="table table-striped table-bordered table-condensed">
							<Columns>
								<asp:BoundField DataField="Player" HeaderText="Player" SortExpression="Player" />
								<asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
								<asp:BoundField DataField="GamesPlayed" HeaderText="Games Played" SortExpression="GamesPlayed" />
								<asp:BoundField DataField="Goals" HeaderText="Goals" SortExpression="Goals" />
								<asp:BoundField DataField="Assists" HeaderText="Assists" SortExpression="Assists" />
								<asp:BoundField DataField="Points" HeaderText="Points" SortExpression="Points" />
							</Columns>
						</asp:GridView>
					</asp:Panel>

					<!-- Table Goalies - GridView -->
					<asp:Panel ID= "pnlGoalies" visible="false" runat="server">
						<asp:GridView 
							ID="gvGoalies" 
							runat="server" 
							AutoGenerateColumns="False" 
							DataSourceID="srcGoalies"
							AllowPaging="true"
							CssClass="table table-striped table-bordered table-condensed">
							<Columns>
								<asp:BoundField DataField="Player" HeaderText="Player" SortExpression="Player" />
								<asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
								<asp:BoundField DataField="Games" HeaderText="Games" SortExpression="Games" />
								<asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
								<asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
								<asp:BoundField DataField="Ties" HeaderText="Ties" SortExpression="Ties" />
							</Columns>
						</asp:GridView>
					</asp:Panel>

				</div>
			</div>
		</div>
	</form>

	<!-- Footer -->
	<div class="container">
		<div class="row row-centered">
			<div class="col-xs-10 col-centered">

				<!-- Footer -->
				<footer>
					<div class="row">
						<div class="col-lg-12">
							<p>&copy; Matt's Web Dev Work: <a href="http://bluestmoon.com/index.php?p=home">BluestMoon</a> | <a href="http://umdmis.com/">UMDMIS</a> | <a href="http://mdchristians.com/">MDChristians</a> | <a href="http://umdpenaltybox.com/">PenaltyBox</a> | <a href="http://www.carolslowcarb.com/">CarolsLowCarb</a> | <a href="http://www.umdbulldogcountry.com/">UMDBulldogCountry</a> | <a href="https://secret-castle-6370.herokuapp.com/">JobApp</a></p>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</body>
</html>
