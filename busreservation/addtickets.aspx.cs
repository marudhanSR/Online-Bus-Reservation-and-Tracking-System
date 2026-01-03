using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class addtickets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 getcon = new Class1();
        SqlConnection con = getcon.connect();
        SqlCommand cmd = new SqlCommand("insert into bustickets values('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "')", con);
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Bus Tickets Added Successfully!!');</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewtickets.aspx");
    }
}
