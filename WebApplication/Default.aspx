
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <form>
            <div class="my-3">
                <p class="fw-lighter fs-4 mb-0 d-inline">Username:</p>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            </div>
            <div class="my-3">
                <p class="fw-lighter fs-4 m-0 d-inline">Password:</p>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="Login" runat="server" Text="Login" CssClass="btn btn-info rounded-pill py-3 px-5" OnClick="Login_Click"/>
        </form>
    </main>

</asp:Content>
