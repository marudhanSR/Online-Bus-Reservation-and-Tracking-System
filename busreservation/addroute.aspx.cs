using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class addroute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 getcon = new Class1();
        SqlConnection con = getcon.connect();
        SqlCommand cmd = new SqlCommand("insert into addroute values('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox1.Text + "','" + TextBox4.Text + "')", con);
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Routes  Added Successfully!!');</script>");
        
    }
}