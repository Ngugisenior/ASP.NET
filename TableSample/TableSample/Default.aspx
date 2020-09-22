<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TableSample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Table Test</h1>
            <p>
                Rows:
                <asp:TextBox ID="TxtRows" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Collumns:&nbsp;
                <asp:TextBox ID="TxtColumns" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:CheckBox ID="ChkBorder" runat="server" Text=" Put Border Around cells" />
            </p>
            <p>
                <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Create" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Table ID="Table1" runat="server">
                </asp:Table>
            </p>
        </div>
    </form>
</body>
</html>
