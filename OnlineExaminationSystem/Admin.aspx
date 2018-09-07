<%@ Page Title="Преподаватели" Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="h3 mb-3 font-weight-normal">Вход за преподаватели</h1>
    <div class="form-group">
        <label for="txtUsername" class="sr-only">Потребителско име:</label>
        <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Потребителско име" required="required" autofocus="autofocus" />
    </div>

    <div class="form-group">
        <label for="txtPassword" class="sr-only">Парола:</label>
        <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Парола" required="required" />
    </div>

    <div class="form-group">
        <label for="ltrMessage">&nbsp;</label>
        <asp:Literal ID="ltrMessage" runat="server" />
    </div>

    <asp:Button ID="btnLogin" runat="server" class="btn btn-lg btn-primary btn-block" Text="Влез" OnClick="btnLogin_Click" />
</asp:Content>
