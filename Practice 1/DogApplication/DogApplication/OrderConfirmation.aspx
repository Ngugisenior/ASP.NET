<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="DogApplication.OrderConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/DogStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>Order Confirmation</h1>
        </div>
        <p>
            Dear
            <asp:Label ID="LblName" runat="server"></asp:Label>
&nbsp;thank you for your order.</p>
        <p>
            You choose
            <asp:Label ID="LblChoice" runat="server"></asp:Label>
&nbsp;with
            <asp:Label ID="LblCheckList" runat="server"></asp:Label>
&nbsp;extra services.</p>
        <p>
            The total fee for
            <asp:Label ID="LblDays" runat="server"></asp:Label>
&nbsp;days is
            <asp:Label ID="LblFee" runat="server"></asp:Label>
&nbsp;.</p>
    </form>
</body>
</html>
