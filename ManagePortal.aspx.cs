using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ManagePortal : System.Web.UI.Page
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
    
   
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        //TextBox txtid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox0");
        TextBox txthead = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtmsg = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtdate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");

        data();
        string id = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        query = "update portalinfo set heading='" + txthead.Text + "',message='" + txtmsg.Text + "', date='" + txtdate.Text + "' where id='" + id + "' ";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "delete from portalinfo where id=" + id + "";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }
}