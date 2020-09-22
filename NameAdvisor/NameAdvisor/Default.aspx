<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NameAdvisor.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Name Advisor</h1>
            <asp:Panel ID="PnlStart" runat="server">
                Who would you like to give a name?
                <asp:RadioButtonList ID="LstGirlOrBoy" runat="server" AutoPostBack="true" OnSelectedIndexChanged="LstGirlOrBoy_SelectedIndexChanged">
                    <asp:ListItem Text="Girl" />
                    <asp:ListItem Text="Boy" />
                </asp:RadioButtonList>
            </asp:Panel>
            <p></p>
            <asp:Panel ID="PnlGirls" runat="server" Visible="false">
                You want to give a girl name. Whats your choice?
                <asp:CheckBoxList ID="ChklGirls" runat="server" OnSelectedIndexChanged="ChklGirls_SelectedIndexChanged">
                    <asp:ListItem>Liz</asp:ListItem>
                    <asp:ListItem>Caroline</asp:ListItem>
                    <asp:ListItem>Annet</asp:ListItem>
                    <asp:ListItem>Stacy</asp:ListItem>
                    <asp:ListItem>Anna</asp:ListItem>
                    <asp:ListItem>Samantha</asp:ListItem>
                </asp:CheckBoxList>
                <asp:Button ID="BtnBackToStart" Text="Back" runat="server" OnClick="BtnBackToStart_Click" />
            </asp:Panel>

            <asp:Panel ID="PnllBoys" runat="server" Visible="false">
                You want to give a Boy name. Whats your choice?
                <asp:CheckBoxList ID="ChklBoys" runat="server" OnSelectedIndexChanged="ChklBoys_SelectedIndexChanged">
                    <asp:ListItem>Eric</asp:ListItem>
                    <asp:ListItem>John</asp:ListItem>
                    <asp:ListItem>Joseph</asp:ListItem>
                    <asp:ListItem>Peter</asp:ListItem>
                    <asp:ListItem>Sam</asp:ListItem>
                    <asp:ListItem>Dan</asp:ListItem>
                </asp:CheckBoxList>
                <asp:Button ID="BtnBack" Text="Back" runat="server" OnClick="BtnBack_Click" />
            </asp:Panel>
            <p></p>
            <p>The Selected Names:<br /></p>
            <asp:ListBox ID="LstChoiceList" width="180px" runat="server" OnSelectedIndexChanged="LstChoiceList_SelectedIndexChanged">
            </asp:ListBox>
        </div>
    </form>
</body>
</html>
