using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manageperinfo.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatestatus.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viewportalinfo.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewothermomstatus.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

  
    protected void lnkpostmsg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Postinfo.aspx");
    }
    protected void lnkviewmsg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viewpostedinfo.aspx");
    }
}
