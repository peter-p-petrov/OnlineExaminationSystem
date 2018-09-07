<%@ Page Title="Профил" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Styles/card.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="MyProfile.aspx">Профил<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="ChangePasswordStudent.aspx">Смени парола</a>
            <a class="nav-item nav-link" href="Exam.aspx">Тестове</a>
            <a class="nav-item nav-link" href="Student.aspx">Излез</a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="card">
                <img src="<%# Eval("Photo") %>" alt="" width="200px" height="250px" style="width: 100%">
                <h1><%# Eval("Name") %></h1>
                <p class="title">ID: <%# Eval("StudentID") %></p>
                <p class="title">Факултетен номер: <%# Eval("RollNumber") %></p>
                <p class="title">Потребителско име: <%# Eval("Username") %></p>
                <p class="title">Факултет: <%# Eval("Faculty") %></p>
                <p class="title">Семестър: <%# Eval("Semester") %></p>
                <p class="title">Имейл адрес: <%# Eval("Email") %></p>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
