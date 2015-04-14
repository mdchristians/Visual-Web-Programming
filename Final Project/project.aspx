<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<script runat="server">

protected void btnOverview_Click(object sender, EventArgs e)
{

    pnlOverview.Visible = true;
    pnlHome.Visible = false;
    pnlNews.Visible = false;
    pnlArticle.Visible = false;
    pnlTeams.Visible = false;
    pnlStats.Visible = false;
}

protected void btnHome_Click(object sender, EventArgs e)
{

    pnlOverview.Visible = false;
    pnlHome.Visible = true;
    pnlNews.Visible = false;
    pnlArticle.Visible = false;
    pnlTeams.Visible = false;
    pnlStats.Visible = false;
}

protected void btnNews_Click(object sender, EventArgs e)
{

    pnlOverview.Visible = false;
    pnlHome.Visible = false;
    pnlNews.Visible = true;
    pnlArticle.Visible = false;
    pnlTeams.Visible = false;
    pnlStats.Visible = false;
}

protected void btnArticle_Click(object sender, EventArgs e)
{

    pnlOverview.Visible = false;
    pnlHome.Visible = false;
    pnlNews.Visible = false;
    pnlArticle.Visible = true;
    pnlTeams.Visible = false;
    pnlStats.Visible = false;
}

protected void btnTeams_Click(object sender, EventArgs e)
{

    pnlOverview.Visible = false;
    pnlHome.Visible = false;
    pnlNews.Visible = false;
    pnlArticle.Visible = false;
    pnlTeams.Visible = true;
    pnlStats.Visible = false;
}

protected void btnStats_Click(object sender, EventArgs e)
{

    pnlOverview.Visible = false;
    pnlHome.Visible = false;
    pnlNews.Visible = false;
    pnlArticle.Visible = false;
    pnlTeams.Visible = false;
    pnlStats.Visible = true;
}

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="VWP Project Final Website">
    <meta name="author" content="Matt Christians">

    <title>IHL</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/minimit.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Team Dropdown Menu Script -->
    <script>

        $(document).ready(function(){
            $(".dropdown").hover(            
                function() {
                    $('.dropdown-menu', this).stop( true, false ).slideDown("fast");
                    $(this).toggleClass('open');        
                },
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                    $(this).toggleClass('open');       
                }
                );
        });

    </script>

    <!-- Begin Nav Container -->
    <div class="navbar-wrapper">
        <div class="container">

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
                        <a class="navbar-brand" href="index.html">Intergalactic Hockey League</a>
                    </div>

                    <!-- menu section -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="news.html">News</a></li>
                            <li class="dropdown mega-dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Teams <span class="caret"></span></a>       
                                <div class="dropdown-menu mega-dropdown-menu">
                                    <div class="container">
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane active">
                                                <ul class="nav-list list-inline">
                                                    <li><a href="roster.html"><img src="img/nav/admirals.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/chiefs.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/emperors.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/force.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/raiders.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/rebels.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/tatooine.jpg"></a></li>
                                                    <li><a href="roster.html"><img src="img/nav/wampas.jpg"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>                   
                                </div>        
                            </li>
                            <li><a href="stats.aspx">Stats</a></li>
                            <li><a href="project.aspx">Project Guidelines</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>

    <form ID="form1" runat="server">

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Project Guidelines & Overview</h1>
            </div>
        </div>

        <!-- Content Row -->
        <div class="row">

            <!-- Display ASP.NET Panels that switch in/out website details -->
            <div class="col-md-3">
                <div class="list-group">
                    <asp:Button ID="btnOverview" OnClick="btnOverview_Click" CssClass="list-group-item" Text="Project Overview" runat="server" />
                    <asp:Button ID="btnHome" OnClick="btnHome_Click" CssClass="list-group-item" Text="Home" runat="server" />
                    <asp:Button ID="btnNews" OnClick="btnNews_Click" CssClass="list-group-item" Text="News" runat="server" />
                    <asp:Button ID="btnArticle" OnClick="btnArticle_Click" CssClass="list-group-item" Text="Article" runat="server" />
                    <asp:Button ID="btnTeams" OnClick="btnTeams_Click" CssClass="list-group-item" Text="Teams" runat="server" />
                    <asp:Button ID="btnStats" OnClick="btnStats_Click" CssClass="list-group-item" Text="Stats" runat="server" />
                </div>
            </div>

        <div class="col-md-9">

            <!-- Overview - Panel -->
            <asp:Panel ID= "pnlOverview" visible="true" runat="server">
                <h2>Project Overview</h2>
                <p>This website displays the fundamentals learned over the course of the semester in VWP as well as other features found in web development today.  Using Twitter Bootstrap's fantastic grid and components, I've built a fictional website for the Intergalactic Hockey League.  The league's site works much any other athletic CMS, but without the awesome editing capabilities that Sport Ngin has in site's like <code>nchchockey.com</code>.</p>
                <p>Use the sidebar to the right to display information about each page.</p>
                <p>If possible, I'd like to combine this project with my other projects located in the footer as part of my grading.  Simply put, my grade does NOT reflect what I have learned in this class.  It has been the best class I've taken thus far, and hopefully will be something I do for the rest of my life.</p>
                <p>My main project, DEKE, which is located at <a href="http://deke.io/">deke.io</a> was what I wanted to submit for this project, but in all reality I have months of development left  But, I was able to incorporate so much that I learned in this class into that project.</p>
            </asp:Panel>

            <!-- Home - Panel -->
            <asp:Panel ID= "pnlHome" visible="false" runat="server">
                <h2>Home Page</h2>
                <p>The homepage uses some of the most modern web design and development techniques that catch a viewers attention right away.  With a carousel news section with 100% width and league standings all in one place.  This provides a very elegant and minimalist one-stop view for users.</p>
                <p>The navigation is one of my favorite parts.  I was able to find the team logos online, and with a little help from Adobe's Photoshop, I embeded them into my navigation as "clickable" references for each team's page!  *Note: Not all team pages work...  That would take months of development, but I did provide examples of each page!</p>
            </asp:Panel>

            <!-- News - Panel -->
            <asp:Panel ID= "pnlNews" visible="false" runat="server">
                <h2>News Page</h2>
                <p>The news page shows all of the articles that members of this site that have privledge to edit content can post.  It would descend via the date it was created!  Again, a nice clean approach that incorporates a picture as well as a teaser.</p>
                <p>If time were not an issue, a connection from the index page's carousel to the news page would be a great asset to showing the latest articles.  I've actually done something similiar before, but displayed articles on a homepage based on the amount of views it was generating over the last week.</p>
            </asp:Panel>

            <!-- Article - Panel -->
            <asp:Panel ID= "pnlArticle" visible="false" runat="server">
                <h2>Article Page</h2>
                <p>The article page is pretty simple.  It just displays the content from the teaser as well as the rest of the story.  The demo page was taken from UMD Athletics, where I have done professional writing for them.</p>
            </asp:Panel>

            <!-- Teams - Panel -->
            <asp:Panel ID= "pnlTeams" visible="false" runat="server">
                <h2>Teams Page</h2>
                <p>Starting with the navigation, the teams page is my favorite.  It gives readers a visual of what each player looks like while incorporating other information about that person.  Now if I had my own database, I would use ASP:GridView to display the original information, and when clicking on a player's picture, one would be redirected to that player's individual page!</p>
                <p>The opening picture is from the UMD Bulldogs Men's Hockey team...  Unfortunately I don't believe their is a "Star Wars" hockey team.</p>
            </asp:Panel>

            <!-- Stats - Panel -->
            <asp:Panel ID= "pnlStats" visible="false" runat="server">
                <h2>Stats Page</h2>
                <p>The stats would be a very big hit for this website, as it shows who has the best talent.  It uses ASP:Gridview to display both Skater and Goalie statistics depending on what button clicked.  Each GridView is located inside an ASP:Panel and displayed when clicked!  (much like how this page functions).</p>
                <p>Admin members would be able to enter their teams stats in, which would be automatically rendered to this table without the work of one individual having to enter in all of the statistics.</p>
            </asp:Panel>
    
        </div>
    </div></div>
        </form>
  <!-- Footer -->
    <div class="container">
        <div class="row row-centered">
            <div class="col-xs-10 col-centered">

                <!-- Footer -->
                <footer>
                    <div class="row">
                        <div class="col-lg-12">
                            <p>&copy; Matt's Web Dev Work: <a href="http://bluestmoon.com/index.php?p=home">BluestMoon</a> | <a href="http://umdmis.com/">UMDMIS</a> | <a href="http://mdchristians.com/">MDChristians</a> | <a href="http://umdpenaltybox.com/">PenaltyBox</a> | <a href="http://www.carolslowcarb.com/">CarolsLowCarb</a> | <a href="http://www.umdbulldogcountry.com/">UMDBulldogCountry</a> | <a href="https://secret-castle-6370.herokuapp.com/">JobApp</a></p>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

  </body>
  </html>
