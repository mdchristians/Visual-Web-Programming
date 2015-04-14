<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    void btnPie_Click(object sender, EventArgs e)
    {
        // All text boxes must be filled
        if ((txtWork.Text != String.Empty) && (txtEat.Text != String.Empty) && (txtCommute.Text != String.Empty) && (txtWTV.Text != String.Empty) && (txtSleep.Text != String.Empty))
        {
            double work = double.Parse(txtWork.Text);
            double eat = double.Parse(txtEat.Text);
            double commute = double.Parse(txtCommute.Text);
            double watchTV = double.Parse(txtWTV.Text);
            double sleep = double.Parse(txtSleep.Text);

            double totalDay = work + eat + commute + watchTV + sleep;
                if (totalDay != 24)
                {
                    lblError.Text = "Double check and make sure your day has 24 hours!";
                }
            
                if (totalDay == 24)
                {
                    lblError.Text = string.Empty;
                } 
        }
        
        else
        {
            Response.Write("Check all fields!");
        }
    }

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Google Pie Chart</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom Styles -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- Google's JS API -->
   <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1', { 'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        
        // Create the data table - Round 2.
        var work = document.getElementById("txtWork").value;
        var eat = document.getElementById("txtEat").value;
        var commute = document.getElementById("txtCommute").value;
        var watchTV = document.getElementById("txtWTV").value;
        var sleep = document.getElementById("txtSleep").value;

        data.addColumn('string', 'Task');
        data.addColumn('number', 'Hours per Day');
        
        data.addRows([
          ['Task', 'Hours per Day'],
          ['Work', parseInt(work,0)],
          ['Eat', parseInt(eat,0)],
          ['Commute', parseInt(commute,0)],
          ['Watch TV', parseInt(watchTV,0)],
          ['Sleep', parseInt(sleep,0)]
        ]);

        // Set DropDownList Options - PROBLEM SPOT
        var ddlDay = document.getElementById("listBoot");
        var ddlPick = ddlDay.options[ddlDay.selectedIndex].value;

        // Set chart options
        var options = {
                        title: ddlPick + 's Daily Routine!',
                        is3D: true,
                     };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
    <!-- Table Script to Show/Hide -->
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
  <body>
  <!-- Pie Chart doesn't like to display with dropdown -->
  <div id="piechart_3d" style="width: 900px; height: 500px;"></div><br /><br />
        <form id="form1" runat="server"><br />

                <!-- Dropdown List -->
                <asp:DropDownList ID="ListBoot" CssClass="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem Value="Routine">Select a Day</asp:ListItem>
                    <asp:ListItem Value="Monday">Monday</asp:ListItem>
                    <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                    <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                    <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                    <asp:ListItem Value="Friday">Friday</asp:ListItem>
                    <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                    <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                </asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="lblError" runat="server" Text="Warning: A Day has only 24 hours!" style="color:red;" Font-Size="XLarge" Visible="false" />

            <!-- Work -->
            <asp:Label ID="lblWork" Text="Work:" runat="server"></asp:Label>
            <asp:TextBox ID="txtWork" runat="server" Text="11"  CssClass="input-group"></asp:TextBox><br />

            <!-- Eat -->
            <asp:Label ID="lblEat" Text="Eat:" runat="server"></asp:Label>
            <asp:TextBox ID="txtEat" runat="server" Text="2"  CssClass="input-group"></asp:TextBox><br />

            <!-- Commute -->
            <asp:Label ID="lblCommute" Text="Commute:" runat="server"></asp:Label>
            <asp:TextBox ID="txtCommute" runat="server" Text="2"  CssClass="input-group"></asp:TextBox><br />

            <!-- TV -->
            <asp:Label ID="lblTV" Text="TV:" runat="server"></asp:Label>
            <asp:TextBox ID="txtWTV" runat="server" Text="2"  CssClass="input-group"></asp:TextBox><br />

            <!-- Sleep -->
            <asp:Label ID="lblSleep" Text="Sleep:" runat="server"></asp:Label>
            <asp:TextBox ID="txtSleep" runat="server" Text="7"  CssClass="input-group"></asp:TextBox><br />
            
            <!-- ACTION BUTTON!!!! -->
            <asp:Button ID="btn" runat="server" Text="Draw 3D Piechart" OnClick="btnPie_Click" />
    </form>
    
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>