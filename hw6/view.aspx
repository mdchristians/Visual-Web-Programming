<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

protected void Page_Load(object sender, EventArgs e)
{

}

protected void ListView_Sorting(object sender, ListViewSortEventArgs e)
{

}

// GridView Button
protected void btnGridView_Click(object sender, EventArgs e)
{
	 pnlGridView.Visible = true;
	 pnlDetailsView.Visible = false;
	 pnlFormView.Visible = false;
	 pnlRepeater.Visible = false;
	 pnlListView.Visible = false;
}

// DetailsView Button
protected void btnDetailsView_Click(object sender, EventArgs e)
{
	 pnlGridView.Visible = false;
	 pnlDetailsView.Visible = true;
	 pnlFormView.Visible = false;
	 pnlRepeater.Visible = false;
	 pnlListView.Visible = false;
}

// FormView Button
protected void btnFormView_Click(object sender, EventArgs e)
{
	 pnlGridView.Visible = false;
	 pnlDetailsView.Visible = false;
	 pnlFormView.Visible = true;
	 pnlRepeater.Visible = false;
	 pnlListView.Visible = false;
}

// Repeater Button
protected void btnRepeater_Click(object sender, EventArgs e)
{
	 pnlGridView.Visible = false;
	 pnlDetailsView.Visible = false;
	 pnlFormView.Visible = false;
	 pnlRepeater.Visible = true;
	 pnlListView.Visible = false;
}

// ListView Button
protected void btnListView_Click(object sender, EventArgs e)
{
	 pnlGridView.Visible = false;
	 pnlDetailsView.Visible = false;
	 pnlFormView.Visible = false;
	 pnlRepeater.Visible = false;
	 pnlListView.Visible = true;
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

<!-- SQL Data Source: GridView -->
<asp:SqlDataSource ID="srcGridView"
	 SelectCommand="SELECT * FROM Employees;"
	 ConnectionString="<%$ ConnectionStrings:Employees %>"
	 runat="server">
</asp:SqlDataSource>

<!-- SQL Data Source: DetailsView -->
<asp:SqlDataSource ID="srcDetailsView"
	 SelectCommand="SELECT * FROM Products;"
	 ConnectionString="<%$ ConnectionStrings:Products %>"
	 runat="server">
</asp:SqlDataSource>

<!-- SQL Data Source: FormView -->
<asp:SqlDataSource ID="srcFormView"
	 SelectCommand="SELECT * FROM Orders;"
	 ConnectionString="<%$ ConnectionStrings:Orders %>"
	 runat="server">
</asp:SqlDataSource>

<!-- SQL Data Source: Repeater -->
<asp:SqlDataSource ID="srcRepeater"
	 SelectCommand="SELECT * FROM OrderDetails;"
	 ConnectionString="<%$ ConnectionStrings:OrderDetails %>"
	 runat="server">
</asp:SqlDataSource>

<!-- SQL Data Source: ListView -->
<asp:SqlDataSource ID="srcListView"
	 SelectCommand="SELECT * FROM Employees;"
	 ConnectionString="<%$ ConnectionStrings:Employees %>"
	 runat="server">
</asp:SqlDataSource>

	<!-- Buttons -->
	<section class="dfilters">
		<div class="row row-centered">
			<div class="col-xs-12 col-centered">
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
					<div class="btn-group" role="group">
						<asp:Button ID="btnGridView" OnClick="btnGridView_Click" Text="View with GridView" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnDetailsView" OnClick="btnDetailsView_Click" Text="View with DetailsView" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnFormView" OnClick="btnFormView_Click" Text="View with FormView" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnRepeater" OnClick="btnRepeater_Click" Text="View with Repeater" CssClass="btn btn-default" runat="server" />
					</div>
					<div class="btn-group" role="group">
						<asp:Button ID="btnListView" OnClick="btnListView_Click" Text="View with ListView" CssClass="btn btn-default" runat="server" />
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Employees - GridView (Paging) -->
	<section class="dtables">
		  <div class="row row-centered">
				<div class="col-xs-12 col-centered">

					<!-- Employees - GridView (Paging) -->
					<asp:Panel ID= "pnlGridView" visible="false" runat="server">
						<asp:GridView 
							ID="GridView" 
							runat="server" 
							AutoGenerateColumns="False" 
							DataSourceID="srcGridView"
							AllowPaging="true"
							AllowSorting="true"
							CssClass="table table-striped table-bordered table-condensed"> 
							<Columns>
								<asp:BoundField DataField="EmployeeID" HeaderText="ID" SortExpression=""/>
								<asp:BoundField DataField="FirstName" HeaderText="First Name" />
								<asp:BoundField DataField="LastName" HeaderText="Last Name" />
								<asp:BoundField DataField="BusinessPhone" HeaderText="Phone" />
								<asp:BoundField DataField="EmailAddress" HeaderText="Email" />
								<asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
								<asp:BoundField DataField="Company" HeaderText="Company" />
							</Columns>
						</asp:GridView>
					</asp:Panel>

					<!-- Products - DetailsView -->
					<asp:Panel ID= "pnlDetailsView" visible="false" runat="server">
						<asp:DetailsView   
							ID="DetailsView"  
							runat="server"  
							DataSourceID="srcDetailsView"  
							AllowPaging="true"
							PagerStyle-CssClass="bs-pagination"
							PageSize="10"
							CssClass="table table-striped table-bordered table-condensed">  
							<Fields>  
								<asp:BoundField DataField="ProductID" HeaderText="ID" /> 
								<asp:BoundField DataField="ProductName" HeaderText="Product Name" />
								<asp:BoundField DataField="StandardCost" HeaderText="Standard Cost" />
								<asp:BoundField DataField="ListPrice" HeaderText="List Price" />
								<asp:BoundField DataField="QuantityPerUnit" HeaderText="Quantity Per Unit" />
								<asp:BoundField DataField="Category" HeaderText="Category" /> 
							</Fields>  
						</asp:DetailsView>
					</asp:Panel>

					<!-- Orders - FormView -->
					<asp:Panel ID= "pnlFormView" visible="false" runat="server">
						<asp:FormView ID="FormView1" 
							runat="server" 
							DataSourceID="srcFormView" 
							AllowPaging="True" 
							PagerStyle-CssClass="bs-pagination"
							PageSize="10"
							EnableViewState="False"
							CssClass="table table-striped table-bordered table-condensed">
							<ItemTemplate>                            
								<h3><%# Eval("Customer") %></h3>
								<hr />
								<table Class="table table-striped table-bordered table-condensed">
									<tr>
										<th>Order ID</th>
										<th>Employee</th>
										<th>Employee ID</th>
										<th>Customer</th>
										<th>Order Date</th>
										<th>Shipped Date</th>
										<th>Payment Type</th>
										<th>Paid Type</th>
									</tr>
									<tr>
										<td><%# Eval("OrderID") %></td>
										<td><%# Eval("Employee") %></td>
										<td><%# Eval("EmployeeID") %></td>
										<td><%# Eval("Customer") %></td>
										<td><%# Eval("OrderDate") %></td>
										<td><%# Eval("ShippedDate") %></td>
										<td><%# Eval("PaymentType") %></td>
										<td><%# Eval("PaidDate") %></td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:FormView>
					</asp:Panel>

					<!-- OrderDetails - Repeater -->
          <asp:Panel ID= "pnlRepeater" visible="false" runat="server">
            <asp:Repeater ID="Repeater" 
              runat="server" 
              DataSourceID="srcRepeater">
              <HeaderTemplate>
                <table Class="table table-striped table-bordered table-condensed">
                  <tr>
                    <th>Order Detail ID</th>
                    <th>Order ID</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Unit Price</th>
                    <th>Status</th>
                  </tr>
                </HeaderTemplate>

                <ItemTemplate>
                  <tr>
                    <td><asp:Label runat="server" ID="LblOrderDetailID" text='<%# Eval("OrderDetailID") %>' /></td>
                    <td><asp:Label runat="server" ID="LblOrderID" text='<%# Eval("OrderID") %>' /></td>
                    <td><asp:Label runat="server" ID="LblProductName" text='<%# Eval("ProductName") %>' /></td>
                    <td><asp:Label runat="server" ID="LblQuantity" text='<%# Eval("Quantity") %>' /></td>
                    <td><asp:Label runat="server" ID="LblUnitPrice" text='<%# Eval("UnitPrice") %>' /></td>
                    <td><asp:Label runat="server" ID="LblStatus" text='<%# Eval("Status") %>' /></td>
                  </tr>
                                 </ItemTemplate>

                                 <AlternatingItemTemplate>
                  <tr>
                    <td><asp:Label runat="server" ID="LblOrderDetailID" text='<%# Eval("OrderDetailID") %>' /></td>
                    <td><asp:Label runat="server" ID="LblOrderID" text='<%# Eval("OrderID") %>' /></td>
                    <td><asp:Label runat="server" ID="LblProductName" text='<%# Eval("ProductName") %>' /></td>
                    <td><asp:Label runat="server" ID="LblQuantity" text='<%# Eval("Quantity") %>' /></td>
                    <td><asp:Label runat="server" ID="LblUnitPrice" text='<%# Eval("UnitPrice") %>' /></td>
                    <td><asp:Label runat="server" ID="LblStatus" text='<%# Eval("Status") %>' /></td>
                  </tr>
                                 </AlternatingItemTemplate>

                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
            </asp:Repeater>
          </asp:Panel>

					 <!-- Employees - ListView -->
					<asp:Panel ID= "pnlListView" visible="false" runat="server">
						<asp:ListView ID="ListView" 
							runat="server" 
							DataSourceID="srcListView" 
							onsorting="ListView_Sorting">
							<LayoutTemplate>
								<table Class="table table-striped table-bordered table-condensed">
									<tr style="background-color:#E5E5FE">
										<th align="left"><asp:LinkButton ID="lnkEmpID" runat="server" CommandName="Sort" CommandArgument="EmployeeID">Employee ID</asp:LinkButton></th>
										<th align="left"><asp:LinkButton ID="lnkComp" runat="server" CommandName="Sort" CommandArgument="Company">Company</asp:LinkButton></th>
										<th align="left"><asp:LinkButton ID="lnkFName" runat="server" CommandName="Sort" CommandArgument="FirstName">First Name</asp:LinkButton></th>
										<th align="left"><asp:LinkButton ID="lnkLName" runat="server" CommandName="Sort" CommandArgument="LastName">Last Name</asp:LinkButton></th>
										<th align="left"><asp:LinkButton ID="lnkEMail" runat="server" CommandName="Sort" CommandArgument="EmailAddress">Email Address</asp:LinkButton></th>
										<th align="left"><asp:LinkButton ID="lnkJob" runat="server" CommandName="Sort" CommandArgument="JobTitle">Job Title</asp:LinkButton></th>
										<th align="left"><asp:LinkButton ID="lnkPhone" runat="server" CommandName="Sort" CommandArgument="BusinessPhone">Business Phone</asp:LinkButton></th>
										<th></th>
									</tr>
									<tr id="itemPlaceholder" runat="server"></tr>
								</table>
								<asp:DataPager ID="DataPager" runat="server" PageSize="5">
								<Fields>
									<asp:NumericPagerField ButtonCount="2" />
								</Fields>
							</asp:DataPager>    
						</LayoutTemplate>
						<ItemTemplate>
							<tr>
								<td><asp:Label runat="server" ID="lblEmpID"><%# Eval("EmployeeID") %></asp:Label></td>
								<td><asp:Label runat="server" ID="lblComp"><%# Eval("Company") %></asp:Label></td>
								<td><asp:Label runat="server" ID="lblFName"><%# Eval("FirstName") %></asp:Label></td>
								<td><asp:Label runat="server" ID="lblLName"><%# Eval("LastName") %></asp:Label></td>
								<td><asp:Label runat="server" ID="lblEMail"><%# Eval("EmailAddress") %></asp:Label></td>
								<td><asp:Label runat="server" ID="lblJob"><%# Eval("JobTitle") %></asp:Label></td>
								<td><asp:Label runat="server" ID="lblPhone"><%# Eval("BusinessPhone") %></asp:Label></td>
								<td></td>
							</tr>
						</ItemTemplate>
					</asp:ListView>
				</asp:Panel>
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