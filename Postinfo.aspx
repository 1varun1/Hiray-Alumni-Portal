<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Postinfo.aspx.cs" Inherits="Postinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            height: 62px;
            width: 187px;
        }
        .style15
        {
            width: 10px;
        }
        .style17
        {
            width: 357px;
        }
        .style18
        {
            width: 114px;
        }
        .style19
        {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<table>
<tr>
<td width="1200" ><marquee>
    <asp:Label ID="lblses" runat="server" Text="Label" ForeColor="#FF66FF">
    <asp:Label ID="lblsession" runat="server" Text="Label" Visible="False"></asp:Label></asp:Label></marquee></td>
</tr>
</table>

<table>
<tr>
<td align="center" class="style17" >
<table>

<tr>
<td height="60">
    <asp:Label ID="Label1" runat="server" Text="Post Information" Font-Bold="True" ForeColor="#0000CC" Font-Size="Large"></asp:Label></td>
</tr>
</table>
<table style="font-size: small; font-weight: bold; width: 355px;">

<tr>
<td align="left" class="style18" ><asp:Label ID="Label4" runat="server" Text="Heading"></asp:Label>
</td>

<td align="left" class="style19" ><asp:TextBox ID="txtheading" runat="server"></asp:TextBox></td>
<td >
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="txtheading" ForeColor="Red" 
        ValidationGroup="aa"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td valign="top" align="left" class="style18"><asp:Label ID="Label2" runat="server" Text="Type Your Message">
</asp:Label></td>

<td align="left" class="style19" > <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Height="126px" 
        Width="186px"></asp:TextBox></td>
<td class="style15">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="txtheading" ForeColor="Red" 
        ValidationGroup="aa"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td align="left"><asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
<td align="left"><asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cal.jpg" 
                Height="40px" onclick="ImageButton1_Click"  />
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
        ControlToValidate="txtdate" runat="server" ErrorMessage="*" 
        ValidationGroup="aa" ForeColor="Red"></asp:RequiredFieldValidator></td>

</tr>

<tr>
<td align="left" class="style18"><asp:Label ID="Label3" runat="server" Text="Upload File"></asp:Label></td>

<td class="style14" align="left" ><asp:FileUpload ID="FileUpload1" runat="server" 
        Width="216px" /></td>
</tr>
</table>

<table>
<tr>
<td></td>
<td><asp:Button ID="btnpost" runat="server" Text="Post" onclick="btnpost_Click" 
        BackColor="White" Font-Bold="True" ForeColor="#0000CC" ValidationGroup="aa" /></td>
<td><asp:Button ID="btncan" runat="server" Text="Cancel" BackColor="White" 
        Font-Bold="True" ForeColor="#0000CC" /></td>
</tr>
</table>
</td>
<td valign="bottom">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Utsaah" Font-Size="Smaller" 
        ForeColor="#003399" Height="136px" 
        onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="81px">
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
<td >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="Inset" BorderWidth="4px" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" 
        Font-Size="Small" onrowdeleting="GridView1_RowDeleting" Width="652px" 
         >
        <Columns>
            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name" SortExpression="username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="65px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Heading" SortExpression="heading">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("heading") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("heading") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Message" SortExpression="message">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("message") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("message") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date" SortExpression="date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="60px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image Name" SortExpression="imgname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("imgname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("imgname") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="75px" />
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
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
        SelectCommand="SELECT * FROM [portalinfo] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="sname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>

</tr>
</table>


</asp:Content>

