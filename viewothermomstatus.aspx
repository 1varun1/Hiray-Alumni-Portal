<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="viewothermomstatus.aspx.cs" Inherits="viewothermomstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 596px;
        }
        .style4
        {
            height: 64px;
        }
        .style5
        {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
<td></td>
</tr>

<tr>
<td width="1200"  >
<marquee>
<asp:Label ID="lblsession" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label></marquee>
</td>
</tr>
</table>


<table>
<tr>
<td align="center" width="1200px" >
<table>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="View Other Member Information" Font-Bold="True" ForeColor="#0000CC"></asp:Label></td>
</tr>
</table>
<table>
<tr>
<td></td>
</tr>

<tr>
<td class="style5">
    <asp:Label ID="Label1" runat="server" Text="Find Other Member Information"></asp:Label></td>
<td class="style5">
    <asp:TextBox ID="txtsearch" runat="server" Width="153px"></asp:TextBox>
</td>


<td class="style5"><asp:Button ID="btnsearch" runat="server" Text="Search" 
        onclick="btnsearch_Click1" BackColor="White" Font-Bold="True" 
        ForeColor="#0000CC" /></td>
</tr>

<tr>
<td class="style4">
    <asp:Label ID="lblcount" runat="server" Text="Label" Visible="False"></asp:Label></td>
</tr>
</table>


<table>
<tr>
<td>
    <asp:Panel ID="Panel1" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname1" runat="server" onclick="lnkname1_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno1" runat="server"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail1" runat="server"></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>

<td>
    <asp:Panel ID="Panel2" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname2" runat="server" onclick="lnkname2_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno2" runat="server"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail2" runat="server"></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>

<td>
    <asp:Panel ID="Panel3" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname3" runat="server" onclick="lnkname3_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno3" runat="server"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail3" runat="server"></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>

<td>
    <asp:Panel ID="Panel4" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname4" runat="server" onclick="lnkname4_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno4" runat="server"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail4" runat="server"></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>


<td>
    <asp:Panel ID="Panel5" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname5" runat="server" onclick="lnkname5_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno5" runat="server"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail5" runat="server" Text=""></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>
</tr>

</table>
<table>
<tr>
<td>
    <asp:Panel ID="Panel6" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname6" runat="server" onclick="lnkname6_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno6" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail6" runat="server" Text=""></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>

<td>
    <asp:Panel ID="Panel7" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname7" runat="server" onclick="lnkname7_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno7" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail7" runat="server" Text=""></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>

<td>
    <asp:Panel ID="Panel8" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname8" runat="server" onclick="lnkname8_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno8" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail8" runat="server" Text=""></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>

<td>
    <asp:Panel ID="Panel9" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname9" runat="server" onclick="lnkname9_Click"></asp:LinkButton></td>
</tr>
<tr>
<td class="style2"><asp:Label ID="lblphno9" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail9" runat="server" Text=""></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>


<td>
    <asp:Panel ID="Panel10" runat="server">
    <table>
<tr>
<td><asp:LinkButton ID="lnkname10" runat="server" onclick="lnkname10_Click"></asp:LinkButton></td>
</tr>
<tr>
<td ><asp:Label ID="lblphno10" runat="server"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="lblmail10" runat="server" Text=""></asp:Label></td>
</tr>
</table>

    </asp:Panel>
</td>
</tr>

</table>

</td>
</tr>
</table>



</asp:Content>

