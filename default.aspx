<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="openai._default"  Async="true"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <style>

        body {
            background-image: url('images/Jotun.jpg');
            vertical-align: central;
            align-items:center;
            align-content:center;
        }
  
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div >
            <table border="0" width="100%" >
                
                <tr><td align="center">
                    <h1>
                    Ask Jotun_AI about Colors
                        </h1>
                    </td></tr>
                <tr><td align="center">
            <table border="0"   >
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="350px" Height="50px"></asp:TextBox></td>
                    <td>
                      &nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" class="btn btn-primary btn-lg" />&nbsp; </td>
                </tr>
                <tr>
                    <td>
                        
                        <asp:TextBox ID="TextBox2" runat="server" Width="550px" ReadOnly="True" Rows="10" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                    </td>
                </tr>

            </table>
                </td></tr></table>



        </div>
    </form>
</body>
</html>
