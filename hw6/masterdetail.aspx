<%@ Page language="C#" %>

<script runat="server">

  protected void DetailsView1_PageIndexChanging(Object sender, DetailsViewPageEventArgs e)
  {

  }


</script>

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">

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
                <li><a href="parameter.aspx">Problem 5: Parameters</a></li>
                <li><a href="sources.html">Problem Sources</a></li>
            </ul>
        </div>
    </div>
</nav>

<form id="form1" runat="server">

    <!-- Buttons -->
    <section class="dfilters">
        <div class="row row-centered">
            <div class="col-xs-8 col-centered">
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Employee" DataValueField="Employee">
        </asp:DropDownList><br /><br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Orders %>" SelectCommand="SELECT DISTINCT [Employee] FROM [Orders]"></asp:SqlDataSource>

        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="OrderID">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Orders %>" SelectCommand="SELECT DISTINCT [OrderID], [Employee] FROM [Orders] WHERE ([Employee] = @Employee)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Employee" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="300px">
            <Fields>
                <asp:BoundField DataField="OrderDetailID" HeaderText="OrderDetailID" InsertVisible="False" ReadOnly="True" SortExpression="OrderDetailID" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OrderDetails %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([OrderID] = @OrderID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="OrderID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
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