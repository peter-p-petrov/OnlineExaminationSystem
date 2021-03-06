﻿<%@ Page Title="Добави студент" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

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
            <a class="nav-item nav-link" href="Faculty.aspx">Факулети</span></a>
            <a class="nav-item nav-link" href="Subject.aspx">Дисциплини</a>
            <a class="nav-item nav-link" href="DisplayQuestion.aspx">Въпроси</a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <div id="cardEditStudent" class="card">
            <h1 class="h3 mb-3 font-weight-normal">Добави студент</h1>

            <div class="form-group">
                <label for="txtStudentID" class="sr-only">ID на студент:</label>
                <asp:TextBox ID="txtStudentID" runat="server" class="form-control" placeholder="ID на студент" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtStudentID" ErrorMessage="Полето е задължително" Style="color: #FF0000" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtStudentID" Display="Dynamic" ErrorMessage="Невалидно ID на студент" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <div class="form-group">
                <label for="txtStudentName" class="sr-only">Име на студент:</label>
                <asp:TextBox ID="txtStudentName" runat="server" class="form-control" placeholder="Име на студент" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStudentName" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtRollNumber" class="sr-only">Факултетен номер:</label>
                <asp:TextBox ID="txtRollNumber" runat="server" class="form-control" placeholder="Факултетен номер" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRollNumber" ErrorMessage="Полето е задължително" Style="color: #FF0000" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRollNumber" Display="Dynamic" ErrorMessage="Невалиден факултетен номер" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <div class="form-group">
                <label for="ddlFaculty" class="sr-only">Факултет:</label>
                <asp:DropDownList ID="ddlFaculty" runat="server" class="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlFaculty" ErrorMessage="Изберете факултет" Style="color: #FF0000" />
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
            </div>

            <div class="form-group">
                <label for="txtEmail" class="sr-only">Имейл:</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Имейл" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Невалиден имейл адрес" Style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            </div>

            <div class="form-group">
                <label for="studentPicture" class="sr-only">Снимка:</label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Изберете снимка" Style="color: #FF0000" />
            </div>

            <asp:Button ID="btnCreateStudent" runat="server" class="btn btn-lg btn-primary btn-block" Text="Създай" OnClick="btnCreateStudent_Click" />

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
