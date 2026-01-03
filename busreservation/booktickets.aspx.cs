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
public partial class booktickets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        disp1();
    }
    public void disp1()
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        SqlCommand cmd1 = new SqlCommand("select * from register where username='" + Session["username"].ToString() + "'", con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Session["emailid"] = dr["emailid"].ToString();
            Session["phoneno"] = dr["phoneno"].ToString();
        }
    }
    public void disp()
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        SqlCommand cmd1 = new SqlCommand("select * from bustickets where fromplace='" + DropDownList1.SelectedItem.Text + "' and toplace='" + DropDownList2.SelectedItem.Text + "' and availabledate='" + DateTime.Now.ToString("dd/MM/yyyy") + "'", con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Session["noofseats"] = dr["noofseats"].ToString();
            Session["remainingseats"] = dr["remainingseats"].ToString();
            Session["bookseats"] = dr["bookseats"].ToString();
            Session["amount"] = dr["amount"].ToString();
        }
    }
   protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        SqlCommand cmd1 = new SqlCommand("select * from bustickets where fromplace='" + DropDownList1.SelectedItem.Text + "' and toplace='"+DropDownList2.SelectedItem.Text+"' and travelname='"+TextBox4.Text+"' and remainingseats='0' and availabledate='"+DateTime.Now.ToString("dd/MM/yyyy")+"'", con1);
        int c = Convert.ToInt32(cmd1.ExecuteScalar());
        if (c > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Tickets Not Available!!!');</script>");
        }
        else
        {
           

            int amt = Convert.ToInt32(TextBox2.Text);
            int amt1 = Convert.ToInt32(TextBox1.Text);
            int amt2 = amt * amt1;
            //if (Convert.ToInt32(Session["remainingseats"].ToString()) < amt)
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Not Available');</script>");
             
            //}
            //else
            //{
               // disp();
              
               
                Class1 getcon2 = new Class1();
                SqlConnection con2 = getcon1.connect();
                SqlCommand cmd2 = new SqlCommand("select * from bustickets where fromplace='" + DropDownList1.SelectedItem.Text+ "' and toplace='" + DropDownList2.SelectedItem.Text + "' and availabledate='" + DateTime.Now.ToString("dd/MM/yyyy") + "' and remainingseats='0'", con2);
                SqlDataReader dr = cmd2.ExecuteReader();
                if (dr.Read())
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('No seats!!');</script>");
               
                }
                else

                {
                    disp1();
                    disp();
                    //int a = Convert.ToInt32(Session["remainingseats"].ToString());
                    //int b = Convert.ToInt32(Session["bookseats"].ToString());
                    //int c1 = Convert.ToInt32(TextBox2.Text);
                    //int rem = a - c1;
                    //int ava = b + c1;
                    //Class1 getcon = new Class1();
                    //SqlConnection con = getcon.connect();
                    //SqlCommand cmd = new SqlCommand("update bustickets set remainingseats='" + rem.ToString() + "',bookseats='" + ava.ToString() + "' where fromplace='" + DropDownList1.SelectedItem.Text + "' and toplace='" + DropDownList2.SelectedItem.Text + "' and travelname='" + TextBox4.Text + "' and availabledate='" + DateTime.Now.ToString("dd/MM/yyyy") + "'", con);
                    //cmd.ExecuteNonQuery();
                    //ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Available seats!!');</script>");
                    Class1 getcon3 = new Class1();
                    SqlConnection con3 = getcon3.connect();
                    SqlCommand cmd3 = new SqlCommand("insert into booking values('" + Session["username"].ToString() + "','" + Session["emailid"].ToString() + "','" + Session["phoneno"].ToString() + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "','booked','" + amt2.ToString() + "')", con3);
                    cmd3.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Booking Successfully!!');</script>");
               
                }
               
            //}
        }
    }

    //public void updateticket()
    //{
    //    disp();
    //    int a = Convert.ToInt32(Session["remainingseats"].ToString());
    //    int b = Convert.ToInt32(Session["bookseats"].ToString());
    //    int c = Convert.ToInt32(TextBox2.Text);
    //    int rem = a - c;
    //    int ava = b + a;
    //     Class1 getcon1 = new Class1();
    //    SqlConnection con1 = getcon1.connect();
    //    SqlCommand cmd1 = new SqlCommand("select * from bustickets where fromplace='" + DropDownList1.SelectedItem.Text + "' and toplace='" + DropDownList2.SelectedItem.Text + "' and availabledate='" + DateTime.Now.ToString("dd/MM/yyyy") + "' and remainingseats!='0'", con1);
    //    SqlDataReader dr = cmd1.ExecuteReader();
    //    if (dr.Read())
    //    {
    //        Class1 getcon = new Class1();
    //        SqlConnection con = getcon.connect();
    //        SqlCommand cmd = new SqlCommand("update bustickets set remainingseats='" + rem.ToString() + "',bookseats='" + ava.ToString() + "' where fromplace='" + DropDownList1.SelectedItem.Text + "' and toplace='" + DropDownList2.SelectedItem.Text+"' and travelname='"+TextBox4.Text+"' and availabledate='" + DateTime.Now.ToString("dd/MM/yyyy") + "'", con);
    //        cmd.ExecuteNonQuery();
    //    }
    //}
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        SqlCommand cmd1 = new SqlCommand("select * from bustickets where fromplace='" + DropDownList1.SelectedItem.Text + "' and toplace='" + DropDownList2.SelectedItem.Text + "' and travelname='" + TextBox4.Text + "'", con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr["amount"].ToString();
        }
    }
}
