<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentPicnic.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Computer Department Student Picnic</h1>
        </div>
        <p>
            First Name:
            <asp:TextBox ID="TxtFName" runat="server"></asp:TextBox>
        </p>
        <p>
            Last Name:
            <asp:TextBox ID="TxtLName" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:CheckBox ID="ChkVeg" runat="server" Text="I am a vegetarian" />
        </p>
        <p>
            <asp:Button ID="BtnConfirm" runat="server" OnClick="BtnConfirm_Click" Text="Confirm" />
        </p>
        <p>
            <asp:Label ID="LblMessage" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
