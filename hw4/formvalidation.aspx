<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

protected void Page_Load(object sender, EventArgs e)
{
    lblMname.Text = txtFName.Text + " " + txtLName.Text;
    lblMuser.Text = txtUser.Text;
    lblMpass.Text = txtPassword.Text;
    lblMbirth.Text = ddlBirthday.SelectedItem.Text + " " + txtDay.Text + " " + txtYear.Text;
    lblMgender.Text = ddlGender.SelectedItem.Text;
    lblMemail.Text = txtEmail.Text;
    lblMloc.Text = ddlCountry.SelectedItem.Text;
}

protected void btnNextStep_Click(object sender, EventArgs e){
        if (cbTerms.Checked)
        {
           Panel1.Visible = true;

        }
        else
        {
            lblTermsProb.Visible = true;
        }
}


</script>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>VWP HTML5 Validation Form</title>

  <!-- Bootstrap core CSS -->
  <link href="css/yeti-bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

  <!-- Custom styles for this template -->
  <link href="css/yeti-custom.css" rel="stylesheet">
  <link href="css/intlTelInput.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
    .intl-tel-input 
    {
      width: 100%;
    }
  </style>
</head>

<body>
  <div class="wrapper">
    <div class="bmheader-bar">
      <img class="logo" src="img/bmlogo.png" alt="The Bluest Moon">
      <span class="signin-button">
        <a class="btn btn-primary btn-sm" href="error.html">Sign in</a>
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
          <div class="row">
            <div class="bulldogs">
              <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-2">
                  <img src="img/icons/1.png">
                </div>
                <div class="col-md-2">
                  <img src="img/icons/2.png">
                </div>
                <div class="col-md-2">
                  <img src="img/icons/3.png">
                </div>
                <div class="col-md-2">
                  <img src="img/icons/4.png">
                </div>
                <div class="col-md-2">
                  <img src="img/icons/5.png">
                </div>
                <div class="col-md-1"></div>
              </div>
            </div>
          </div>

          <!-- Info Block -->
          <div class="row">
            <div class="col-md-12">
              <h4>Take it all with you</h4>
              <p>Switch between devices, and pick up wherever you left off.</p>
            </div>
          </div>

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
                        <asp:Label ID="lblPassword" Text="Create a password" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtPassword" CssClass="form-control" type="password" runat="server" required="required" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Verify Password -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <asp:Label ID="lblConfirmPass" Text="Conform your password" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtConfirmPass" CssClass="form-control" type="password" runat="server" required="required" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Birthday Selectors -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-5">
                      <div class="form-group">
                        <asp:Label ID="lblBirthday" Text="Birthday" CssClass="control-label" runat="server" />
                        <asp:DropDownList ID="ddlBirthday" CssClass="form-control" required="required" runat="server">
                          <asp:ListItem>Month</asp:ListItem>
                          <asp:ListItem>January</asp:ListItem>
                          <asp:ListItem>February</asp:ListItem>
                          <asp:ListItem>March</asp:ListItem>
                          <asp:ListItem>April</asp:ListItem>
                          <asp:ListItem>May</asp:ListItem>
                          <asp:ListItem>June</asp:ListItem>
                          <asp:ListItem>July</asp:ListItem>
                          <asp:ListItem>August</asp:ListItem>
                          <asp:ListItem>September</asp:ListItem>
                          <asp:ListItem>October</asp:ListItem>
                          <asp:ListItem>November</asp:ListItem>
                          <asp:ListItem>December</asp:ListItem>
                        </asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <asp:Label ID="lblDay" Text="Day" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtDay" CssClass="form-control" runat="server" type="number" required="required" placeholder="Day" />
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <asp:Label ID="lblYear" Text="Year" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtYear" CssClass="form-control" runat="server" type="number" required="required" placeholder="Year" />
                      </div>
                    </div>
                  </div>
                </div>
              
                <!-- Gender Selectors -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="control-label">Gender</label>
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" required="required" runat="server">
                          <asp:ListItem>I am...</asp:ListItem>
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                          <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Phone Number -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="control-label">Mobile Phone</label><br />
                        <input class="form-control" required="required" id="mobile-number" type="tel">
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Current Email -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <asp:Label ID="lblEmail" Text="Your current email address" CssClass="control-label" runat="server" />
                        <asp:TextBox ID="txtEmail" CssClass="form-control" type="email" runat="server" required="required" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Location -->
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <asp:Label ID="lblCountry" Text="Location" CssClass="control-label" runat="server" />
                        <asp:DropDownList ID="ddlCountry" CssClass="form-control" required="required" runat="server">
                          <asp:ListItem>United States</asp:ListItem>
                          <asp:ListItem>Canada</asp:ListItem>
                          <asp:ListItem>Mexico</asp:ListItem>
                          <asp:ListItem>Millennium Falcon</asp:ListItem>
                          <asp:ListItem>The Internet</asp:ListItem>
                        </asp:DropDownList>
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
                  <asp:Button ID="btnNextStep" OnClick="btnNextStep_Click" CssClass="btn btn-primary btn-block" Text="Next Step" runat="server" />
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
    <asp:Panel ID="Panel1" runat="server" Visible="false">
      <div class="row">
        <div class="col-md-12">
          <table class="table">
            <tr>
                <td><b>Name: </b></td>
                <td><asp:Label ID="lblMname" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Username: </b></td>
                <td><asp:Label ID="lblMuser" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Password: </b></td>
                <td><asp:Label ID="lblMpass" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Birthday: </b></td>
                <td><asp:Label ID="lblMbirth" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Gender: </b></td>
                <td><asp:Label ID="lblMgender" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Current Email: </b></td>
                <td><asp:Label ID="lblMemail" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Location: </b></td>
                <td><asp:Label ID="lblMloc" Text="" runat="server" /></td>
            </tr>
        </table>
      </div>
    </div>
    </asp:Panel>
  </div><!-- /.container -->



  <!-- Bootstrap core JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/intlTelInput.js"></script>
  <script>
      $("#mobile-number").intlTelInput({
          //autoFormat: false,
          //autoHideDialCode: false,
          //defaultCountry: "jp",
          //nationalMode: true,
          //numberType: "MOBILE",
          //onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
          //preferredCountries: ['cn', 'jp'],
          //responsiveDropdown: true,
          utilsScript: "lib/libphonenumber/build/utils.js"
      });
  </script>
</body>
</html>