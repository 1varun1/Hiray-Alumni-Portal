<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
        .style3
        {
            height: 18px;
        }
        .style4
        {
            width: 38px;
        }
        .style5
        {
            width: 116px;
        }
        .style6
        {
            height: 71px;
        }
        .style7
        {
            width: 25px;
        }
        .auto-style1 {
            width: 1340px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="height: 17px">
    <tr>
    <td bgcolor="#CD2F31" height="10" class="auto-style1"></td>
    </tr>
    </table>
    <table>
    <tr>
    <td>
    
    
    </td>
    <td width="1920"  height="50" align="center">
        <asp:Label ID="Label1" runat="server" 
            Text="Hiray Alumni Portal" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#0000CC"></asp:Label>

    </td>
    </tr>
    </table>
    <table>
    <tr>
    <td bgcolor="#0000CC" width="1920" height="10"></td>
    </tr>
    </table>
    <table>
    <tr>
    <td align="center">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Size="Large" Height="30px" onclick="LinkButton1_Click">Back</asp:LinkButton></td>
    </tr>
    </table>
    <table>
    <tr>
    <td width="1200" align="center" height="30"><asp:Label ID="Label12" runat="server" Text="Registeration Form" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
    </td>
    </tr>
    <tr>
    <td></td>
    </tr>
    </table>



    <table>
    <tr>
    <td> <asp:Image ID="Image1" runat="server" Height="249px" 
            ImageUrl="~/images/register_now_clipart.gif" Width="226px" style="margin-right: 0px" /></td>
            <td class="style4"></td>
    <td>
    <table>
    <tr>
    <td >

    <table style="height: 334px; width: 526px">
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Sign up as"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:DropDownList ID="dropcateg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dropcateg_SelectedIndexChanged">
                    <asp:ListItem>Alumni</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    <tr>
    <td height="50" align="left"><asp:Label ID="Label2" runat="server" Text="Reg No"></asp:Label>
    </td>
    <td height="50"></td>
    <td height="40"><asp:TextBox ID="txtregno" runat="server" Width="110px" 
            ontextchanged="txtregno_TextChanged"></asp:TextBox>
    </td>
    <td height="40">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtregno" 
            ValidationGroup="aa"></asp:RequiredFieldValidator>
        </td>
    <td height="40" align="left"><asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
    </td>
    <td height="40"><asp:TextBox ID="txtname" runat="server" Width="110px"></asp:TextBox>
    </td>
    <td class="style7"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtname" 
            ValidationGroup="aa"></asp:RequiredFieldValidator></td>
    </tr>


    <tr>
    
    <td height="40" align="left"><asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
    </td>
    <td></td>
    <td height="40">
        <asp:RadioButton ID="rdmale" runat="server" AutoPostBack="True" 
            Checked="True" GroupName="aa" Text="Male" />
        <asp:RadioButton ID="rdfemale" runat="server" AutoPostBack="True" 
            GroupName="aa" Text="Female" />
    </td>
    <td></td>
    <td height="50" align="left"><asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
    </td>
    
    <td height="40" align="left"><asp:TextBox ID="txtdob" runat="server" Width="110px"></asp:TextBox>
    </td>
    <td height="40" class="style7">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtdob" 
            ValidationGroup="aa"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cal.jpg" 
                Height="40px" onclick="ImageButton1_Click" />
            </td>
    </tr>

     <tr>
    <td height="50" align="left"><asp:Label ID="Label6" runat="server" Text="Phone No"></asp:Label>
    </td>
    <td height="50"></td>
    <td height="40" align="left"><asp:TextBox ID="txtphno" runat="server" Width="110px"></asp:TextBox>
    </td>
    <td height="40">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtphno" 
            ValidationGroup="aa"></asp:RequiredFieldValidator>
         </td>
    <td height="40" align="left"><asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
    </td>
    <td height="40" align="left"><asp:TextBox ID="txtemail" runat="server" 
            Width="110px"></asp:TextBox>
    </td>
    <td class="style7">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invaild" ControlToValidate="txtemail" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="aa" Font-Size="Small"></asp:RegularExpressionValidator>
         </td>
    </tr>

     <tr>
    <td height="50" align="left"><asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
    </td>
    <td height="50"></td>
    <td height="40" align="left"><asp:TextBox ID="txtaddress" runat="server" 
            TextMode="MultiLine" Width="110px"></asp:TextBox>
    </td>
    <td height="40">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtaddress" 
            ValidationGroup="aa"></asp:RequiredFieldValidator>
         </td>
    <td height="40" align="left"><asp:Label ID="Label9" runat="server" Text="Department"></asp:Label>
    </td>
    <td height="40" align="left">
        <asp:DropDownList ID="dddept" runat="server" Width="110px">
            <asp:ListItem>BE</asp:ListItem>
            <asp:ListItem>ME</asp:ListItem>
            <asp:ListItem>Btech</asp:ListItem>
            <asp:ListItem>Mtech</asp:ListItem>
            <asp:ListItem>Mphil</asp:ListItem>
            <asp:ListItem>BBA</asp:ListItem>
            <asp:ListItem>MBA</asp:ListItem>
            <asp:ListItem>BCA</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>
            <asp:ListItem Value="BSc">BSC</asp:ListItem>
            <asp:ListItem>MSc</asp:ListItem>
            <asp:ListItem>PHD</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>


     <tr>
    <td class="style1" height="50" align="left"><asp:Label ID="Label10" runat="server" 
            Text="Branch"></asp:Label>
    </td>
    <td class="style1" height="50"></td>
    <td class="style1" align="left"><asp:DropDownList ID="ddbranch" runat="server" 
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
    <td class="style1"></td>
    <td class="style1" align="left"><asp:Label ID="Label11" runat="server" Text="Year" Visible="False"></asp:Label>
    </td>
    <td class="style1" align="left">
        <asp:DropDownList ID="ddyear" runat="server" Width="110px" Visible="False">
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II</asp:ListItem>
            <asp:ListItem>III</asp:ListItem>
            <asp:ListItem>IV</asp:ListItem>
            <asp:ListItem>V</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    
     <tr>
    <td height="50" align="left"><asp:Label ID="Label13" runat="server" Text="Status" 
            Visible="False"></asp:Label>
    </td>
    <td height="50"></td>
    <td height="40" align="left">
        <asp:TextBox ID="txtstatus" runat="server" 
            TextMode="SingleLine" Width="110px" Visible="False">NotConfirmed</asp:TextBox>
    </td>
    </tr>
    </table>
    <table>
    <tr>
    <td class="style3"></td>
    </tr>
    </table>

    <table>
    <tr>
    <td width="200" align="right">
        <asp:Button ID="btnsave" runat="server" Text="Submit" onclick="btnsave_Click" 
            ValidationGroup="aa" Width="60px" 
             /></td>
    <td width="100" align="right"><asp:Button ID="Button2" runat="server" Text="Cancel" /></td>
    </tr>
    </table>
    </td>





    <td align="center" class="style5" valign="middle" >
    <table>
    <tr>
    <td>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="5pt" ForeColor="#663399" Height="125px" 
            Width="138px" Visible="False" BorderWidth="1px" 
            onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True">
            <DayHeaderStyle BackColor="#FFCC66" Height="1px" Font-Bold="True" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    </td>
    </tr>
    <tr>
    <td class="style6"></td>
    </tr>
    </table>
        
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
