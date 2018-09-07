<%@ Page Title="Портал за преподаватели" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav collapse navbar-collapse">
            <a class="nav-item nav-link active" href="Home.aspx">Начало<span class="sr-only">(current)</span></a>
            <a class="nav-link dropdown-toggle" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Настройки</a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="ManageStudent.aspx">Студенти</a>
                <a class="dropdown-item" href="Member.aspx">Преподаватели</a>
            <a class="dropdown-item" href="ChangePasswordMember.aspx">Промени парола</a>
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
    <div style="margin-top: 100px;">
        <h1 style="margin: 0; padding: 0; text-align: center;" class="style4">Добре дошли в портала за преподаватели</h1>
        <p style="margin: 0; padding: 0;" class="style3">
            &nbsp;
        </p>
        <p style="margin: 0; padding: 0;" class="style3">
            &nbsp;
        </p>
        <p style="margin: 0; padding: 0;" class="style3">
            &nbsp;
        </p>
        <p style="margin: 0; padding: 0;" class="style3">
            &nbsp;
        </p>
        <p style="margin: 0; padding: 0;" class="style3">
            &nbsp;
        </p>
        <p style="margin: 0; padding: 0;" class="style3">
            &nbsp;
        </p>
        <p style="margin: 0; padding: 0; text-align: center;">&nbsp;</p>
    </div>

    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>

