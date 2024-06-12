using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class Login : System.Web.UI.Page
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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((txtusername.Text == "admin") & (txtpwd.Text == "admin"))
        {
            Session["sname"] = txtusername.Text.ToString();
            Response.Redirect("AdminDefault.aspx");

        }
        else
        {
            data();
            query = "select username,password,categ from register where username='" + txtusername.Text + "' and password='" + txtpwd.Text + "'";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                if (red[2].ToString() == "Alumni")
                {

                    Session["sname"] = txtusername.Text.ToString();
                    Response.Redirect("Viewpostedinfo.aspx");

                }
                else
                {
                    Session["stuname"] = txtusername.Text.ToString();
                    Response.Redirect("studenthome.aspx");

                }

            }
            else
            {
                MessageBox.Show("Enter the Correct UserName and Password");
            }
        }
    }
                
            

     
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}