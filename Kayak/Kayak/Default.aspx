<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kayak.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Sign up for Kayak Tour</h2>
            <p>
                Select the type of tour:</p>
            <p>
                <asp:RadioButtonList ID="RdbList" runat="server" RepeatDirection="Horizontal" CausesValidation="True">
                    <asp:ListItem>Half Day</asp:ListItem>
                    <asp:ListItem>Full Day</asp:ListItem>
                    <asp:ListItem>Overnight</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p>
                Select the type of Kayak:&nbsp;
                <asp:DropDownList ID="DrpList" runat="server" Height="16px" Width="150px" CausesValidation="True">
                    <asp:ListItem>Whitewater Kayaks</asp:ListItem>
                    <asp:ListItem>Flat water</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                Optional Equipment:</p>
            <p>
                <asp:CheckBoxList ID="ChkBoxList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Quick-inflate Life vest</asp:ListItem>
                    <asp:ListItem>Fishing Pole</asp:ListItem>
                    <asp:ListItem>Waterproof Container</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p>
                Select the date:</p>
            <p>
                <asp:Calendar ID="Cal" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
            </p>
            <p>
                <asp:Label ID="LblConfirmation" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
