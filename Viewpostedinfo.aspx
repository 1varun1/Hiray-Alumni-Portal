<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Viewpostedinfo.aspx.cs" Inherits="Viewpostedinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 512px;
        }
        .style3
        {
            width: 165px;
            height: 33px;
        }
        .style4
        {
            width: 512px;
            height: 164px;
        }
        .style5
        {
            height: 404px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td width="1200" ><marquee>
    <asp:Label ID="lblses" runat="server" Text="Label" ForeColor="#FF66FF">
    </asp:Label></marquee></td>
</tr>
</table>

<table>
<tr>
<td align="center" width="1100" class="style5">
<table>
<tr>
<td class="style3"><asp:Label ID="Label1" runat="server" Text="View Posted Message" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label></td>
</tr>
</table>
<table>
<tr>
<td class="style4">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#000066" 
        BorderStyle="Outset" BorderWidth="1px" CellPadding="4" Font-Size="Smaller" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="637px">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="dept" HeaderText="Department" 
                SortExpression="dept" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="heading" HeaderText="Heading" 
                SortExpression="heading" />
            <asp:BoundField DataField="message" HeaderText="Message" 
                SortExpression="message" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:alumni %>" 
        SelectCommand="SELECT [name], [dept], [year], [heading], [message], [date] FROM [portalinfo]">
    </asp:SqlDataSource>
</td>
</tr>


</table>
<table>
<tr>
<td>
<table>
<tr><td class="style1" align="center">
    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="304px">

    <table>
<tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label2" runat="server" Text="Name" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:Label ID="Lblname" runat="server"></asp:Label></td>
</tr>
<tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label4" runat="server" Text="Department" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:Label ID="Lbldept" runat="server"></asp:Label></td>
</tr>
<tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label6" runat="server" Text="Year" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:Label ID="Lblyear" runat="server"></asp:Label></td>
</tr><tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label8" runat="server" Text="Heading" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:Label ID="Lblhead" runat="server"></asp:Label></td>
</tr>
<tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label10" runat="server" Text="Message" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:Label ID="Lblmsg" runat="server"></asp:Label></td>
</tr>
<tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label12" runat="server" Text="Date" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:Label ID="Lbldate" runat="server"></asp:Label></td>
</tr>
<tr><td></td>
<td height="25" align="left">
    <asp:Label ID="Label14" runat="server" Text="Document" Font-Bold="True"></asp:Label></td>
<td height="25"></td>
<td height="25">
    <asp:HyperLink ID="HyperLink1" runat="server">Download to View</asp:HyperLink></td>
</tr>

</table>
    </asp:Panel>


</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>



</asp:Content>

