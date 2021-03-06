<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<script runat="server">

protected void btnSignUp_Click(object sender, EventArgs e)
{
  if (cbTerms.Checked)
  {
    srcMembers.Insert();
    Response.Redirect("service.aspx");
  }

  else
  {
    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
  "alert('Make sure all the fields are filled out correctly and that your passwords both match!');", true);
  }

}

</script>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Bluest Moon Registration</title>

  <!-- Bootstrap core CSS -->
  <link href="css/yeti-bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

  <!-- Custom styles for this template -->
  <link href="css/yeti-custom.css" rel="stylesheet">
</head>

<body>

<asp:SqlDataSource ID="srcMembers"
                InsertCommand="insert into members
                    values (@Username, @FName, @LName, @Password)"
                
                ConnectionString="<%$ ConnectionStrings:members %>"
                runat="server">

                <InsertParameters>
                    <asp:FormParameter Name="FName" FormField="txtFName" />
                    <asp:FormParameter Name="LName" FormField="txtLName" />
                    <asp:FormParameter Name="Username" FormField="txtUser" />
                    <asp:FormParameter Name="Password" FormField="txtPass" />
                </InsertParameters>
            </asp:SqlDataSource>

  <div class="wrapper">
    <div class="bmheader-bar">
      <img class="logo" src="img/bmlogo.png" alt="The Bluest Moon">
      <span class="signin-button">
        <a class="btn btn-primary btn-sm" href="signin.aspx">Sign in</a>
      </span>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h1 class="UMD">Create your Bluest Moon Account</h1>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        
        <!-- Start the Info -->
        <div class="col-md-6 UMD">
          <h4>One account is all you need</h4>
          <p>A single username and password gets you into everything Bluest Moon.</p>

          <!-- Info Block -->
          <div class="row">
            <div class="dogs">
              <div class="col-md-12">
                <img src="img/BMcomp.png">
              </div>
            </div>
          </div>
        </div>
        <!-- End Left Side! -->

        <!-- Start the Form -->
        <div class="col-md-6">
          <div class="well">
            <form ID="form1" runat="server">
              <fieldset>

                <!-- First & Last Name -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <asp:Label ID="lblFName" Text="First Name" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtFName" CssClass="form-control" runat="server" required="required" placeholder="First" />
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <asp:Label ID="lblLName" Text="Last Name" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtLName" CssClass="form-control" runat="server" required="required" placeholder="Last" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Username Choice -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <asp:Label ID="lblUser" Text="Choose your username" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtUser" CssClass="form-control-matt" runat="server" required="required" placeholder="@gmail.com" />
                        <a href="error.html">I prefer to use my current email address</a>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Password Choice -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <asp:Label ID="lblPass" Text="Create a password" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtPass" CssClass="form-control" type="password" runat="server" required="required" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Verify Password -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <asp:Label ID="lblConPass" Text="Conform your password" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtConPass" CssClass="form-control" type="password" runat="server" required="required" />
                        <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPass"
                        ControlToValidate="txtConPass" runat="server" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- The Small Text -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <div class="checkbox">
                          <asp:Label ID="lblTerms" CssClass="control-label" runat="server" />
                          <asp:CheckBox ID="cbTerms" runat="server" /> I agree to the Bluest Moon <a href="error.html">Terms of Service</a> and <a href="error.html">Privacy Policy</a>
                          </label><br /><br />
                          <asp:Label ID="lblTermsProb" Visible="false" Text="In order to use our services, you must agree to Bluest Moon's Terms of Service." CssClass="control-label" runat="server" />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Moving Right Along Then -->
                <div class="col-md-12">
                  <asp:Button ID="btnSignUp" OnClick="btnSignUp_Click" CssClass="btn btn-primary btn-block" Text="Sign Up" runat="server" />
                </div>
              </fieldset>
            </form>
          </div>
          
          <!-- More Small Print -->
          <div class="col-md-12">
            <p class="UMD"><a href="error.html">Learn more</a> about why we ask for this information.</p>
          </div>
        </div>
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