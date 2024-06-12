using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class updatestatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader red;
    string query;

    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["alumni"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblses.Text = Session["sname"].ToString();
        lblsession.Text = "Welcome " + Session["sname"].ToString();
        data();
        query = "select name,branch from register where regno='" + lblses.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblname.Text = rd[0].ToString();
            lbldept.Text = rd[1].ToString();
        }
        rd.Close();
        con.Close();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into workdet(regno,name,compname,designation,exp,compaddress,cdate,dept)values('" + lblses.Text + "','" + lblname.Text + "','" + txtcomname.Text + "','" + txtdes.Text + "','" + txtexp.Text + "','" + txtcomadd.Text + "','" + System.DateTime.Today.ToShortDateString() + "','" + lbldept.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "update register set companyname='" + txtcomname.Text + "', designation='" + txtdes.Text + "', experience='" + txtexp.Text + "', comaddress= '" + txtcomadd.Text + "' where username= '" + lblses.Text + "'  ";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Added Successfully");

        txtcomname.Text = "";
        txtdes.Text = "";
        txtexp.Text = "";
        txtcomadd.Text = "";
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
        txtcomname.Text = "";
        txtdes.Text = "";
        txtexp.Text = "";
        txtcomadd.Text = "";
    }
}