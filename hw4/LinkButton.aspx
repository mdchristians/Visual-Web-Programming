<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server"> 

    protected void afImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/af-elephants.jpg";
        img2.Src = "img/af-pyramids.jpg";
        img3.Src = "img/af-victoria.jpg";
    }

    protected void anImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/an-house.jpg";
        img2.Src = "img/an-seal.jpg";
        img3.Src = "img/an-water.jpg";
    }

    protected void asImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/as-great.jpg";
        img2.Src = "img/as-taj.jpg";
        img3.Src = "img/as-tokyo.jpg";
    }

    protected void auImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/au-beach.jpg";
        img2.Src = "img/au-sydney.jpg";
        img3.Src = "img/au-outback.jpg";
    }

    protected void euImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/eu-coll.jpg";
        img2.Src = "img/eu-scan.jpg";
        img3.Src = "img/eu-tower.jpg";
    }

    protected void naImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/na-duluth.jpg";
        img2.Src = "img/na-hockey.jpg";
        img3.Src = "img/na-nyskyline.jpg";
    }

    protected void saImg_Click(object sender, EventArgs e)
    {
        img1.Src = "img/sa-christ.jpg";
        img2.Src = "img/sa-machu.jpg";
        img3.Src = "img/sa-rain.jpg";
    }

</script>

<html class="full" lang="en">
<!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MC VWP HW4P01</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/full.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<form id="form1" runat="server">

<div id="topheader">
    <div class="container">
        <div class="row">
            <center>
                <h1 class="topheadertext">Travel The World</h1>
            </center>
        </div>
    </div>
</div>

<div id="worldbtn">
    <div class="container">
        <div class="row center-block" style="margin:20px auto;">
            <div class="col-md-2 center-block text-center">
                <asp:LinkButton ID="btnAfrica" runat="server" CssClass="btn btn-primary" onclick='afImg_Click' Text="Africa" />
            </div>
            <div class="col-md-2 center-block text-center">
                <asp:LinkButton ID="btnAN" runat="server" CssClass="btn btn-primary" onclick="anImg_Click" Text="Antarctica" />
            </div>
            <div class="col-md-1 center-block text-center">
                <asp:LinkButton ID="btnAsia" runat="server" onclick="asImg_Click" CssClass="btn btn-primary" Text="Asia" />
            </div>
            <div class="col-md-2 center-block text-center">
                <asp:LinkButton ID="btnAustralia" runat="server" CssClass="btn btn-primary" onclick="auImg_Click" Text="Australia" />
            </div>
            <div class="col-md-1 center-block text-center">
                <asp:LinkButton ID="btnEurope" runat="server" CssClass="btn btn-primary" onclick="euImg_Click" Text="Europe" />
            </div>
            <div class="col-md-2 center-block text-center">
                <asp:LinkButton ID="btnNA" runat="server" CssClass="btn btn-primary" onclick="naImg_Click" Text="North America" />
            </div>
            <div class="col-md-2 center-block text-center">
                <asp:LinkButton ID="btnSA" runat="server" CssClass="btn btn-primary" onclick="saImg_Click" Text="South America" />
            </div>
        </div>
    </div>
</div>

<div id="footer">
    <div class="container">
        <div class="row">
            <br>
              <div class="col-md-4">
                <center>
                  <img id="img1" runat="server" src="" CssClass="img-rounded" alt="">
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img id="img2" runat="server" src="" CssClass="img-rounded" alt="">
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img id="img3" runat="server" src="" CssClass="img-rounded" alt="">
                </center>
              </div>
            </div>
            <div class="row">
            <p><center><p class="footertext">Copyright 2014 - Matt Christians</p></center></p>
        </div>
    </div>
</div>
</form>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>