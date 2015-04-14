<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName != "Insert") return;
        var strEmployeeID = ((TextBox)
            GridView1.FooterRow.FindControl("txtEID")).Text;

        var strFirstName = ((TextBox)
            GridView1.FooterRow.FindControl("txtFname")).Text;

        var strLastName = ((TextBox)
            GridView1.FooterRow.FindControl("txtLname")).Text;

        var strBusinessPhone = ((TextBox)
            GridView1.FooterRow.FindControl("txtBphone")).Text;

        var strEmailAddress = ((TextBox)
            GridView1.FooterRow.FindControl("txtEaddress")).Text;

        var strJobTitle = ((TextBox)
            GridView1.FooterRow.FindControl("txtJtitle")).Text;

        var strCompany = ((TextBox)
            GridView1.FooterRow.FindControl("txtEcompany")).Text;



        //SqlDataSource1.InsertParameters.Clear();
        //SqlDataSource1.InsertParameters.Add("EmployeeID", strEmployeeID);
        //SqlDataSource1.InsertParameters.Add("FirstName", strFirstName);
        //SqlDataSource1.InsertParameters.Add("LastName", strLastName);
        //SqlDataSource1.InsertParameters.Add("BusinessPhone", strBusinessPhone);
        //SqlDataSource1.InsertParameters.Add("EmailAddress", strEmailAddress);
        //SqlDataSource1.InsertParameters.Add("JobTitle", strJobTitle);
        //SqlDataSource1.InsertParameters.Add("Company", strCompany);

        SqlDataSource1.InsertParameters["EmployeeID"].DefaultValue = strEmployeeID;
        SqlDataSource1.InsertParameters["FirstName"].DefaultValue = strFirstName;
        SqlDataSource1.InsertParameters["LastName"].DefaultValue = strLastName;
        SqlDataSource1.InsertParameters["BusinessPhone"].DefaultValue = strBusinessPhone;
        SqlDataSource1.InsertParameters["EmailAddress"].DefaultValue = strEmailAddress;
        SqlDataSource1.InsertParameters["JobTitle"].DefaultValue = strJobTitle;
        SqlDataSource1.InsertParameters["Company"].DefaultValue = strCompany;

        if (!Page.IsValid) return;

        SqlDataSource1.Insert();
        lblMessage.Text = "Successful";
    }

</script>

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
<form id="HtmlForm" runat="server">
  <!-- Buttons -->
  <section class="dfilters">
    <div class="row row-centered">
      <div class="col-xs-12 col-centered">

    <asp:GridView ID="GridView1" runat="server" 
        AllowPaging="True" 
        AllowSorting="True" 
        PageSize="5"
        AutoGenerateColumns="False" 
        DataKeyNames="EmployeeID" 
        DataSourceID="SqlDataSource1"
        ShowFooter="True"
        CssClass="table table-striped table-bordered table-condensed"  
        OnRowCommand="GridView1_RowCommand">
        
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" /> 
                    <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete"
                        Text="Delete" /> 
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update"
                        Text="Update" /> 
                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel"
                        Text="Cancel" /> 
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert"
                        Text="Insert" /> 
                </FooterTemplate>
            </asp:TemplateField>
          
    <asp:TemplateField HeaderText="Employee ID" SortExpression="EmployeeID">
    <ItemTemplate>
      <asp:Label ID="lblEmployeeID" runat="server" Text='<%#Eval("EmployeeID") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtEmployeeID" runat="server" Text='<%#Bind("EmployeeID") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtEID" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>
    
  <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
    <ItemTemplate>
      <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("FirstName") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtFirstName" runat="server" Text='<%#Bind("FirstName") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtFname" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>

  <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
    <ItemTemplate>
      <asp:Label ID="lblLastName" runat="server" Text='<%#Eval("LastName") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtLastName" runat="server" Text='<%#Bind("LastName") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtLname" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>

  <asp:TemplateField HeaderText="EmailAddress" SortExpression="EmailAddress">
    <ItemTemplate>
      <asp:Label ID="lblEmailAddress" runat="server" Text='<%#Eval("EmailAddress") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtEmailAddress" runat="server" Text='<%#Bind("EmailAddress") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtEaddress" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>

  <asp:TemplateField HeaderText="BusinessPhone" SortExpression="BusinessPhone">
    <ItemTemplate>
      <asp:Label ID="lblBusinessPhone" runat="server" Text='<%#Eval("BusinessPhone") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtBusinessPhone" runat="server" Text='<%#Bind("BusinessPhone") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtBphone" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>

  <asp:TemplateField HeaderText="JobTitle" SortExpression="JobTitle">
    <ItemTemplate>
      <asp:Label ID="lblJobTitle" runat="server" Text='<%#Eval("JobTitle") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtJobTitle" runat="server" Text='<%#Bind("JobTitle") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtJtitle" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>

  <asp:TemplateField HeaderText="Company" SortExpression="Company">
    <ItemTemplate>
      <asp:Label ID="lblCompany" runat="server" Text='<%#Eval("Company") %>'>
      </asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
      <asp:TextBox ID="txtCompany" runat="server" Text='<%#Bind("Company") %>'>
      </asp:TextBox>
    </EditItemTemplate>
    <FooterTemplate>
      <asp:TextBox ID="txtEcompany" runat="server">
      </asp:TextBox>
    </FooterTemplate>
  </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Employees %>" 
        SelectCommand="SELECT * FROM [Employees]"
        DeleteCommand="DELETE FROM Employees WHERE EmployeeID=@EmployeeID"
        UpdateCommand="UPDATE Employees SET FirstName=@FirstName,LastName=@LastName,BusinessPhone=@BusinessPhone,EmailAddress=@EmailAddress,JobTitle=@JobTitle,Company=@Company WHERE EmployeeID=@EmployeeID"
        InsertCommand="INSERT INTO Employees (EmployeeID,FirstName,LastName,BusinessPhone,EmailAddress,JobTitle,Company) values (@EmployeeID,@FirstName,@LastName,@BusinessPhone,@EmailAddress,@JobTitle,@Company)">
        
        <InsertParameters>
            <asp:Parameter Name="EmployeeID" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="BusinessPhone" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
        </InsertParameters>
        
        <UpdateParameters>
            <asp:Parameter Name="EmployeeID" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="BusinessPhone" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
        </UpdateParameters>
        
        <DeleteParameters>
            <asp:Parameter Name="EmployeeID" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblMessage" runat="server" 
           Font-Bold="True"></asp:Label><br />
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