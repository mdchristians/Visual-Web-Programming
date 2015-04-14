<%@ Page Language="C#" %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
  
<script runat="server">  
  
</script>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
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
      
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True"   
            AutoGenerateRows="False" DataKeyNames="EmployeeID"   
            DataSourceID="SqlDataSource1" Height="50px" Width="125px">  
            <Fields>  
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" sortExpression="EmployeeID" />  
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />  
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />  
                <asp:BoundField DataField="BusinessPhone" HeaderText="BusinessPhone" SortExpression="BusinessPhone" />  
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />  
                <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />  
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:CommandField ShowDeleteButton="False" ShowEditButton="True" ShowInsertButton="True" />  
            </Fields>  
        </asp:DetailsView>  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"   
            ConflictDetection="CompareAllValues"   
            ConnectionString="<%$ ConnectionStrings:Employees %>"   
            InsertCommand="INSERT INTO [Employees] ([EmployeeID], [FirstName], [LastName], [BusinessPhone], [EmailAddress], [JobTitle], [Company]) VALUES (@EmployeeID, @FirstName, @LastName, @BusinessPhone, @EmailAddress, @JobTitle, @Company)" 
            SelectCommand="SELECT * FROM [Employees]"   
            UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [BusinessPhone] = @BusinessPhone, [EmailAddress] = @EmailAddress, [JobTitle] = @JobTitle, [Company] = @Company WHERE [EmployeeID] = @EmployeeID">  
            <UpdateParameters>  
                <asp:Parameter Name="FirstName" Type="String" />  
                <asp:Parameter Name="LastName" Type="String" />  
                <asp:Parameter Name="BusinessPhone" Type="String" />  
                <asp:Parameter Name="EmailAddress" Type="String" />  
                <asp:Parameter Name="JobTitle" Type="String" />  
                <asp:Parameter Name="Company" Type="String" />  
            </UpdateParameters>  
            <InsertParameters>  
                <asp:Parameter Name="EmployeeID" Type="String" />  
                <asp:Parameter Name="FirstName" Type="String" />  
                <asp:Parameter Name="LastName" Type="String" />  
                <asp:Parameter Name="BusinessPhone" Type="String" />  
                <asp:Parameter Name="EmailAddress" Type="String" />  
                <asp:Parameter Name="JobTitle" Type="String" />  
                <asp:Parameter Name="Company" Type="String" />   
            </InsertParameters>  
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