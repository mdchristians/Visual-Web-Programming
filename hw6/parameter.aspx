<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void ControlInsert(object sender, EventArgs e)
    {
        form1.Visible = true;
        pnlControl.Visible = true;
        pnlForm.Visible = false;
    }

    protected void FormInsert(object sender, EventArgs e)
    {
        form1.Visible = true;
        pnlControl.Visible = false;
        pnlForm.Visible = true;
    }

    protected void FormTwo(object sender, EventArgs e)
    {
        form2.Visible = true;
        form1.Visible = false;
    }

    protected void Insert(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }

    protected void Insert2(object sender, EventArgs e)
    {
        SqlDataSource2.Insert();
    }
    
    
</script>

<html lang="en">

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


<!-- Begin Form -->
<form ID="form1" runat="server">
<div>
<asp:Button ID="btnCP" runat="server" Text="Control Parameter" OnClick="ControlInsert" />
<asp:Button ID="btnFP" runat="server" Text="Form Parameter" OnClick="FormInsert" />
<asp:Button ID="Button2" runat="server" Text="Second Form" OnClick="FormTwo" />
</div><br /><br />
    

<asp:Panel ID= "pnlControl" visible="true" runat="server">
<asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="false" 
    AllowPaging="True" 
    AllowSorting="True" 
    PageSize="5"
    DataSourceID="SqlDataSource1"
    DataKeyNames="EmployeeID" 
    CssClass="table table-hover table-striped"
    EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="BusinessPhone" HeaderText="Phone" />
            <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
            <asp:BoundField DataField="JobTitle" HeaderText="Title" />
            <asp:BoundField DataField="Company" HeaderText="Company" />
        </Columns>
    </asp:GridView>

<table>
        <tr>
            <td>
                Employee ID<br />
                <asp:TextBox ID="txtEmployeeID" runat="server" />
            </td>
            <td>
                First Name:<br />
                <asp:TextBox ID="TxtFirstName" runat="server" />
            </td>
            <td>
                Last Name:<br />
                <asp:TextBox ID="txtLastName" runat="server" />
            </td>
            <td>
                Business Phone:<br />
                <asp:TextBox ID="txtBusinessPhone" runat="server" />
            </td>
            <td>
                Email Address:<br />
                <asp:TextBox ID="txtEmailAddress" runat="server" />
            </td>
            <td>
                Job Title:<br />
                <asp:TextBox ID="txtJobTitle" runat="server" />
            </td>
            <td>
                Company:<br />
                <asp:TextBox ID="txtCompany" runat="server" />
            </td>
        </tr>
    </table>
    <asp:Button ID="btnInsert1" runat="server" Text="Add" OnClick="Insert" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Employees %>"
            SelectCommand="SELECT * FROM Employees"
            InsertCommand="INSERT INTO Employees (EmployeeID,FirstName,LastName,BusinessPhone,EmailAddress,JobTitle,Company) values (@EmployeeID,@FirstName,@LastName,@BusinessPhone,@EmailAddress,@JobTitle,@Company)" >
        
        <InsertParameters>
            <asp:ControlParameter Name="EmployeeID" ControlID="txtEmployeeID" Type="String" />
            <asp:ControlParameter Name="FirstName" ControlID="txtFirstName" Type="String" />
            <asp:ControlParameter Name="LastName" ControlID="txtLastName" Type="String" />
            <asp:ControlParameter Name="BusinessPhone" ControlID="txtBusinessPhone" Type="String" />
            <asp:ControlParameter Name="EmailAddress" ControlID="txtEmailAddress" Type="String" />
            <asp:ControlParameter Name="JobTitle" ControlID="txtJobTitle" Type="String" />
            <asp:ControlParameter Name="Company" ControlID="txtCompany" Type="String" />
        </InsertParameters>

    </asp:SqlDataSource>

</asp:Panel>
<asp:Panel ID= "pnlForm" visible="false" runat="server">
    
    <asp:GridView ID="GridView2" runat="server" 
    AutoGenerateColumns="false" 
    DataSourceID="SqlDataSource2"
    DataKeyNames="EmployeeID"
    AllowPaging="True" 
    AllowSorting="True" 
    PageSize="5" 
    CssClass="table table-hover table-striped"
    EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="BusinessPhone" HeaderText="Phone" />
            <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
            <asp:BoundField DataField="JobTitle" HeaderText="Title" />
            <asp:BoundField DataField="Company" HeaderText="Company" />
        </Columns>
    </asp:GridView>

<table>
        <tr>
            <td>
                Employee ID<br />
                <asp:TextBox ID="TextBox1" runat="server" />
            </td>
            <td>
                First Name:<br />
                <asp:TextBox ID="TextBox2" runat="server" />
            </td>
            <td>
                Last Name:<br />
                <asp:TextBox ID="TextBox3" runat="server" />
            </td>
            <td>
                Business Phone:<br />
                <asp:TextBox ID="TextBox4" runat="server" />
            </td>
            <td>
                Email Address:<br />
                <asp:TextBox ID="TextBox5" runat="server" />
            </td>
            <td>
                Job Title:<br />
                <asp:TextBox ID="TextBox6" runat="server" />
            </td>
            <td>
                Company:<br />
                <asp:TextBox ID="TextBox7" runat="server" />
            </td>
        </tr>
    </table>
    <asp:Button ID="Buttonins2" runat="server" Text="Add" OnClick="Insert2" />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Employees %>"
            SelectCommand="SELECT * FROM Employees"
            InsertCommand="INSERT INTO Employees (EmployeeID,FirstName,LastName,BusinessPhone,EmailAddress,JobTitle,Company) values (@EmployeeID,@FirstName,@LastName,@BusinessPhone,@EmailAddress,@JobTitle,@Company)" >
        
        <InsertParameters>
            <asp:FormParameter Name="EmployeeID" formfield="txtEmployeeID" Type="String" />
            <asp:FormParameter Name="FirstName" formfield="txtFirstName" Type="String" />
            <asp:FormParameter Name="LastName" formfield="txtLastName" Type="String" />
            <asp:FormParameter Name="BusinessPhone" formfield="txtBusinessPhone" Type="String" />
            <asp:FormParameter Name="EmailAddress" formfield="txtEmailAddress" Type="String" />
            <asp:FormParameter Name="JobTitle" formfield="txtJobTitle" Type="String" />
            <asp:FormParameter Name="Company" formfield="txtCompany" Type="String" />
        </InsertParameters>

    </asp:SqlDataSource>
    
</asp:Panel>
 

</form>
    
    <!-- Begin Form -->
<form ID="form2" visible="False" runat="server">
    
        <section class="dfilters">
        <div class="row row-centered">
            <div class="col-xs-8 col-centered">
            <h2>form2</h2>
            </div>
        </div>
    </section>
    

</form>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <small class="copyright">Developed by <a href="http://mdchristians.com" target="_blank">Matt Christians</a> for VWP</small>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/page.js"></script>

</body>
</html>