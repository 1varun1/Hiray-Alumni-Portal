<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Manageperinfo.aspx.cs" Inherits="Manageperinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 40px;
        }
        .style4
        {
            width: 38px;
        }
    .style5
    {
        width: 42px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td width="1200"  >
<marquee>
<table>
<tr>
<td>
<asp:Label ID="lblsession" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label>
</td>
</tr>

</table>

<asp:Label ID="lblses" runat="server" Text="Label" Visible="False"></asp:Label></marquee>
    
    
    
</td>
</tr>
</table>

<table>
<tr>
<td class="style4">
    &nbsp;</td>
<td align="center">
   

<table>
<tr>
<td height="40"><asp:Label ID="Label14" runat="server" 
        Text="Manage Persnol Information" Font-Bold="True" ForeColor="#0000CC" 
        Font-Size="Large"></asp:Label></td>
</tr>
</table>
<table>


<tr>
<td align="left" height="40" width="70"><asp:Label ID="Label1" runat="server" Text="RegNo"></asp:Label></td>
<td height="40"></td>
<td height="40">
    <asp:TextBox ID="txtregno" runat="server"></asp:TextBox></td>
<td width="30"></td>
<td align="left" height="40" width="70"><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td align="left" height="40" width="70"><asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtdob" runat="server"></asp:TextBox></td>
<td></td>
<td align="left" height="40" width="70"><asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtgen" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td align="left" height="40" width="70"><asp:Label ID="Label5" runat="server" Text="Phone No"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtphno" runat="server"></asp:TextBox></td>
<td></td>
<td align="left" height="40" width="70"><asp:Label ID="Label6" runat="server" Text="Email"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td align="left" height="40" width="70"><asp:Label ID="Label7" runat="server" Text="Address"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtadd" runat="server"></asp:TextBox></td>
<td></td>
<td align="left" height="40" width="70"><asp:Label ID="Label8" runat="server" Text="Department"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtdept" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td align="left" height="40" width="70"><asp:Label ID="Label9" runat="server" Text="Branch"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtbranch" runat="server"></asp:TextBox></td>
<td></td>
<td align="left" height="40" width="70"><asp:Label ID="Label10" runat="server" Text="Year" Visible="False"></asp:Label></td>
<td height="40"></td>
<td height="40"><asp:TextBox ID="txtyear" runat="server" Visible="False"></asp:TextBox></td>
</tr>



<tr>
<td align="left" width="70" class="style3"><asp:Label ID="Label12" runat="server" Text="Username"></asp:Label></td>
<td class="style3"></td>
<td class="style3"><asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
<td class="style3"></td>
<td align="left" width="70" class="style3"><asp:Label ID="Label13" runat="server" Text="Password"></asp:Label></td>
<td class="style3"></td>
<td class="style3"><asp:TextBox ID="txtpwd" runat="server"></asp:TextBox></td>
</tr>



</table>
<table>
<tr>
<td></td>
<td><asp:Button ID="btnupdate" runat="server" Text="Update" 
        onclick="btnupdate_Click" BackColor="White" Font-Bold="True" 
        ForeColor="#0000CC" /></td>
<td><asp:Button ID="btncan" runat="server" Text="Cancel" Font-Bold="True" 
        ForeColor="#0000CC" BackColor="White" /></td>
</tr>
</table>
</td>
<td class="style5"></td>
<td>
    <asp:Image ID="Image1" runat="server" Height="300px" Width="300" 
        ImageUrl="~/images/Write-for-Us.jpg" /></td>
</tr>
</table>


</asp:Content>

