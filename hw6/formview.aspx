<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  void EmployeesGridView_OnSelectedIndexChanged(Object sender, EventArgs e)
  {
    EmployeeDetailsSqlDataSource.SelectParameters["EmployeeID"].DefaultValue = 
      EmployeesGridView.SelectedValue.ToString();
    EmployeeFormView.DataBind();
  }

  void EmployeeFormView_ItemUpdated(Object sender, FormViewUpdatedEventArgs e)
  {
    EmployeesGridView.DataBind();
  }

  void EmployeeFormView_ItemDeleted(Object sender, FormViewDeletedEventArgs e)
  {
    EmployeesGridView.DataBind();
  }

  void EmployeeDetailsSqlDataSource_OnInserted(Object sender, SqlDataSourceStatusEventArgs e)
  {
    System.Data.Common.DbCommand command = e.Command;    

    EmployeeDetailsSqlDataSource.SelectParameters["EmployeeID"].DefaultValue = 
      command.Parameters["@EmployeeID"].Value.ToString();

    EmployeesGridView.DataBind();
    EmployeeFormView.DataBind();
  }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
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

        <table>

          <tr>
            <td>
              <asp:GridView ID="EmployeesGridView" 
                DataSourceID="EmployeesSqlDataSource" 
                AutoGenerateColumns="false"
                DataKeyNames="EmployeeID"
                AllowPaging="True" 
                PageSize="10"
                CssClass="table table-striped table-bordered table-condensed" 
                OnSelectedIndexChanged="EmployeesGridView_OnSelectedIndexChanged"
                RunAt="Server">

                <HeaderStyle backcolor="Navy"
                  forecolor="White" />

                <Columns>

                  <asp:ButtonField Text="Details..."
                    HeaderText="Show<BR>Details"
                    CommandName="Select"/>  

                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" sortExpression="EmployeeID" />  
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />  
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />  
                <asp:BoundField DataField="BusinessPhone" HeaderText="BusinessPhone" SortExpression="BusinessPhone" />  
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />  
                <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />  
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />

                </Columns>

              </asp:GridView>

            </td>

            <td valign="top">

              <asp:FormView ID="EmployeeFormView"
                DataSourceID="EmployeeDetailsSqlDataSource"
                DataKeyNames="EmployeeID"     
                Gridlines="Both" 
                OnItemUpdated="EmployeeFormView_ItemUpdated"
                OnItemDeleted="EmployeeFormView_ItemDeleted"      
                RunAt="server">

                <HeaderStyle backcolor="Navy"
                  forecolor="White"/>

                <RowStyle backcolor="White"/>         

                <EditRowStyle backcolor="LightCyan"/>

                <ItemTemplate>
                  <table>
                    <tr><td align="right"><b>Employee ID:</b></td><td><%# Eval("EmployeeID") %></td></tr>
                    <tr><td align="right"><b>First Name:</b></td> <td><%# Eval("FirstName") %></td></tr>
                    <tr><td align="right"><b>Last Name:</b></td>  <td><%# Eval("LastName") %></td></tr>
                    <tr><td align="right"><b>BusinessPhone:</b></td><td><%# Eval("BusinessPhone") %></td></tr>
                    <tr><td align="right"><b>EmailAddress:</b></td> <td><%# Eval("EmailAddress") %></td></tr>
                    <tr><td align="right"><b>JobTitle:</b></td>  <td><%# Eval("JobTitle") %></td></tr>
                    <tr><td align="right"><b>Company:</b></td><td><%# Eval("Company") %></td></tr>
                    <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="EditButton"
                                        Text="Edit"
                                        CommandName="Edit"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="NewButton"
                                        Text="New"
                                        CommandName="New"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="DeleteButton"
                                        Text="Delete"
                                        CommandName="Delete"
                                        RunAt="server"/>
                      </td>
                    </tr>
                  </table>                 
                </ItemTemplate>

                <EditItemTemplate>
                  <table>
                    <tr><td align="right"><b>Employee ID:</b></td><td><%# Eval("EmployeeID") %></td></tr>

                    <tr><td align="right"><b>First Name:</b></td>
                        <td><asp:TextBox ID="EditFirstNameTextBox" 
                                         Text='<%# Bind("FirstName") %>' 
                                         RunAt="Server" /></td></tr>

                    <tr><td align="right"><b>Last Name:</b></td>
                        <td><asp:TextBox ID="EditLastNameTextBox" 
                                         Text='<%# Bind("LastName") %>' 
                                         RunAt="Server" /></td></tr>
                    <tr>
                    <tr><td align="right"><b>Business Phone:</b></td>
                        <td><asp:TextBox ID="EditBusinessPhoneTextBox" 
                                         Text='<%# Bind("BusinessPhone") %>' 
                                         RunAt="Server" /></td></tr>
                    <tr>
                    <tr><td align="right"><b>Email Address:</b></td>
                        <td><asp:TextBox ID="EditEmailAddressTextBox" 
                                         Text='<%# Bind("EmailAddress") %>' 
                                         RunAt="Server" /></td></tr>
                    <tr>
                    <tr><td align="right"><b>Job Title:</b></td>
                        <td><asp:TextBox ID="EditJobTitleTextBox" 
                                         Text='<%# Bind("JobTitle") %>' 
                                         RunAt="Server" /></td></tr>
                    <tr>
                    <tr><td align="right"><b>Company:</b></td>
                        <td><asp:TextBox ID="EditCompanyTextBox" 
                                         Text='<%# Bind("Company") %>' 
                                         RunAt="Server" /></td></tr>
                    <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="UpdateButton"
                                        Text="Update"
                                        CommandName="Update"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="CancelUpdateButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                      </td>
                    </tr>
                  </table>                 
                </EditItemTemplate>

                <InsertItemTemplate>
                  <table>
                      <tr><td align="right"><b>Employee ID:</b></td>
                        <td><asp:TextBox ID="InsertEmployeeIDTextBox" 
                                         Text='<%# Bind("EmployeeID") %>' 
                                         RunAt="Server" /></td></tr>
                    <tr><td align="right"><b>First Name:</b></td>
                        <td><asp:TextBox ID="InsertFirstNameTextBox" 
                                         Text='<%# Bind("FirstName") %>' 
                                         RunAt="Server" /></td></tr>

                    <tr><td align="right"><b>Last Name:</b></td>
                        <td><asp:TextBox ID="InsertLastNameTextBox" 
                                         Text='<%# Bind("LastName") %>' 
                                         RunAt="Server" /></td></tr>

                    <tr>
                    <tr><td align="right"><b>Business Phone:</b></td>
                        <td><asp:TextBox ID="InsertBusinessPhoneTextBox" 
                                         Text='<%# Bind("BusinessPhone") %>' 
                                         RunAt="Server" /></td></tr>

                    <tr>
                    <tr><td align="right"><b>Email Address:</b></td>
                        <td><asp:TextBox ID="InsertEmailAddressTextBox" 
                                         Text='<%# Bind("EmailAddress") %>' 
                                         RunAt="Server" /></td></tr>

                    <tr>
                    <tr><td align="right"><b>Job Title:</b></td>
                        <td><asp:TextBox ID="InsertJobTitleTextBox" 
                                         Text='<%# Bind("JobTitle") %>' 
                                         RunAt="Server" /></td></tr>

                    <tr>
                    <tr><td align="right"><b>Company:</b></td>
                        <td><asp:TextBox ID="InsertCompanyTextBox" 
                                         Text='<%# Bind("Company") %>' 
                                         RunAt="Server" /></td></tr>
                    
                    <tr><td colspan="2">
                        <asp:LinkButton ID="InsertButton"
                                        Text="Insert"
                                        CommandName="Insert"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="CancelInsertButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                      </td>
                    </tr>
                  </table>                 
                </InsertItemTemplate>

              </asp:FormView>

            </td>

          </tr>

        </table>

        <asp:sqlDataSource ID="EmployeesSqlDataSource"  
          selectCommand="SELECT * FROM Employees" 
          connectionstring="<%$ ConnectionStrings:Employees %>" 
          RunAt="server">
        </asp:sqlDataSource>

        <asp:sqlDataSource ID="EmployeeDetailsSqlDataSource" 
          SelectCommand="SELECT * FROM Employees WHERE EmployeeID = @EmployeeID"
          InsertCommand="INSERT INTO [Employees] ([EmployeeID], [FirstName], [LastName], [BusinessPhone], [EmailAddress], [JobTitle], [Company]) VALUES (@EmployeeID, @FirstName, @LastName, @BusinessPhone, @EmailAddress, @JobTitle, @Company)" 
          UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [BusinessPhone] = @BusinessPhone, [EmailAddress] = @EmailAddress, [JobTitle] = @JobTitle, [Company] = @Company WHERE [EmployeeID] = @EmployeeID"
          DeleteCommand="DELETE Employees WHERE EmployeeID=@EmployeeID"
          ConnectionString="<%$ ConnectionStrings:Employees %>"
          OnInserted="EmployeeDetailsSqlDataSource_OnInserted"
          RunAt="server">

          <SelectParameters>
            <asp:Parameter Name="EmployeeID" Type="String" DefaultValue="0" />
          </SelectParameters>

        </asp:sqlDataSource>

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