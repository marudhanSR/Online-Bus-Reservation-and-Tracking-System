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
using System.Net;
using System.IO;
using System.Net.Mime;
public partial class searchbus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        bin();

    }
    public void bin()
    {
        Class1 getcon = new Class1();
        SqlConnection con1 = getcon.connect();
        SqlCommand cmd2 = new SqlCommand("select * from bustickets where fromplace='" + DropDownList1.SelectedValue + "' and toplace='" + DropDownList2.SelectedValue + "'", con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Not found');</script>");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bin();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 getcon = new Class1();
        SqlConnection con = getcon.connect();
        SqlCommand cmd = new SqlCommand("select * from addroute where  fromplace='" + DropDownList1.SelectedValue + "' and toplace='" + DropDownList2.SelectedValue + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["stops"] = dr["stops"].ToString();
            Session["hotels"] = dr["hotels"].ToString();

            WebClient client = new WebClient();
            string strmsg = "HI your Bus Stops " + Session["stops"].ToString()+" yor Stopping Hotels" + Session["hotels"].ToString();
              string baseurl = " http://dnd.maduraibulksms.in/vendorsms/pushsms.aspx?apikey=6ce6af9b-4eda-4673-a99a-8812e61adf09&clientId=060ed3c6-286c-4647-9c1c-8116a421c9ad&msisdn=" + TextBox1.Text + "&sid=VASTAM&msg='" + strmsg + "'&fl=0&gwid=2";

            Stream data = client.OpenRead(baseurl);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            data.Close();
            reader.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('SMS Successfully');</script>");

        }
        else
        {
            Response.Write("<script>alert('Invalid User')</script>");
        }
    }
}
