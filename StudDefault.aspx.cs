using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;


public partial class StudDefault : System.Web.UI.Page
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
        lblsession.Text = "Welcome "+Session["sname"].ToString();
        Labelses.Text = Session["s1name"].ToString();
        // select query with email as where cond...
       
         data();
            query = "select * from register where email='" + Labelses.Text + "'";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lblname.Text = red[2].ToString();
                lblregno.Text = red[1].ToString();

                lbldob.Text = red[3].ToString();
                //txtgen.Text = red[4].ToString();
                lblphno.Text = red[5].ToString();
                lblemail.Text = red[6].ToString();
                lbladd.Text = red[7].ToString();
                lbldept.Text = red[8].ToString();
                lblyear.Text = red[10].ToString();
                lblcomname.Text = red[14].ToString();
                lbldeg.Text = red[15].ToString();
                lblexp.Text = red[16].ToString();
                lblcomadd.Text = red[17].ToString();
            }
            red.Close();
            con.Close();
            GridView1.DataBind();
    }
}