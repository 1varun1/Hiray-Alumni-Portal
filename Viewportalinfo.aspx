<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Viewportalinfo.aspx.cs" Inherits="Viewportalinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 423px;
        }
    .style4
    {
        width: 49px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td width="1200"  height="50">
<marquee>
<asp:Label ID="lblses" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label></marquee>
</td>
</tr>
</table>


<table>
<tr>
<td><asp:Image ID="Image1" runat="server" Height="300" Width="300" ImageUrl="~/images/profile_3.jpg" /></td>

<td class="style4"></td>
    
<td align="center" class="style3">
<table>
<tr>

<td align="center"  height="50" width="300">
    <asp:Label ID="Label1" runat="server" Text="View Portal Information" 
        Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
</td> 
</tr>
</table>

<table>
<tr>
<td align="center" >
<table>
<tr>
<td></td>
</tr>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource2" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
            <asp:BoundField DataField="heading" HeaderText="heading" 
                SortExpression="heading" />
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="imgname" HeaderText="imgname" 
                SortExpression="imgname" />
            <asp:BoundField DataField="srcpath" HeaderText="srcpath" 
                SortExpression="srcpath" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:alumni %>" 
        SelectCommand="SELECT * FROM [portalinfo] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="sname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:alumni %>" 
        SelectCommand="SELECT [id], [heading], [date] FROM [portalinfo]">
    </asp:SqlDataSource>
</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txtheading" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
</td>
</tr>

<tr>
<td></td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox></td>
</tr>

<tr>
<td></td>
</tr>


<tr>
<td><asp:TextBox ID="txtdate" runat="server"></asp:TextBox></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>

</asp:Content>

