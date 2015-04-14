<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

namespace WindowsFormsApplication4
{
    public partial class Form1 : Form
    {
        

		//Initiate Textboxes and Labels!

		void Page_Load(object sender, EventArgs e)
    	{

        	 // txtConvert
        	TextBox tinput = new TextBox();
        	input.ID = "txtConvert";
        	txtConvert.Controls.Add(input);

        	Label linput = new Label();
        	linput.ID = "lblConvert";
        	lblConvert.Controls.Add(linput);

        	// txtMile
        	TextBox tmile = new TextBox();
        	tmile.ID = "txtMile";
        	txtMile.Controls.Add(tmile);

        	Label lmile = new Label();
        	lmile.ID = "lblMile";
        	lblMile.Controls.Add(lmile);

        	// txtKilo
        	TextBox tkilo = new TextBox();
        	tkilo.ID = "txtKilo";
        	txtKilo.Controls.Add(tkilo);

        	Label lkilo = new Label();
        	lkilo.ID = "lblKilo";
        	lblKilo.Controls.Add(lkilo);

        	// txtYard
        	TextBox tyard = new TextBox();
        	tyard.ID = "txtYard";
        	txtYard.Controls.Add(tyard);

        	Label lyard = new Label();
        	lyard.ID = "lblYard";
        	lblYard.Controls.Add(lyard);

        	// txtFoot
        	TextBox tfoot = new TextBox();
        	tfoot.ID = "txtFoot";
        	txtFoot.Controls.Add(tfoot);

        	Label lfoot = new Label();
        	lfoot.ID = "lblFoot";
        	lblFoot.Controls.Add(lfoot);

    		//Initiate Radio Buttons!

        	// radMile
        	RadioButton rmile = new RadioButton();
        	rmile.ID = "radMile";
        	rmile.Text = "Mile";
        	radMile.Controls.Add(rmile);

        	// radKilo
        	RadioButton rkilo = new RadioButton();
        	rkilo.ID = "radKilo";
        	rkilo.Text = "Kilometer";
        	radKilo.Controls.Add(rkilo);

        	// radYard
        	RadioButton ryard = new RadioButton();
        	ryard.ID = "radYard";
        	ryard.Text = "Yard";
        	radYard.Controls.Add(ryard);

        	// radFoot
        	RadioButton rfoot = new RadioButton();
        	rfoot.ID = "radFoot";
        	rfoot.Text = "Foot";
        	radFoot.Controls.Add(rfoot);
        }

        public Form1()
        {
            InitializeComponent();
            this.textBox1.ModifiedChanged += new EventHandler(text_handler);
            this.mileRB.CheckedChanged += new EventHandler(text_handler);
            this.kilRB.CheckedChanged += new EventHandler(text_handler);
            this.yardRB.CheckedChanged += new EventHandler(text_handler);
            this.footRB.CheckedChanged += new EventHandler(text_handler);
        }


    // text handler!

    private void text_handler(object sender, EventArgs e)
        {
            TextBox txtConvert = sender as TextBox;
            int numToMultiply = Convert.ToInt32(txtConvert.Text);


    	// Radio Button Loop
    	// If this button is check, this distance unit should be...

    	if (radMile.Checked)
        	{
            	txtMile.Text = txtConvert.Text;
            	txtKilo.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 1.609344);
            	txtYard.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 1759.995236);
            	txtFoot.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 5280.001802);
        	}
        
        	else if (radKilometer.Checked)
        	{
            	txtKilo.Text = txtConvert.Text;
            	txtMile.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 0.621371);
            	txtYard.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 1093.61);
            	txtFoot.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 3280.84);
        	}
        
        	else if (radYard.Checked)
        	{
            	txtYard.Text = txtConvert.Text;
            	txtMile.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 0.000568);
            	txtKilo.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 0.000914);
            	txtFoot.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 3);
        	}
        
        	else if (radFoot.Checked)
        	{
            	txtFoot.Text = txtConvert.Text;
            	txtMile.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 0.000189);
            	txtKilo.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 0.000305);
            	txtYard.Text = Convert.ToString((Convert.ToDouble(numToMultiply)) * 0.333332);
        	}
        }
    }
}

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Matt Christians Length Converter</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>

<body>
	<div class="container">
		<div class="page-header">
            <h1>VWP Unit Conversion</h1>
            <p class="lead">Matt Christians</p>
        </div>
	
	<form id="form1" runat="server">
	

		<div class="form-group">
        	<asp:Label ID="lblConvert" cssClass="control-label" Text="Enter Distance" runat="server" />
        	<asp:TextBox ID="txtConvert" cssClass="form-control input-lg" runat="server" />
    	</div>



    	<div class="btn-group" data-toggle="buttons" id="toolbar">
        	<h5>Base Unit</h5>

        	<asp:RadioButton ID="radMile" cssClass="btn btn-default active" Text="Mile" GroupName="Length" runat="server" OnCheckedChanged="RadioButtonLength_CheckedChanged" AutoPostBack="true"/>

        	<asp:RadioButton ID="radKilo" cssClass="btn btn-default" Text="Kilometer" GroupName="Length" runat="server" OnCheckedChanged="RadioButtonLength_CheckedChanged" AutoPostBack="true"/>

        	<asp:RadioButton ID="radYard" cssClass="btn btn-default" Text="Yard" GroupName="Length" runat="server" OnCheckedChanged="RadioButtonLength_CheckedChanged" AutoPostBack="true"/>
				
			<asp:RadioButton ID="radFoot" cssClass="btn btn-default" Text="Foot" GroupName="Length" runat="server" OnCheckedChanged="RadioButtonLength_CheckedChanged" AutoPostBack="true"/>
    	</div>
	
        <br />
        <br />

		<div class="conversion-result">
            <div class="row">
                <div class="col-lg-3">
                    <asp:TextBox ID="txtMile" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblMile" Text="Mile" runat="server"></asp:Label>
                </div>
                    
                <div class="col-lg-3">
                   	<asp:TextBox ID="txtKilometer" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblKilometer" Text="Kilometer" runat="server"></asp:Label>
                </div>

                <div class="col-lg-3">
                    <asp:TextBox ID="txtYard" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblYard" Text="Yard" runat="server"></asp:Label>
                </div>

                <div class="col-lg-3">
                    <asp:TextBox ID="txtFoot" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblFoot" Text="Foot" runat="server"></asp:Label>
                </div>
            </div>
        </div>


	</form>
</div>


    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.js"></script>

    <!-- Bootstrap -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>












