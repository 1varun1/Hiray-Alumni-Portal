<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style11
        {
            width: 1200px;
        }
        .style17
        {
            width: 40px;
        }
        .style18
        {
            height: 36px;
        }
        .style19
        {
            width: 128px;
        }
        .style20
        {
            height: 36px;
            width: 128px;
        }
        .style21
        {
            width: 132px;
        }
        .style22
        {
            height: 9px;
        }
        .style25
        {
            height: 5px;
        }
        .style26
        {
            height: 35px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="height: 17px">
    <tr>
    <td bgcolor="#CD2F31" width="1920" height="10"></td>
    </tr>
    </table>
    <table>
    <tr>
    
    <td width="1920"  height="60" align="center">
        <asp:Label ID="Label1" runat="server" 
            Text="Hiray Alumni Portal" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#0000CC"></asp:Label></td>
    </tr>
    </table>
    <table>
    <tr>
    <td bgcolor="#0000CC" width="1920" height="10"></td>
    </tr>
    </table>

   
    
    <table align="center" style="width: 862px">
    <tr>
    <td class="style21"></td>
    <td>
        <asp:Image ID="Image1" runat="server" Width="344px" Height="312px" 
            ImageUrl="~/images/meet.png" /></td>
    <td align="center" class="style11">
    <table>
    <tr>
    <td >
    <fieldset style="border: medium solid #0000CC; width: 306px;">
    <legend>
        <asp:Label ID="Label5" runat="server" Text="Login" Font-Bold="True" 
            Font-Size="Large" ForeColor="#0000CC"></asp:Label></legend>
    <table style="width: 249px">
   <%-- <tr>
    <td align="center"></td>
    </tr>--%>
    <tr>
    <td align="center" height="30" >
    <table style="width: 267px">
    <%--<tr>
   
    <td><asp:RadioButton ID="rdadmin" runat="server" AutoPostBack="True" 
            Checked="True" Font-Bold="True" ForeColor="#0000CC" GroupName="aa" 
            Text="Admin" /></td>
    
    <td align="left">
        <asp:RadioButton ID="rdstud" runat="server" AutoPostBack="True" 
            Font-Bold="True" ForeColor="#0000CC" GroupName="aa" Text="Alumni" />

    </td>
         <td >
             <asp:RadioButton ID="rdcurrstud" runat="server" AutoPostBack="True" 
            Font-Bold="True" ForeColor="#0000CC" GroupName="aa" Text="Student" />
         </td>
    </tr>--%>
    </table>
    </td>
    
    </tr>
    </table>
    <table>
   <%-- <tr>
    <td class="style22"></td>
    </tr>--%>
    <tr>
    <td height="30"><asp:Label ID="Label2" runat="server" Text="Username" 
            Font-Bold="True"></asp:Label>
    </td>
    <td headers="30"></td>
    <td headers="30" class="style19"><asp:TextBox ID="txtusername" runat="server" 
            Width="115px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td class="style25"></td>
    </tr>
    <tr>
    <td class="style18"><asp:Label ID="Label3" runat="server" 
            Text="Password" Font-Bold="True"></asp:Label>
    </td>
    <td class="style18" headers="30"></td>
    <td class="style20" headers="30">
        <asp:TextBox ID="txtpwd" runat="server" 
            Width="115px" TextMode="Password"></asp:TextBox>
    </td>
    </tr>
    </table>



    <table>
    <tr>
    <td align="right" width="150" class="style26">
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="White" 
            BorderColor="White" Font-Bold="True" ForeColor="#0000CC" 
            onclick="Button1_Click" />
    </td>
    <td align="right" width="60" class="style26">
        <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="White" 
            BorderColor="White" Font-Bold="True" ForeColor="#0000CC" /></td>
    </tr>
    
    </table>


    <table>
    <tr>
    <td width="260" align="right" height="40"> <asp:Label ID="Label4" runat="server" Text="If You Want Join in Alumni"></asp:Label>
        &nbsp;
        <asp:Button ID="Button3" runat="server" Text="Sign Up" BackColor="White" BorderColor="White" Font-Bold="True" Font-Names="Cambria" ForeColor="#3333CC" OnClick="Button3_Click" style="height: 25px" />
    &nbsp;</td>
    
    </tr>
    </table>

    
    </fieldset>
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
