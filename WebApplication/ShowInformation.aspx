<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowInformation.aspx.cs" Inherits="WebApplication.ShowInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p id="Username" class="fw-lighter fs-4 my-2 p-2" runat="server"></p>
            <p id="Password" class="fw-lighter fs-4 my-2 p-2" runat="server"></p>
            <asp:Button ID="Logout" runat="server" CssClass="btn btn-outline-danger rounded-pill" Text="Logout" OnClick="Logout_Click"/>
        </div>
    </form>
</body>
</html>
