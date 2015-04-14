<%@ Page Title="" Language="C#" MasterPageFile="continentMaster.master" %>

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

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/full.css" rel="stylesheet">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>