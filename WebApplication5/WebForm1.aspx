<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 120px;
        }
        .auto-style2 {
            width: 606px;
        }
    </style>
</head>
<body align ="center">
    <form id="form1" runat="server">
        <div>
            Student Registration Form
            <br/>

            <table align ="Center" class="auto-style2">
                <tr>
                    <td align ="left">
                         <asp:Label ID="Label1" runat="server" Text="First name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td align="left">
                         <asp:Label ID="Label7" runat="server" Text="Second name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td align="left">
                         <asp:Label ID="Label9" runat="server" Text="Phone Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td align="left">
                         <asp:Label ID="Label10" runat="server" Text="Email ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td align="left" class="auto-style1">
                         <asp:Label ID="Label11" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td align="left">
                        Date of Birth</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                    </td>
                </tr>
                 <tr>
                    <td align="left">
                         
                        &nbsp;</td>
                    <td align="left">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
       
        
      
    </form>
</body>
</html>
