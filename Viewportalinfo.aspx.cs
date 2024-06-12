using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class Viewportalinfo : System.Web.UI.Page
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
        lblses.Text = "Welcome " + Session["sname"].ToString();
    }
    protected void btnclick_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        txtheading.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        data();
        query = "select message,date from portalinfo where heading='"+txtheading.Text+"'";
        cmd = new SqlCommand(query, con);
                red = cmd.ExecuteReader();
                if (red.Read())
                {
                    txtmsg.Text = red[0].ToString();
                    txtdate.Text = red[1].ToString();
                }
                red.Close();
                con.Close();
    }
    }
    //protected void btnview_Click(object sender, EventArgs e)
    //{
    //    //data();
    //    //query = "select message,date from portalinfo where heading='"+txtheading.Text+"'";
    //    //cmd = new SqlCommand(query, con);
    //    //        red = cmd.ExecuteReader();
    //    //        if (red.Read())
    //    //        {
    //    //            txtmsg.Text = red[0].ToString();
    //    //            txtdate.Text = red[1].ToString();
    //    //        }
    //    //        red.Close();
    //    //        con.Close();
    //}
