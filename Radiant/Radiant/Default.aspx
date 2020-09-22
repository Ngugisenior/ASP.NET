<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Radiant.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registration Form</h1>
            <p>
                First Name:&nbsp;&nbsp;
                <asp:TextBox ID="TxtFirstName" runat="server" BorderStyle="Outset" BorderWidth="2px" ForeColor="Fuchsia" Height="22px" Width="202px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtLastName" runat="server" BorderStyle="Inset" BorderWidth="2px" ForeColor="#CC33FF" Width="191px"></asp:TextBox>
            </p>
            <p>
                Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtEmail" runat="server" BorderStyle="Inset" BorderWidth="2px" ForeColor="#FF33CC" Height="18px" Width="203px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone Number:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtPhoneNumber" runat="server" BorderStyle="Inset" BorderWidth="2px" ForeColor="#CC66FF" Width="190px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="BtnSubmit" runat="server" BackColor="#3366FF" BorderColor="#3366CC" BorderStyle="Outset" BorderWidth="4px" Font-Bold="True" Font-Size="Large" ForeColor="#CCFFFF" Height="38px" OnClick="BtnSubmit_Click" Text="Submit" Width="132px" />
            </p>
            <p>
            </p>
            <asp:Panel ID="PanelBox" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="LinqDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Type" HeaderText="Type" ReadOnly="True" SortExpression="Type" />
                        <asp:CheckBoxField DataField="HasValues" HeaderText="HasValues" ReadOnly="True" SortExpression="HasValues" />
                        <asp:BoundField DataField="Path" HeaderText="Path" ReadOnly="True" SortExpression="Path" />
                    </Columns>
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource" runat="server" ContextTypeName="Newtonsoft.Json.Linq.JObject" EntityTypeName="" TableName="First">
                </asp:LinqDataSource>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
