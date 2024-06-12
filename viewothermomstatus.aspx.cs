using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class viewothermomstatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader red;
    string query;
    ArrayList arr = new ArrayList();
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["alumni"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsession.Text = "Welcome " + Session["sname"].ToString();

    }
      
    protected void btnsearch_Click1(object sender, EventArgs e)
    {
        data();
        query = "select id from register where name like '" + txtsearch.Text + "%' or email = '" + txtsearch.Text + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        while (red.Read())
        {

            arr.Add(red[0].ToString());
        }
        red.Close();
        con.Close();
        lblcount.Text = arr.Count.ToString();

        if (lblcount.Text == "1")
        {

            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();
        }
        if (lblcount.Text == "2")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
        }
        if (lblcount.Text == "3")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

        }

        if (lblcount.Text == "4")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

        }


        if (lblcount.Text == "5")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
           
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[4].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red4 = cmd.ExecuteReader();
            if (red4.Read())
            {
                lnkname5.Text = red4[0].ToString();
                lblphno5.Text = red4[1].ToString();
                lblmail5.Text = red4[2].ToString();

            }

            red1.Close();
            con.Close();

        }

        if (lblcount.Text == "6")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[4].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red4 = cmd.ExecuteReader();
            if (red4.Read())
            {
                lnkname5.Text = red4[0].ToString();
                lblphno5.Text = red4[1].ToString();
                lblmail5.Text = red4[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[5].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red5 = cmd.ExecuteReader();
            if (red5.Read())
            {
                lnkname6.Text = red5[0].ToString();
                lblphno6.Text = red5[1].ToString();
                lblmail6.Text = red5[2].ToString();

            }

            red1.Close();
            con.Close();

        }

        if (lblcount.Text == "7")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno2.Text = red[1].ToString();
                lblmail3.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[4].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red4 = cmd.ExecuteReader();
            if (red4.Read())
            {
                lnkname5.Text = red4[0].ToString();
                lblphno5.Text = red4[1].ToString();
                lblmail5.Text = red4[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[5].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red5 = cmd.ExecuteReader();
            if (red5.Read())
            {
                lnkname6.Text = red5[0].ToString();
                lblphno6.Text = red5[1].ToString();
                lblmail6.Text = red5[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[6].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red6 = cmd.ExecuteReader();
            if (red6.Read())
            {
                lnkname7.Text = red6[0].ToString();
                lblphno7.Text = red6[1].ToString();
                lblmail7.Text = red6[2].ToString();

            }

            red1.Close();
            con.Close();

        }


        if (lblcount.Text == "8")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = false;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[4].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red4 = cmd.ExecuteReader();
            if (red4.Read())
            {
                lnkname5.Text = red4[0].ToString();
                lblphno5.Text = red4[1].ToString();
                lblmail5.Text = red4[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[5].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red5 = cmd.ExecuteReader();
            if (red5.Read())
            {
                lnkname6.Text = red5[0].ToString();
                lblphno6.Text = red5[1].ToString();
                lblmail6.Text = red5[2].ToString();
                
            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[6].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red6 = cmd.ExecuteReader();
            if (red6.Read())
            {
                lnkname7.Text = red6[0].ToString();
                lblphno7.Text = red6[1].ToString();
                lblmail7.Text = red6[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[7].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red7 = cmd.ExecuteReader();
            if (red7.Read())
            {
                lnkname8.Text = red7[0].ToString();
                lblphno8.Text = red7[1].ToString();
                lblmail8.Text = red7[2].ToString();

            }

            red1.Close();
            con.Close();
        }
        if (lblcount.Text == "9")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = true;
            Panel10.Visible = false;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname1.Text = red[0].ToString();
                lblphno1.Text = red[1].ToString();
                lblmail1.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[4].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red4 = cmd.ExecuteReader();
            if (red4.Read())
            {
                lnkname5.Text = red4[0].ToString();
                lblphno5.Text = red4[1].ToString();
                lblmail5.Text = red4[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[5].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red5 = cmd.ExecuteReader();
            if (red5.Read())
            {
                lnkname6.Text = red5[0].ToString();
                lblphno6.Text = red5[1].ToString();
                lblmail6.Text = red5[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[6].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red6 = cmd.ExecuteReader();
            if (red6.Read())
            {
                lnkname7.Text = red6[0].ToString();
                lblphno7.Text = red6[1].ToString();
                lblmail7.Text = red6[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[7].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red7 = cmd.ExecuteReader();
            if (red7.Read())
            {
                lnkname8.Text = red7[0].ToString();
                lblphno8.Text = red7[1].ToString();
                lblmail8.Text = red7[2].ToString();

            }

            red1.Close();
            con.Close();



            data();
            query = "select name,phone,email from register where id = " + arr[8].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red8 = cmd.ExecuteReader();
            if (red8.Read())
            {
                lnkname9.Text = red8[0].ToString();
                lblphno9.Text = red8[1].ToString();
                lblmail9.Text = red8[2].ToString();

            }

            red1.Close();
            con.Close();


        }

        if (lblcount.Text == "10")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = true;
            Panel10.Visible = true;
            data();
            query = "select name,phone,email from register where id = " + arr[0].ToString() + "";
            cmd = new SqlCommand(query, con);
            red = cmd.ExecuteReader();
            if (red.Read())
            {
                lnkname10.Text = red[0].ToString();
                lblphno10.Text = red[1].ToString();
                lblmail10.Text = red[2].ToString();

            }

            red.Close();
            con.Close();


            data();
            query = "select name,phone,email from register where id = " + arr[1].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                lnkname2.Text = red1[0].ToString();
                lblphno2.Text = red1[1].ToString();
                lblmail2.Text = red1[2].ToString();

            }

            red1.Close();
            con.Close();
            data();
            query = "select name,phone,email from register where id = " + arr[2].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red2 = cmd.ExecuteReader();
            if (red2.Read())
            {
                lnkname3.Text = red2[0].ToString();
                lblphno3.Text = red2[1].ToString();
                lblmail3.Text = red2[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[3].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red3 = cmd.ExecuteReader();
            if (red3.Read())
            {
                lnkname4.Text = red3[0].ToString();
                lblphno4.Text = red3[1].ToString();
                lblmail4.Text = red3[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[4].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red4 = cmd.ExecuteReader();
            if (red4.Read())
            {
                lnkname5.Text = red4[0].ToString();
                lblphno5.Text = red4[1].ToString();
                lblmail5.Text = red4[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[5].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red5 = cmd.ExecuteReader();
            if (red5.Read())
            {
                lnkname6.Text = red5[0].ToString();
                lblphno6.Text = red5[1].ToString();
                lblmail6.Text = red5[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[6].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red6 = cmd.ExecuteReader();
            if (red6.Read())
            {
                lnkname7.Text = red6[0].ToString();
                lblphno7.Text = red6[1].ToString();
                lblmail7.Text = red6[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[7].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red7 = cmd.ExecuteReader();
            if (red7.Read())
            {
                lnkname8.Text = red7[0].ToString();
                lblphno8.Text = red7[1].ToString();
                lblmail8.Text = red7[2].ToString();

            }

            red1.Close();
            con.Close();



            data();
            query = "select name,phone,email from register where id = " + arr[8].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red8 = cmd.ExecuteReader();
            if (red8.Read())
            {
                lnkname9.Text = red8[0].ToString();
                lblphno9.Text = red8[1].ToString();
                lblmail9.Text = red8[2].ToString();

            }

            red1.Close();
            con.Close();

            data();
            query = "select name,phone,email from register where id = " + arr[9].ToString() + "";
            cmd = new SqlCommand(query, con);
            SqlDataReader red9 = cmd.ExecuteReader();
            if (red9.Read())
            {
                lnkname10.Text = red9[0].ToString();
                lblphno10.Text = red9[1].ToString();
                lblmail10.Text = red9[2].ToString();

            }

            red1.Close();
            con.Close();


        }
    }
    protected void lnkname1_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail1.Text.ToString();
        Response.Redirect("StudDefault.aspx");

    }
    protected void lnkname2_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail2.Text.ToString();
        Response.Redirect("StudDefault.aspx");

    }
    protected void lnkname3_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail3.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname4_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail4.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname5_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail5.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname6_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail6.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname7_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail7.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname8_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail8.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname9_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail9.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
    protected void lnkname10_Click(object sender, EventArgs e)
    {
        Session["s1name"] = lblmail10.Text.ToString();
        Response.Redirect("StudDefault.aspx");
    }
}