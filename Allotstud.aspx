<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Allotstud.aspx.cs" Inherits="Allotstud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 36px;
        }
        .style2
        {
            height: 27px;
        }
    .style3
    {
        height: 36px;
    }
        .style4
        {
            width: 909px;
            height: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


    <table>
    <tr>
    <td width="1200" ><marquee>
    <asp:Label ID="lblses" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label></marquee></td>
    </tr>
    <tr>
    <td align="center" width="1200" class="style3">
        <asp:Label ID="Label13" runat="server" Text="Allot Student" Font-Bold="True" 
            Font-Size="Large" ForeColor="#0000CC"></asp:Label></td>
    </tr>
    <tr>
    <td class="style2"></td>
    </tr>
    </table>
    
    <table>
<tr>
<td width="1200" align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#0000CC" BorderStyle="Inset" BorderWidth="4px" 
        CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Small" 
        onselectedindexchanged="GridView1_SelectedIndexChanged1" Width="892px">
        <Columns>
            <asp:BoundField DataField="regno" HeaderText="Reg No" SortExpression="regno" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email-ID" 
                SortExpression="email" />
            <asp:BoundField DataField="department" HeaderText="Department" 
                SortExpression="department" />
            <asp:BoundField DataField="branch" HeaderText="Branch" 
                SortExpression="branch" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
            <ItemStyle BackColor="#999999" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="Username" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" 
                SortExpression="password" />
            <asp:BoundField DataField="categ" HeaderText="Student Category" SortExpression="categ" >
            <ItemStyle BackColor="#99CCFF" />
            </asp:BoundField>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle ForeColor="#003399" BackColor="White" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:alumni %>" 
        SelectCommand="SELECT [regno], [name], [dob], [gender], [phone], [email], [address], [department], [branch], [year], [status], [username], [password], [categ] FROM [register]">
    </asp:SqlDataSource>
</td>
</tr>
</table>

<table>
<tr>
<td width="1200" align="center">
<table style="height: 97px; width: 335px">
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
</td>
    <td>
        <asp:Label ID="lblcateg" runat="server" Text=".........."></asp:Label>
    </td>
</tr>


<tr>
<td><asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label></td>
<td><asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
<td><asp:TextBox ID="txtpwd" runat="server" ViewStateMode="Disabled"></asp:TextBox></td>
<td><asp:Button ID="btngen" runat="server" Text="Gen" onclick="btngen_Click" 
        BackColor="White" Font-Bold="True" ForeColor="#0000CC" Width="46px"  /></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td><asp:Button ID="btncon" runat="server" Text="Confirm" onclick="btncon_Click" 
        BackColor="White" Font-Bold="True" ForeColor="#0000CC" 
       /></td>
</tr>
</table>
</td>
</tr>
</table>

</asp:Content>

