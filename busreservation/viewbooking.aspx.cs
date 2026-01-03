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
public partial class viewbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bin();
            dele();
        }
    }
    public void bin()
    {
        Class1 getcon = new Class1();
        SqlConnection con1 = getcon.connect();
        SqlCommand cmd2 = new SqlCommand("select * from booking", con1);
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
    public void dele()
    {
        if (Request.QueryString["id1"] != null)
        {

            
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        SqlCommand cmd1 = new SqlCommand("select * from register where id='" +Request.QueryString["id1"]+ "'", con1);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Session["phoneno1"] = dr1["phoneno"].ToString();

            Session["passname"] = dr1["username"].ToString();

        }
            Class1 getcon = new Class1();
            SqlConnection con = getcon.connect();
            SqlCommand cmd = new SqlCommand("update booking set confirmdate='" + DateTime.Now.ToString("dd/MM/yyyy") + "',status='confirm' where id='" + Request.QueryString["id1"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
            //ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Confirm Successfully!!!');</script>");
            bin();

            WebClient client = new WebClient();
            string strmsg = "HI " + Session["passname"].ToString() + "Confirmed Ur Booking";
            //string baseurl = "http://fast.f9cs.com/sendsms.jsp?user=f9demo&password=a6aeb2cbc9XX&mobiles=" + TextBox2.Text + "&senderid=ACTIVE&sms='" + strmsg + "'";
            //string baseurl = "http://pentax.smsblaster.in/httpapi/httpapi?token=188710f6e46b6f05432047a98c5f5d3e&sender=PENTAX&number=" + TextBox7.Text + "&route=2&type=1&sms=" + strmsg + "";
            string baseurl = " http://dnd.maduraibulksms.in/vendorsms/pushsms.aspx?apikey=6ce6af9b-4eda-4673-a99a-8812e61adf09&clientId=060ed3c6-286c-4647-9c1c-8116a421c9ad&msisdn=" + Session["phoneno1"].ToString()+ "&sid=VASTAM&msg='" + strmsg + "'&fl=0&gwid=2";

            Stream data = client.OpenRead(baseurl);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            data.Close();
            reader.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('SMS Successfully');</script>");

        }
    }
}
