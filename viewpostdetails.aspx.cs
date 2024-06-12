using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class viewpostdetails : System.Web.UI.Page
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
        lblses.Text = "Welcome " + Session["stuname"].ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        Lblname.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
        Lbldept.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        Lblyear.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        Lblhead.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        Lblmsg.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        Lbldate.Text = GridView1.SelectedRow.Cells[5].Text.ToString();




        data();
        query = "select imgname,srcpath from portalinfo where name ='" + Lblname.Text + " '";
        cmd = new SqlCommand(query, con);
        String img = Convert.ToString(cmd.ExecuteScalar().ToString());
        con.Close();
        HyperLink1.NavigateUrl = (@"~\info\" + img);
      
    }
}