<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    public void Page_Load(object sender, EventArgs e)
    {
        // rankArray Build
        int[] rankArray = new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

        // stateArray Build
        string[] stateArray = new string[] { "Delaware", 
                                            "Alaska", 
                                            "North Dakota",
                                            "Connecticut",
                                            "Wyoming",
                                            "Massachusetts",
                                            "New York",
                                            "New Jersey",
                                            "Oregon",
                                            "Washington",
                                            "Virginia",
                                            "Minnesota"
                                          };

        // gdpArray Build
        string[] gdpArray = new string[] { "61,183", 
                                           "61,156", 
                                           "55,250",
                                           "54,925",
                                           "54,305",
                                           "53,221",
                                           "53,067",
                                           "49,430",
                                           "48,069",
                                           "47,146",
                                           "47,127",
                                           "47,028"
                                         };
    }

    // btnGDP_Click controls the search/find/display
    void btnGDP_Click(object sender, EventArgs e)
    {
        string inState = txtState.Text;
        for (int i = 0; i < stateArray.Count; i++)
        {
            if (state1.Equals(stateArray[i]))
            {
                Response.Write(stateArray[i] + "'s GDP is " + gdpArray[i] + ", which ranks " + rankArray[i]);
                return;
            }
        }
        Response.Write("Patience Please!  Try another state!");
    }

</script>

<html>
  <head>
    <title>GDP Per State Array</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom Styles -->
    <link href="css/styles.css" rel="stylesheet">

    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>
    <![endif]-->

  <!-- Table Script to Show/Hide -->
  <script>
  	function show(ele) {
            var srcElement = document.getElementById(ele);
                if(srcElement != null) {
                    if(srcElement.style.display == "block") {
                        srcElement.style.display= 'none';
                }
                    else {
                        srcElement.style.display='block';
                    }
                return false;
                }
        }
  	</script>
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

<form id="form1" runat="server">
<div class="container">
  <div class="row">
		<div class="col-md-12">
			<asp:TextBox ID="txtState" runat="server" Text="" CssClass="input-group"></asp:TextBox>

			<asp:Button ID="btnGDP" runat="server" Text="Find" OnClick="btnGDP_Click" />

			<a href="#" class="btn btn-primary btn-lg" role="button" onclick="show('showTable')">Show/Hide Table</a>
		</div>
	</div>

  <!-- Table that shows or hides based on the click! -->
	<div class="row">
		<div class="col-md-12">
			<div id="showTable" style="display: none">
				<table>
					<tr><th>Rank</th><th>State</th><th>2012</th></tr>
          <tr><td>1</td><td>Delaware</td><td>61,183</td></tr>
          <tr><td>2</td><td>Alaska</td><td>61,156</td></tr>
          <tr><td>3</td><td>North Dakota</td><td>55,250</td></tr>
          <tr><td>4</td><td>Connecticut</td><td>54,925</td></tr>
          <tr><td>5</td><td>Wyoming</td><td>54,305</td></tr>
          <tr><td>6</td><td>Massachusetts</td><td>53,221</td></tr>
          <tr><td>7</td><td>New York</td><td>53,067</td></tr>
          <tr><td>8</td><td>New Jersey</td><td>49,430</td></tr>
          <tr><td>9</td><td>Oregon</td><td>48,069</td></tr>
          <tr><td>10</td><td>Washington</td><td>47,146</td></tr>
          <tr><td>11</td><td>Virginia</td><td>47,127</td></tr>
          <tr><td>12</td><td>Minnesota</td><td>47,028</td></tr>
        </table>
      </div>
    </div>
  </div>
</div>
</form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
