<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DogApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/DogStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">DOG Hotel</h1>
        </div>
        <p>
            Dear Visitor!</p>
        <p>
            During your holiday we take care of your dog. Take advantage of our services, you will not be dissapointed!</p>
        <p class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="~/Images/DogHotel_logo.jpg" Width="264px" />
        </p>
        <p class="auto-style2">
            Start Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Date:</p>
        <p class="auto-style2">
            <asp:TextBox ID="TxtStartDate" runat="server" TextMode="Date"></asp:TextBox>
&nbsp; Enter the start date!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEndDate" runat="server" TextMode="Date"></asp:TextBox>
            Enter the End date!
            <asp:CompareValidator ID="CmpValidate" runat="server" ControlToCompare="TxtStartDate" ControlToValidate="TxtEndDate" Display="Dynamic" ErrorMessage="The start date is greater than the end date!" ForeColor="Red" Operator="GreaterThanEqual"></asp:CompareValidator>
        </p>
        <p class="auto-style2">
            <strong>Meal:</strong></p>
        <p class="auto-style2">
            <asp:RadioButtonList ID="RdbMealLists" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Providing Meal</asp:ListItem>
                <asp:ListItem>Home Delivery food</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p class="auto-style2">
            <strong>Choose from extra services!</strong></p>
        <p class="auto-style2">
            <asp:CheckBoxList ID="ChkExtraServices" runat="server">
                <asp:ListItem>Walking on a leash</asp:ListItem>
                <asp:ListItem>Diet for fat dogs</asp:ListItem>
                <asp:ListItem>Dog cosmetics</asp:ListItem>
                <asp:ListItem>Postoperation care</asp:ListItem>
                <asp:ListItem>Transport</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            <strong>Daily care Fee:</strong>&nbsp;
            <asp:Label ID="LblPrice" runat="server"></asp:Label>
            .</p>
        <p>
            Customer&#39;s Data</p>
        <p>
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfdName" runat="server" ControlToValidate="TxtName" ErrorMessage="Enter your name please!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Email Address:&nbsp;&nbsp;
            <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfdEmail" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Enter Your Email address please!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevEmail" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Invalid E-mail address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="BtnSubmit" runat="server" BackColor="#3366FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="BtnSubmit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnExit" runat="server" BackColor="#3366FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="BtnExit_Click" Text="Cancel" />
        </p>
    </form>
</body>
</html>
