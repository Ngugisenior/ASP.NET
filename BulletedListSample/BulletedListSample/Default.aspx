<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BulletedListSample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bullet Styles</h1>
            <asp:BulletedList ID="BlStyles" runat="server" BulletStyle="Numbered" DisplayMode="LinkButton" OnClick="BlStyles_Click">
            </asp:BulletedList>
            <asp:Label ID="LblMessage" runat="server"></asp:Label>
        </div>
        
    </form>
</body>
</html>
