<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="StudDefault.aspx.cs" Inherits="StudDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 129px;
        }
        .style2
        {
            width: 140px;
        }
        .style3
        {
            width: 34px;
        }
    .style4
    {
        width: 387px;
        height: 53px;
    }
        .style5
        {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td width="1200"  height="50">
<marquee>

<asp:Label ID="lblsession" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label></marquee>
</td>
</tr>
</table>

<table>
<tr>
<td>
    <asp:Label ID="Labelses" runat="server" Text="Label" Visible="False"></asp:Label></td>
</tr>
</table>
<table>
<tr>
<td>
<table>
<tr>
<td align="center" class="style4" headers="50">
    <asp:Label ID="Label13" runat="server" Text="Members Information" Font-Bold="True" ForeColor="#0000CC"></asp:Label></td>
</tr>
</table>
<table>

<tr>
<td class="style1" height="40"><asp:Label ID="Label1" runat="server" Text="Name" 
        Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
<td class="style3" height="40"></td>
<td class="style2" height="40"><asp:Label ID="Label12" runat="server" Text="RegNo" 
        Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblregno" runat="server" Text="Label"></asp:Label></td>
</tr>

<tr>
<td class="style1" height="40"><asp:Label ID="Label2" runat="server" 
        Text="Phone No" Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblphno" runat="server" Text="Label"></asp:Label></td>
<td class="style3" height="40"></td>
<td class="style2" height="40"><asp:Label ID="Label11" runat="server" Text="DOB" 
        Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lbldob" runat="server" Text="Label"></asp:Label></td>
</tr>


<tr>
<td class="style1" height="40"><asp:Label ID="Label4" runat="server" Text="Email" 
        Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label></td>
<td class="style3" height="40"></td>
<td class="style2" height="40"><asp:Label ID="Label9" runat="server" Text="Address" 
        Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lbladd" runat="server" Text="Label"></asp:Label></td>
</tr>

<tr>
<td class="style1" height="40"><asp:Label ID="Label6" runat="server" 
        Text="Department" Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lbldept" runat="server" Text="Label"></asp:Label></td>
<td class="style3" height="40"></td>
<td class="style2" height="40"><asp:Label ID="Label7" runat="server" Text="Year" 
        Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label></td>
</tr>

<tr>
<td class="style1" height="40"><asp:Label ID="Label8" runat="server" 
        Text="Company Name" Font-Bold="True"></asp:Label></td>

<td height="40"><asp:Label ID="lblcomname" runat="server" Text="Label"></asp:Label></td>
<td class="style3" height="40"></td>
<td class="style2" height="40"><asp:Label ID="Label5" runat="server" 
        Text="Designation" Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lbldeg" runat="server" Text="Label"></asp:Label></td>
</tr>

<tr>
<td class="style1" height="40"><asp:Label ID="Label3" runat="server" 
        Text="Experience" Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblexp" runat="server" Text="Label"></asp:Label></td>
<td class="style3" height="40"></td>
<td class="style2" height="40"><asp:Label ID="Label10" runat="server" 
        Text="Company Address" Font-Bold="True"></asp:Label></td>
<td height="40"><asp:Label ID="lblcomadd" runat="server" Text="Label"></asp:Label></td>
</tr>
</table>
</td>
<td class="style5"></td>
<td>
    <asp:Image ID="Image1" runat="server" Height="300" Width="200px" 
        ImageUrl="~/images/resume_clipart.jpg" /></td>
    <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="compname" HeaderText="compname" SortExpression="compname" />
                <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
                <asp:BoundField DataField="compaddress" HeaderText="compaddress" SortExpression="compaddress" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumni %>" SelectCommand="SELECT [compname], [designation], [exp], [compaddress] FROM [workdet] WHERE ([regno] = @regno)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblregno" Name="regno" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td>
</tr>
</table>

</asp:Content>

