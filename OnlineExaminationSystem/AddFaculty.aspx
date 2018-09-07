<%@ Page Title="Добави факултет" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="AddFaculty" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/card.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav collapse navbar-collapse">
            <a class="nav-item nav-link" href="Home.aspx">Начало</a>
            <a class="nav-link dropdown-toggle" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Настройки</a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="ManageStudent.aspx">Студенти</a>
                <a class="dropdown-item" href="Member.aspx">Преподаватели</a>
                <a class="dropdown-item" href="ChangePasswordMember.aspx">Сменя на парола</a>
            </div>
            <a class="nav-item nav-link active" href="Faculty.aspx">Факултет<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="Subject.aspx">Дисциплина</a>
            <a class="nav-item nav-link" href="DisplayQuestion.aspx">Въпроси</a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <div id="cardEditStudent" class="card">
            <h1 class="h3 mb-3 font-weight-normal">Добави факултет</h1>

            <div class="form-group">
                <label for="txtFacultyID" class="sr-only">ID на факултет:</label>
                <asp:TextBox ID="txtFacultyID" runat="server" class="form-control" placeholder="ID на факултет" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Полето е задължително" Style="color: #FF0000" ControlToValidate="txtFacultyID" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFacultyID" Display="Dynamic" ErrorMessage="Invalid Faculty ID" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <div class="form-group">
                <label for="txtFaculty" class="sr-only">Име на факултет:</label>
                <asp:TextBox ID="txtFaculty" runat="server" class="form-control" placeholder="Име на факултет" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Полето е задължително" Style="color: #FF0000" ControlToValidate="txtFaculty" />
            </div>

            <div class="form-group">
                <label for="ddlDuration" class="sr-only">Продължителност:</label>
                <asp:DropDownList ID="ddlDuration" runat="server" class="form-control">
                    <asp:ListItem>1 година</asp:ListItem>
                    <asp:ListItem>2 години</asp:ListItem>
                    <asp:ListItem>3 години</asp:ListItem>
                    <asp:ListItem>4 години</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Полето е задължително" Style="color: #FF0000" ControlToValidate="ddlDuration" />
            </div>

            <div class="form-group">
                <label for="txtFee" class="sr-only">Семестриална такса:</label>
                <asp:TextBox ID="txtFee" runat="server" class="form-control" placeholder="Семестриална такса" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Полето е задължително" Style="color: #FF0000" ControlToValidate="txtFee" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFee" Display="Dynamic" ErrorMessage="Невалиден формат" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <asp:Button ID="btnAddFaculty" runat="server" class="btn btn-lg btn-primary btn-block" Text="Добави факултет" OnClick="btnAddFaculty_Click" />

            <input id="Reset1" type="reset" class="btn btn-lg btn-primary btn-block" value="Изчисти" />

            <div class="form-group">
                <label for="ltrMessage">&nbsp;</label>
                <asp:Literal ID="ltrMessage" runat="server" />
            </div>

        </div>
    </center>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>
