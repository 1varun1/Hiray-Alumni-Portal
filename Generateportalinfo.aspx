<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Generateportalinfo.aspx.cs" Inherits="Generateportalinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 66px;
        }
        .style3
        {
            width: 104px;
        }
        .style4
        {
            width: 66px;
            height: 40px;
        }
        .style5
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td width="1200"  >
<marquee>
<asp:Label ID="lblses" runat="server" Text="Label" ForeColor="#FF66FF"></asp:Label>
<asp:Label ID="lblsession" runat="server" Text="Label" ForeColor="#FF66FF" Visible="False"></asp:Label></marquee>
    
    
    
</td>
</tr>
</table>


<table>
<tr>
<td>
    <asp:Image ID="Image1" runat="server" Height="250px" Width="300px" 
        ImageUrl="~/images/images info.jpg" /></td>
<td  align="center" width="800">
<table>
<tr>
<td height="50">
    <asp:Label ID="Label1" runat="server" Text="Portal Information" 
        Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
 </td>
</tr>
</table>

<table>
<tr>
<td>
<table>
<tr>
<td align="left">
    <asp:Label ID="Label2" runat="server" Text="Heading"></asp:Label></td>
<td class="style5">

</td>
<td align="left">
    <asp:TextBox ID="txtheading" runat="server" TextMode="MultiLine"></asp:TextBox></td>
<td class="style5">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ValidationGroup="aa" ControlToValidate="txtheading" 
        ForeColor="Red"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td height="40" align="left">
    <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label></td>
<td height="40">

</td>
<td align="left">
    <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ValidationGroup="aa" ControlToValidate="txtmsg" 
        ForeColor="Red"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td align="left" height="40">
    <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label></td>
     
<td height="40">

</td>
<td align="left">
    <asp:TextBox ID="txtdate" runat="server" Width="178px"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*" ControlToValidate="txtdate" ValidationGroup="aa" 
            ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cal.jpg" 
                Height="40px" onclick="ImageButton1_Click" />
            </td>
</tr>
<tr>
<td class="style2">
    <asp:Label ID="Label5" runat="server" Text="Upload File"></asp:Label></td>
<td></td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" /></td>

</tr>

</table>
<table>
<tr>
<td class="style3"></td>
</tr>
<tr>
<td class="style3"></td>
<td>
    <asp:Button ID="btnsend" runat="server" Text="Send" onclick="btnsend_Click" 
        BackColor="White" Font-Bold="True" ForeColor="#0000CC" 
        ValidationGroup="aa" /></td>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancel" Font-Bold="True" 
        BackColor="White" ForeColor="#0000CC" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
<td valign="bottom">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Utsaah" Font-Size="8pt" 
        ForeColor="#003399" Height="135px" 
        onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="143px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    </td>
</tr>
</table>
</asp:Content>

