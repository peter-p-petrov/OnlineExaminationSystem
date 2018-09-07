<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="ChangePasswordStudent.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/card.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="MyProfile.aspx">Профил</a>
            <a class="nav-item nav-link active" href="ChangePasswordStudent.aspx">Смени парола<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="Exam.aspx">Тестове</a>
            <a class="nav-item nav-link" href="Student.aspx">Излез</a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="card">
        <h1 class="h3 mb-3 font-weight-normal">Смени парола</h1>
        <div class="form-group">
            <label for="txtCurrentPassword" class="sr-only">Текуща парола:</label>
            <asp:TextBox ID="txtCurrentPassword" class="form-control" runat="server" TextMode="Password" placeholder="Текуща парола" required="required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCurrentPassword" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
        </div>

        <div class="form-group">
            <label for="txtNewPassword" class="sr-only">Нова парола:</label>
            <asp:TextBox ID="txtNewPassword" class="form-control" runat="server" TextMode="Password" placeholder="Нова парола" required="required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
        </div>

        <div class="form-group">
            <label for="txtConfirmNewPassword" class="sr-only">Потвърди новата парола:</label>
            <asp:TextBox ID="txtConfirmNewPassword" class="form-control" runat="server" TextMode="Password" placeholder="Потвърди новата парола" required="required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmNewPassword" ErrorMessage="Паролите трябва да съвпадат" Style="color: #FF0000" />
        </div>

        <asp:Button ID="btnUpdate" runat="server" class="btn btn-lg btn-primary btn-block" Text="Смени" OnClick="btnUpdate_Click" />

        <asp:Button ID="btnCancel" runat="server" class="btn btn-lg btn-primary btn-block" Text="Отмени" />

        <div class="form-group">
            <label for="lblMessage">&nbsp;</label>
            <asp:Literal ID="lblMessage" runat="server" />
        </div>
    </div>
</asp:Content>
