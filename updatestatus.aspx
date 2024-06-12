<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="updatestatus.aspx.cs" Inherits="updatestatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 56px;
        }
        .style7
    {
        height: 39px;
    }
    .style8
    {
        width: 107px;
    }
        .style9
        {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td width="1200"  height="50">
<marquee>

<asp:Label ID="lblsession" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label>
<asp:Label ID="lblses" runat="server" Text="Label" Visible="False"></asp:Label></marquee>
</td>
</tr>
</table>

<table>
<tr>
<td class="style5"></td>
<td>
    <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" 
        ImageUrl="~/images/computer.png" style="margin-right: 0px" /></td>

        <td class="style8"></td>
<td height="50"  align="center">
<table>
<tr>
<td></td>
</tr>
<tr>
<td align="center" width="250">
    <asp:Label ID="Label5" runat="server" Text="Update Status" Font-Bold="True" 
        Font-Size="Large" ForeColor="#0000CC"></asp:Label></td>
</tr>
<tr>
<td class="style7">
    <asp:Label ID="lblname" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lbldept" runat="server" Text="Label" Visible="False"></asp:Label>
    </td>
</tr>
</table>
<table>
<tr>
<td height="40" align="left"><asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label></td>
    <td></td>
    <td><asp:TextBox ID="txtcomname" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="*" ControlToValidate="txtcomname" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td height="40" align="left">
    <asp:Label ID="Label2" runat="server" Text="Designation"></asp:Label></td>
    <td></td>
    <td><asp:TextBox ID="txtdes" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*" ControlToValidate="txtdes" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td height="40" align="left">
    <asp:Label ID="Label3" runat="server" Text="Experience"></asp:Label></td>
    <td></td>
    <td><asp:TextBox ID="txtexp" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*" ControlToValidate="txtexp" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td valign="middle">
    <asp:Label ID="Label4" runat="server" Text="Company Address" Height="40px"></asp:Label></td>
    <td></td>
    <td><asp:TextBox ID="txtcomadd" runat="server" TextMode="MultiLine" Width="128px"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*" ControlToValidate="txtcomadd" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator></td>
</tr>



</table>
<table style="width: 251px">
<tr>
<td align="right" class="style9" >
    
    <asp:Button ID="btnsave" runat="server" Text="Update" onclick="btnsave_Click" 
        BackColor="White" Font-Bold="True" ForeColor="#0000CC" /></td>


    <td align="right" >
        <asp:Button ID="btncan" runat="server" Text="Cancel" Width="57px" 
            BackColor="White" Font-Bold="True" ForeColor="#0000CC" 
            onclick="btncan_Click" /></td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Content>

