<%@ Page Title="Студенти" Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="student" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="Default.aspx">Начало</a>
            <a class="nav-item nav-link active" href="Student.aspx">Студенти<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="About.aspx">За нас</a>
            <a class="nav-item nav-link" href="ModelQuestion.aspx">Примерни въпроси</a>
            <a class="nav-item nav-link" href="UserHelp.aspx">Помощ</a>
            <a class="nav-item nav-link" href="Contact.aspx">Контакт</a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="h3 mb-3 font-weight-normal">Вход за студенти</h1>
    <div class="form-group">
        <label for="txtUsername" class="sr-only">Факултетен номер:</label>
        <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Факултетен номер" required="required" autofocus="autofocus" />
    </div>

    <div class="form-group">
        <label for="txtPassword" class="sr-only">Парола:</label>
        <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Парола" required="required" />
    </div>

    <div class="form-group">
        <label for="ddlFaculty" class="sr-only">Факултет:</label>
        <asp:DropDownList ID="ddlFaculty" runat="server" />
    </div>

    <div class="form-group">
        <label for="ddlSemester" class="sr-only">Семестър:</label>
        <asp:DropDownList ID="ddlSemester" runat="server">
            <asp:ListItem>1st Semester</asp:ListItem>
            <asp:ListItem>2nd Semester</asp:ListItem>
            <asp:ListItem>3rd Semester</asp:ListItem>
            <asp:ListItem>4th Semester</asp:ListItem>
            <asp:ListItem>5th Semester</asp:ListItem>
            <asp:ListItem>6th Semester</asp:ListItem>
            <asp:ListItem>7th Semester</asp:ListItem>
            <asp:ListItem>8th Semester</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label for="ltrMessage">&nbsp;</label>
        <asp:Literal ID="ltrMessage" runat="server" />
    </div>

    <asp:Button ID="btnLogin" runat="server" class="btn btn-lg btn-primary btn-block" Text="Влез" OnClick="btnLogin_Click" />
</asp:Content>
