<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<script runat="server">

protected void btnSignIn_Click(object sender, EventArgs e)
{
    if (Page.IsValid)
        {
            DataView dataview = (DataView)members.Select(DataSourceSelectArguments.Empty);
            DataTable datatable = dataview.ToTable();

        if (datatable.Rows.Count > 1)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
  "alert('Opps!  Passwords are tricky - make sure you've got the right combination!');", true);
        }
        else
        {
                Response.Redirect("service.aspx");
        }
        }
}

</script>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>BM Sign In</title>

    <!-- Bootstrap core CSS -->
    <link href="css/yeti-bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/yeti-custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link href="css/signin.css" rel="stylesheet">

</head>

<body>

<asp:SqlDataSource
            ID="members"
            ConnectionString="<%$ ConnectionStrings:members %>"
            SelectCommand="SELECT Username, Password FROM members 
            WHERE (Username=@Username AND Password=@Password)"
            runat="server">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtUser"
                    PropertyName="Text" Name="Username" />
                <asp:ControlParameter ControlID="txtPass"
                    PropertyName="Text" Name="Password" />
            </SelectParameters>
        </asp:SqlDataSource>

    <div class="container">
        <div class="row">
            <div class="doggys">
                <div class="col-md-12">
                <img src="img/bmlogohead.png">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h1 class="SCSU">One account. All of Bluest Moon.</h1>
            </div>
        </div>

        <!-- Start the Form -->
        <div class="col-md-4 col-md-offset-4">
            <div class="well">
                <form ID="form1" runat="server">
                    <fieldset>

                        <!-- Profile Picture -->
                        <div class="row">
                            <div class="center-block">
                                <img class="profile-img"
                                src="img/photo.png" alt="">
                            </div>
                        </div>

                        <!-- Username Choice -->
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label-woz">Username</label>
                                        <asp:TextBox ID="txtUser" CssClass="form-control" runat="server" required="required" placeholder="Username" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Password Choice -->
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label-woz">Password</label>
                                        <asp:TextBox ID="txtPass" CssClass="form-control" type="password" runat="server" required="required" placeholder="Password" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Moving Right Along Then -->
                        <div class="col-md-12">
                            <asp:Button ID="btnSignIn" OnClick="btnSignIn_Click" CssClass="btn btn-primary btn-block" Text="Sign In" runat="server" />
                        </div>


                        <!-- Moving Right Along Then -->
                        <div class="col-md-12 space">
                            <a href="signup.aspx">Need Help?</a>
                        </div>

                    </fieldset>
                </form>
            </div>
            <div class="tUMD">
                <p><a href="signup.aspx">Sign up for a free account</a></p>
            </div>
        </div>
    </div><!-- /.container -->


  <!-- Bootstrap core JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

</body>
</html>

