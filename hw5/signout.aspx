<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

protected void btnSignIn_Click(object sender, EventArgs e)
{
    Response.Redirect("signin.aspx");
}

protected void btnServices_Click(object sender, EventArgs e)
{
    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
  "alert('You need to sign in to your account before accessing your account services.  Please sign in first.');", true);
}

</script>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>BM Sign Out</title>

    <!-- Bootstrap core CSS -->
    <link href="css/yeti-bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/yeti-custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link href="css/signin.css" rel="stylesheet">

</head>

<body>

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
                <h1 class="SCSU">Thank you</h1>
                <h3 class="SCSU">You have successfully signed out</h3>
            </div>
        </div>

        <!-- Start the Form -->
        <div class="col-md-6 col-md-offset-3">
                <form ID="form1" runat="server">
                    <fieldset>

                        <!-- First & Last Name -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-6">
                      <asp:Button ID="btnSignIn" OnClick="btnSignIn_Click" CssClass="btn btn-primary btn-block" Text="Sign In" runat="server" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnServices" OnClick="btnServices_Click" CssClass="btn btn-primary btn-block" Text="Account Services" runat="server" />
                    </div>
                  </div>
                </div>

                    </fieldset>
                </form>
            </div>

    </div><!-- /.container -->


  <!-- Bootstrap core JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

</body>
</html>

