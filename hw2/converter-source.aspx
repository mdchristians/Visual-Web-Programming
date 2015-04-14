<%@ Page Language="C#" %>
<%@ Import namespace="System" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.ComponentModel" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Drawing" %>
<%@ Import namespace="System.Linq" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Windows.Forms" %>

<script runat="server">

void Page_Load(object sender, EventArgs e)
   {

       string path = Server.MapPath("converter.aspx");
       string readText = File.ReadAllText(path);
       srcText.Text = readText;
    
   }
           
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Compiler</title>
</head>

<body>
	<form id="Form1" runat="server">
		<asp:TextBox ID="srcText" runat="server" />
    
	</form>
</body>
</html>