<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server"> 

  public void imgMap_Click (Object sender, ImageMapEventArgs e)
  {

    if (e.PostBackValue.Contains("afMap"))
    {
          img1.Src = "img/af-elephants.jpg";
          img2.Src = "img/af-pyramids.jpg";
          img3.Src = "img/af-victoria.jpg";
    }

    else if (e.PostBackValue.Contains("anMap"))
    {
          img1.Src = "img/an-house.jpg";
          img2.Src = "img/an-seal.jpg";
          img3.Src = "img/an-water.jpg";
    }

    else if (e.PostBackValue.Contains("asMap"))
    {
          img1.Src = "img/as-great.jpg";
          img2.Src = "img/as-taj.jpg";
          img3.Src = "img/as-tokyo.jpg";
    }

    else if (e.PostBackValue.Contains("auMap"))
    {
          img1.Src = "img/au-beach.jpg";
          img2.Src = "img/au-sydney.jpg";
          img3.Src = "img/au-outback.jpg";
    }

    else if (e.PostBackValue.Contains("euMap"))
    {
          img1.Src = "img/eu-coll.jpg";
          img2.Src = "img/eu-scan.jpg";
          img3.Src = "img/eu-tower.jpg";
    }

    else if (e.PostBackValue.Contains("naMap"))
    {
          img1.Src = "img/na-duluth.jpg";
          img2.Src = "img/na-hockey.jpg";
          img3.Src = "img/na-nyskyline.jpg";
    }

    else if (e.PostBackValue.Contains("saMap"))
    {
          img1.Src = "img/sa-christ.jpg";
          img2.Src = "img/sa-machu.jpg";
          img3.Src = "img/sa-rain.jpg";
    }

     else
    {
          img1.Src = "";
          img2.Src = "";
          img3.Src = "";
    }

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
            <div class="col-md-12 center-block text-center">
  
  <asp:ImageMap
  	OnClick="imgMap_Click"
  	ImageUrl="img/continents.png"
  	HotSpotMode=PostBack
  	runat="server">

  <asp:CircleHotSpot
    PostBackValue="auMap"
    X="475"
    Y="194"
    Radius="33"
    HotSpotMode="Postback" />

 <asp:RectangleHotSpot
    PostBackValue="anMap"
    Left="133"
    Top="286"
    Right="439"
    Bottom="258"
    HotSpotMode="Postback" />

  <asp:PolygonHotSpot 
    PostBackValue="afMap"
    Coordinates="245,105,244,120,249,129,258,135,267,134,277,133,279,145,285,156,288,172,288,184,293,195,297,204,310,202,319,189,323,180,329,176,335,185,341,187,347,177,349,166,333,151,336,144,344,135,348,125,332,120,327,111,323,104,321,97,315,88,297,86,287,85,283,79,271,78,258,85"
    HotSpotMode="Postback" />

  <asp:PolygonHotSpot 
    PostBackValue="asMap"
    Coordinates="347,75,345,67,341,56,347,53,347,42,344,28,343,20,358,19,370,15,380,13,391,13,403,20,417,20,424,22,432,20,443,22,449,22,464,24,474,23,481,27,493,29,490,36,479,41,485,52,467,59,467,65,473,69,477,77,474,84,467,90,455,92,456,99,458,113,463,124,465,134,486,151,462,151,444,150,448,158,441,157,428,151,395,122,395,127,389,128,360,100,351,94,342,92,350,101,358,107,353,116,339,119,331,109,326,97,323,89,324,80,317,79,310,78,308,71,334,71"
    HotSpotMode="Postback" />

  <asp:PolygonHotSpot 
    PostBackValue="euMap"
    Coordinates="314,62,323,62,332,67,338,68,338,62,338,54,342,49,342,41,340,33,339,26,335,15,323,24,312,23,303,20,301,8,288,8,292,26,286,33,279,36,267,42,255,28,245,30,262,44,259,49,262,54,267,61,263,66,256,70,256,77,265,78,283,74,290,77,302,79"
    HotSpotMode="Postback" />

  <asp:PolygonHotSpot 
    PostBackValue="naMap"
    Coordinates="142,14,140,20,130,22,122,24,112,25,98,21,92,22,84,26,81,31,71,34,69,39,78,41,93,38,98,43,100,52,100,57,95,65,92,69,92,75,94,81,96,91,98,97,103,102,106,107,114,114,123,117,130,120,140,130,146,126,161,109,158,79,164,72,170,69,177,68,185,67,185,58,189,52,196,60,197,51,194,42,196,38,195,31,198,23,196,18,204,16,211,24,211,34,218,35,229,29,237,24,247,19,255,12,256,6,202,5"
    HotSpotMode="Postback" />

  <asp:PolygonHotSpot 
    PostBackValue="saMap"
    Coordinates="160,122,153,123,149,130,145,139,142,147,145,160,151,169,157,173,160,182,160,187,161,197,161,209,165,222,171,233,179,239,181,215,190,203,198,192,206,183,210,170,211,157,186,132"
    HotSpotMode="Postback" />

</asp:ImageMap>




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