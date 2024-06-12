using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
using System.IO;

public partial class Generateportalinfo : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader red;
    string query;
    string destdir, filename = "No", orgfilename, destpath = "No";
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["alumni"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblses.Text = "Welcome " + Session["sname"].ToString();
        lblsession.Text =  Session["sname"].ToString();

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        string a;
        data();
        query = "select username from admin where username='" + lblsession.Text + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        if (red.Read())
        {
            a = red[0].ToString();
            

            // image
            if (FileUpload1.PostedFile.ContentLength != 0)
            {
                if (FileUpload1.PostedFile.ContentLength < 2064)
                {

                }

                else
                {
                    destdir = Server.MapPath("./info");
                    filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    orgfilename = filename;
                    destpath = Path.Combine(destdir, filename);
                    FileUpload1.PostedFile.SaveAs(destpath);

                }

            }



            data();
            query = "insert into portalinfo (name,username,heading,message,date,imgname,srcpath) values ('" + a.ToString() + "','"+a.ToString()+"','" + txtheading.Text + "','" + txtmsg.Text + "' ,'" + System.DateTime.Now.ToShortDateString() + "','" + filename + "','" + destpath + "' )";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            MessageBox.Show("Posted Successfully");
            txtheading.Text = "";
            txtdate.Text = "";
            txtmsg.Text = "";



        }
        red.Close();
        con.Close();
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}