using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class Signup : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader red;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["alumni"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    string yr;
    protected void btnsave_Click(object sender, EventArgs e)
    {

        string a;
        if (rdmale.Checked == true)
        {
            a = "male";
        }
        else
        {
            a = "female";
        }

        if (dropcateg.SelectedItem.Text == "Alumni")
        {
            yr = "Alumni";
        }
        else
        {
            yr = ddyear.SelectedItem.Text;
        }
        data();
        query = "insert into register(regno,name,dob,gender,phone,email,address,department,branch,year,status,categ)values('" + txtregno.Text + "','" + txtname.Text + "','" + txtdob.Text + "','" + a.ToString() + "','" + txtphno.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + dddept.SelectedItem.Text + "','" + ddbranch.SelectedItem.Text + "','" + yr.ToString() + "','" + txtstatus.Text + "','" + dropcateg.SelectedItem + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        MessageBox.Show("Added Successfully");

        txtregno.Text = "";
        txtname.Text = "";
        txtemail.Text = "";
        txtdob.Text = "";
        txtaddress.Text = "";
        txtphno.Text = "";

    }
    protected void txtregno_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select regno from register where regno='" + txtregno.Text + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        if (red.Read())
        {
            if (txtregno.Text == red[0].ToString())
            {
                MessageBox.Show("Already exist");


            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

    }
    protected void dropcateg_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dropcateg.SelectedItem.Text == "Alumni")
        {
            Label11.Visible = false;
            ddyear.Visible = false;
        }
        else
        {
            Label11.Visible = true;
            ddyear.Visible = true;
        }
    }
}