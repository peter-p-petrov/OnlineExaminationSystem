<%@ Page Title="Контакт" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="Default.aspx">Начало</a>
            <a class="nav-item nav-link" href="Student.aspx">Студенти</a>
            <a class="nav-item nav-link" href="About.aspx">За нас</a>
            <a class="nav-item nav-link" href="ModelQuestion.aspx">Примерни въпроси</a>
            <a class="nav-item nav-link" href="UserHelp.aspx">Помощ</a>
            <a class="nav-item nav-link active" href="Contact.aspx">Контакт<span class="sr-only">(current)</span></a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="text-center h3 mb-3 font-weight-normal">Свържи се с нас</h1>
    <div class="form-group">
        <label for="txtUsername" class="sr-only">Име:</label>
        <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Име" required="required" />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Полето е задължително">*</asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="txtEmail" class="sr-only">Имейл</label>
        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Имейл" required="required" />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic"
            ErrorMessage="Полето е задължително">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ControlToValidate="txtEmail" Display="Dynamic"
            ErrorMessage="Моля, въведете валиден имейл" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="txtSubject" class="sr-only">Дисциплина:</label>
        <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="Дисциплина" required="required" />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txtSubject"
            ErrorMessage="Полето е задължително">*</asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="txtComment" class="sr-only">Коментар:</label>
        <asp:TextBox ID="txtComment" runat="server" class="form-control" placeholder="Коментар" required="required" Height="80px" TextMode="MultiLine" />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
            ControlToValidate="txtComment"
            ErrorMessage="Полето е задължително">*</asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            HeaderText="Моля, коригирайте невалидните полета:"
            Style="text-align: left; color: #FF0000" />

        <asp:Label ID="Label1" runat="server" />
    </div>

    <asp:Button ID="btnSubmit" runat="server" class="btn btn-lg btn-primary btn-block" Text="Изпрати" OnClick="btnSubmit_Click" />
</asp:Content>