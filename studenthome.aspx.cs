using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class studenthome : System.Web.UI.Page
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
        lblses.Text = Session["stuname"].ToString();
        lblsession.Text = "Welcome " + Session["stuname"].ToString();

        if (!Page.IsPostBack)
        {
            data();
            query = "select * from register where username='" + lblses.Text + "'";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                txtregno.Text = red[1].ToString();
                txtname.Text = red[2].ToString();
                txtdob.Text = red[3].ToString();
                txtgen.Text = red[4].ToString();
                txtphno.Text = red[5].ToString();
                txtmail.Text = red[6].ToString();
                txtadd.Text = red[7].ToString();
                txtdept.Text = red[8].ToString();
                txtbranch.Text = red[9].ToString();
                txtyear.Text = red[10].ToString();

                txtusername.Text = red[12].ToString();
                txtpwd.Text = red[13].ToString();
            }
            red.Close();
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        data();
        query = "select * from register where username='" + lblses.Text + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        if (red.Read())
        {

            data();
            query = "update register set regno='" + txtregno.Text + "', name='" + txtname.Text + "', dob='" + txtdob.Text + "', gender='" + txtgen.Text + "', phone='" + txtphno.Text + "', email='" + txtmail.Text + "' , address='" + txtadd.Text + "',department='" + txtdept.Text + "',branch='" + txtbranch.Text + "',year='" + txtyear.Text + "',username='" + txtusername.Text + "', password= '" + txtpwd.Text + "' where username= '" + lblses.Text + "' ";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("Updated Successfully");
        }
        red.Close();
        con.Close();
    }
}