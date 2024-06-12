using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
//using System.Windows.Forms;

public partial class Viewstudinfo : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtregno = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtdob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txtgender= (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txtphno = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtaddress = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txtdept = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox txtbranch= (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        TextBox txtyear = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txtstatus = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
        TextBox txtusername = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12");
        TextBox txtpassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13");
        data();
        string id = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        query = "update register set regno='"+txtregno.Text+"',name='"+txtname.Text+"', dob='"+txtdob.Text+"', gender='"+txtgender.Text+"',phone='"+txtphno.Text+"',email='"+txtemail.Text+"', address='"+txtaddress.Text+"', department='"+txtdept.Text+"', branch='"+txtbranch.Text+"',year='"+txtyear.Text+"',status='"+txtstatus.Text+"',username='"+txtusername.Text+"', password='"+txtpassword.Text+"' where id='"+id+"' ";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "delete from register where id=" + id + "";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
        con.Close();
    }
    protected void rdalumni_CheckedChanged(object sender, EventArgs e)
    {
        if (rdalumni.Checked == true)
        {
            lblack.Text = "Alumni";
        }
        else 
        {
            lblack.Text = "Student";
        }
    }
    protected void rdstudent_CheckedChanged(object sender, EventArgs e)
    {
        if (rdstudent.Checked == true)
        {
            lblack.Text = "Student";
        }
        else
        {
            lblack.Text = "Alumni";
        }
    }
}