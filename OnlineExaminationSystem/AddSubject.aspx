<%@ Page Title="Add Subject" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="AddSubject" %>

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
                <a class="dropdown-item" href="ChangePasswordMember.aspx">Смени парола</a>
            </div>
            <a class="nav-item nav-link" href="Faculty.aspx">Факултети</a>
            <a class="nav-item nav-link active" href="Subject.aspx">Дисциплини<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="DisplayQuestion.aspx">Въпроси</a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <div id="cardEditStudent" class="card">
            <h1 class="h3 mb-3 font-weight-normal">Добави дисциплина</h1>

            <div class="form-group">
                <label for="txtSubjectID" class="sr-only">ID на дисциплина:</label>
                <asp:TextBox ID="txtSubjectID" runat="server" class="form-control" placeholder="ID на дисциплина" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubjectID" ErrorMessage="Полето е задължително" tyle="color: #FF0000" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSubjectID" Display="Dynamic" ErrorMessage="Невалидно ID на дисциплина" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <div class="form-group">
                <label for="txtSubject" class="sr-only">Име на дисциплина:</label>
                <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="Име на дисциплина" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubject" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="ddlFaculty" class="sr-only">Факултет:</label>
                <asp:DropDownList ID="ddlFaculty" runat="server" class="form-control" OnSelectedIndexChanged="ddlFaculty_SelectedIndexChanged" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlFaculty" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="ddlSemester" class="sr-only">Семестър:</label>
                <asp:DropDownList ID="ddlSemester" runat="server" class="form-control">
                    <asp:ListItem>1st semester</asp:ListItem>
                    <asp:ListItem>2nd semester</asp:ListItem>
                    <asp:ListItem>3rd semester</asp:ListItem>
                    <asp:ListItem>4th semester</asp:ListItem>
                    <asp:ListItem>5th semester</asp:ListItem>
                    <asp:ListItem>6th semester</asp:ListItem>
                    <asp:ListItem>7th semester</asp:ListItem>
                    <asp:ListItem>8th semester</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlSemester" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtDescription" class="sr-only">Описание:</label>
                <asp:TextBox ID="txtDescription" runat="server" placeholder="Описание" Width="241px" Height="88px" TextMode="MultiLine" />
            </div>

            <asp:Button ID="btnAddSubject" runat="server" class="btn btn-lg btn-primary btn-block" Text="Добави дисциплина" OnClick="btnAddSubject_Click" />

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
