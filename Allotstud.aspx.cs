using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class Allotstud : System.Web.UI.Page
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
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);

    }

    protected void btngen_Click(object sender, EventArgs e)
    {
        int r1 = randomnumber(111111, 999999);
        txtpwd.Text = r1.ToString();
        //btncon.Visible = true;
    }
   
   
   
    //protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    txtusername.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
    //}
    
    protected void btncon_Click(object sender, EventArgs e)
    {
        
            data();
            query = "select * from register where regno='" + txtusername.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                data();
                query = "update register set status='Confirmed',username='" + txtusername.Text + "',password='" + txtpwd.Text + "' where regno='" + txtusername.Text + "'  ";
                cmd = new SqlCommand(query, con);
                red = cmd.ExecuteReader();
                con.Close();

                MessageBox.Show("Confirmed");
                GridView1.DataBind();
            }
            else
            {
            }
            red.Close();
            con.Close();
        
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtusername.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
        lblcateg.Text = GridView1.SelectedRow.Cells[10].Text.ToString();
    }
}