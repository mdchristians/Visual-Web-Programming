<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
      <div class="col-xs-12 col-centered">

      <asp:ListView ID="EmployeesListView" 
        DataSourceID="SqlDataSource1" 
        DataKeyNames="EmployeeID"
        ConvertEmptyStringToNull="true"
        InsertItemPosition="LastItem"
        runat="server">
        <LayoutTemplate>
          <table Class="table table-striped table-bordered table-condensed">
            <tr runat="server" id="itemPlaceholder" />
          </table>
          <asp:DataPager ID="DataPager" runat="server" PageSize="5">
								<Fields>
									<asp:NumericPagerField ButtonCount="2" />
								</Fields>
							</asp:DataPager> 
        </LayoutTemplate>
        <ItemTemplate>
          <tr runat="server">
            <td>
              <asp:Button ID="SelectButton" runat="server" Text="Select" CommandName="Select" />
              <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" />
            </td>
            <td>
          <asp:Label runat="server" ID="lblEmployeeID" Text='<%#Eval("EmployeeID")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblFirstName" Text='<%#Eval("FirstName")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblLastName" Text='<%#Eval("LastName")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblBusinessPhone" Text='<%#Eval("BusinessPhone")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblEmailAddress" Text='<%#Eval("EmailAddress")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblJobTitle" Text='<%#Eval("JobTitle")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblCompany" Text='<%#Eval("Company")%> '/>
        </td>
          </tr>
        </ItemTemplate>
        <SelectedItemTemplate>
          <tr class="SelectedItem" runat="server">
            <td>
              <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" />
              <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" />
            </td>
            <td>
          <asp:Label runat="server" ID="lblEmployeeID" Text='<%#Eval("EmployeeID")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblFirstName" Text='<%#Eval("FirstName")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblLastName" Text='<%#Eval("LastName")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblBusinessPhone" Text='<%#Eval("BusinessPhone")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblEmailAddress" Text='<%#Eval("EmailAddress")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblJobTitle" Text='<%#Eval("JobTitle")%> '/>
        </td>
        <td>
          <asp:Label runat="server" ID="lblCompany" Text='<%#Eval("Company")%> '/>
        </td>
          </tr>
        </SelectedItemTemplate>
        <EditItemTemplate>
          <tr class="EditItem">
            <td>
              <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
              <asp:Label runat="server" ID="EmployeeIDLabel" AssociatedControlID="EmployeeIDTextBox" Text="EmployeeID" Font-Bold="true"/><br />
              <asp:TextBox ID="EmployeeIDTextBox" runat="server" Text='<%#Bind("EmployeeID") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="FirstNameLabel" AssociatedControlID="FirstNameTextBox" Text="First Name" Font-Bold="true"/><br />
              <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%#Bind("FirstName") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="LastNameLabel" AssociatedControlID="LastNameTextBox" Text="Last Name" Font-Bold="true"/><br />
              <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%#Bind("LastName") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="BusinessPhoneLabel" AssociatedControlID="BusinessPhoneTextBox" Text="Business Phone" Font-Bold="true"/><br />
              <asp:TextBox ID="BusinessPhoneTextBox" runat="server" Text='<%#Bind("BusinessPhone") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="EmailAddressLabel" AssociatedControlID="EmailAddressTextBox" Text="Email Address" Font-Bold="true"/><br />
              <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%#Bind("EmailAddress") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="JobTitleLabel" AssociatedControlID="JobTitleTextBox" Text="Job Title" Font-Bold="true"/><br />
              <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%#Bind("JobTitle") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="CompanyLabel" AssociatedControlID="CompanyTextBox" Text="Company" Font-Bold="true"/><br />
              <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%#Bind("Company") %>' />
              <br />
            </td>
          </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
          <tr class="InsertItem">
            <td>
              <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" /><br />
              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
              <asp:Label runat="server" ID="EmployeeIDLabel" AssociatedControlID="EmployeeIDTextBox" Text="Employee ID" Font-Bold="true"/><br />
              <asp:TextBox ID="EmployeeIDTextBox" runat="server" Text='<%#Bind("EmployeeID") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="FirstNameLabel" AssociatedControlID="FirstNameTextBox" Text="First Name" Font-Bold="true"/><br />
              <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%#Bind("FirstName") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="LastNameLabel" AssociatedControlID="LastNameTextBox" Text="Last Name" Font-Bold="true"/><br />
              <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%#Bind("LastName") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="BusinessPhoneLabel" AssociatedControlID="BusinessPhoneTextBox" Text="Business Phone" Font-Bold="true"/><br />
              <asp:TextBox ID="BusinessPhoneTextBox" runat="server" Text='<%#Bind("BusinessPhone") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="EmailAddressLabel" AssociatedControlID="EmailAddressTextBox" Text="Email Address" Font-Bold="true"/><br />
              <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%#Bind("EmailAddress") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="JobTitleLabel" AssociatedControlID="JobTitleTextBox" Text="Job Title" Font-Bold="true"/><br />
              <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%#Bind("JobTitle") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="CompanyLabel" AssociatedControlID="CompanyTextBox" Text="Company" Font-Bold="true"/><br />
              <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%#Bind("Company") %>' />
            </td>
          </tr>
        </InsertItemTemplate>
      </asp:ListView>
=         
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Employees %>"
            SelectCommand="SELECT * FROM Employees"
            UpdateCommand="UPDATE [Employees] SET [EmployeeID] = @EmployeeID, [FirstName] = @FirstName, [LastName] = @LastName, [BusinessPhone] = @BusinessPhone, [EmailAddress] = @EmailAddress, [JobTitle] = @JobTitle, [Company] = @Company WHERE [EmployeeID] = @EmployeeID"            
            DeleteCommand="DELETE Employees WHERE EmployeeID=@EmployeeID" 
            InsertCommand="INSERT INTO [Employees] ([EmployeeID], [FirstName], [LastName], [BusinessPhone], [EmailAddress], [JobTitle], [Company]) VALUES (@EmployeeID, @FirstName, @LastName, @BusinessPhone, @EmailAddress, @JobTitle, @Company)">
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