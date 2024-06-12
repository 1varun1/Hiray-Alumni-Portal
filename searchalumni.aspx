<%@ Page Title="" Language="C#" MasterPageFile="~/Currentstudent.master" AutoEventWireup="true" CodeFile="searchalumni.aspx.cs" Inherits="searchalumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 497px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Search Alumni"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="radiocompany" runat="server" Text="Company wise" AutoPostBack="True" GroupName="alumni" OnCheckedChanged="radiocompany_CheckedChanged" />
            </td>
            <td>
                <asp:RadioButton ID="radiodept" runat="server" Text="Department Wise" AutoPostBack="True" GroupName="alumni" OnCheckedChanged="radiodept_CheckedChanged" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Select Company Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dropcompany" runat="server" DataSourceID="SqlDataSource1" DataTextField="companyname" DataValueField="companyname"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumni %>" SelectCommand="SELECT [companyname] FROM [register] WHERE ([companyname] IS NOT NULL)"></asp:SqlDataSource>
                </td>
            </tr>
           <tr>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
               </td>
           </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="793px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                            <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
                            <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch" />
                            <asp:BoundField DataField="companyname" HeaderText="Companyname" SortExpression="companyname" />
                            <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
                            <asp:BoundField DataField="experience" HeaderText="Experience" SortExpression="experience" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumni %>" SelectCommand="SELECT [name], [phone], [email], [address], [department], [branch], [companyname], [designation], [experience] FROM [register] WHERE ([companyname] = @companyname)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropcompany" Name="companyname" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false">
         <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Select Course Name"></asp:Label>
                </td>
                <td>
                   <asp:DropDownList ID="ddbranch" runat="server" 
            Width="110px">
       <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>EEE</asp:ListItem>
        <asp:ListItem>Civil</asp:ListItem>
        <asp:ListItem>Bio Tech</asp:ListItem>
        <asp:ListItem>Auto Mobile</asp:ListItem>
         <asp:ListItem>Computer Technology</asp:ListItem>
        <asp:ListItem>Information Technology</asp:ListItem>
        <asp:ListItem>Computer Applications</asp:ListItem>
        <asp:ListItem>Computer Science</asp:ListItem>
        <asp:ListItem>Software Engineering</asp:ListItem>
        <asp:ListItem>Mathematics</asp:ListItem>
        <asp:ListItem>Physics</asp:ListItem>
        <asp:ListItem>Science</asp:ListItem>
                       </asp:DropDownList>
                </td>
            </tr>
           <tr>
               <td>
                   <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button1_Click" />
               </td>
           </tr>
        </table>
        <table>
            <tr>
                <td style="font-weight: bold">
                    Current Company List
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Vertical" Width="793px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                            <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
                            <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch" />
                            <asp:BoundField DataField="companyname" HeaderText="Companyname" SortExpression="companyname" />
                            <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
                            <asp:BoundField DataField="experience" HeaderText="Experience" SortExpression="experience" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:alumni %>" SelectCommand="SELECT [name], [phone], [email], [address], [department], [branch], [companyname], [designation], [experience] FROM [register] WHERE (([branch] = @branch) AND ([categ] = @categ))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddbranch" Name="branch" PropertyName="SelectedValue" Type="String" />
                            <asp:Parameter DefaultValue="Alumni" Name="categ" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">
                    Old Company List
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="Vertical" Width="792px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="regno" HeaderText="REG No" SortExpression="regno" />
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="compname" HeaderText="Company Name" SortExpression="compname" />
                            <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
                            <asp:BoundField DataField="exp" HeaderText="Experience" SortExpression="exp" />
                            <asp:BoundField DataField="compaddress" HeaderText="Company Address" SortExpression="compaddress" />
                            <asp:BoundField DataField="cdate" HeaderText="Status Date" SortExpression="cdate" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:alumni %>" SelectCommand="SELECT [regno], [name], [compname], [designation], [exp], [compaddress], [cdate] FROM [workdet] WHERE ([dept] = @dept)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddbranch" Name="dept" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

