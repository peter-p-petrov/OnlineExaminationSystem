<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ChangePasswordMember.aspx.cs" Inherits="ChangePasswordMember" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/card.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav collapse navbar-collapse">
            <a class="nav-item nav-link" href="Home.aspx">Начало</a>
            <a class="nav-link dropdown-toggle active" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Настройки<span class="sr-only">(current)</span></a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="ManageStudent.aspx">Студенти</a>
                <a class="dropdown-item" href="Member.aspx">Преподаватели</a>
                <a class="dropdown-item" href="ChangePasswordMember.aspx">Смени парола</a>
            </div>
            <a class="nav-item nav-link" href="Faculty.aspx">Факултети</a>
            <a class="nav-item nav-link" href="Subject.aspx">Дисциплини</a>
            <a class="nav-item nav-link" href="DisplayQuestion.aspx">Въпроси</a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <div id="cardChangePassMember" class="card">
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
    </center>

    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>
