<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditStudent.aspx.cs" Inherits="EditManageStudent" %>

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
            <a class="nav-item nav-link" href="Faculty.aspx">Факултети</span></a>
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
            <h1 class="h3 mb-3 font-weight-normal">Промени студент</h1>

            <div class="form-group">
                <label for="txtStudentID" class="sr-only">ID на студент:</label>
                <asp:TextBox ID="txtStudentID" runat="server" class="form-control" placeholder="ID на студент" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtStudentID" Display="Dynamic" ErrorMessage="Невалидно ID на студент" Style="color: #FF0000" ValidationExpression="^\d+$" />
                <asp:Button ID="btnSearchById" runat="server" class="btn btn-lg btn-primary btn-block" Text="Търси" OnClick="btnSearchById_Click" />
            </div>

            <div class="form-group">
                <label for="txtStudentName" class="sr-only">Име:</label>
                <asp:TextBox ID="txtStudentName" runat="server" class="form-control" placeholder="Име" />
            </div>

            <div class="form-group">
                <label for="txtRollNumber" class="sr-only">Факултетен номер:</label>
                <asp:TextBox ID="txtRollNumber" runat="server" class="form-control" placeholder="Факултетен номер" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRollNumber" Display="Dynamic" ErrorMessage="Невалиден факултетен номер" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <div class="form-group">
                <label for="txtUsername" class="sr-only">Потребителско име:</label>
                <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Потребителско име" />
            </div>

            <div class="form-group">
                <label for="ddlFaculty" class="sr-only">Факултет:</label>
                <asp:DropDownList ID="ddlFaculty" runat="server" class="form-control" />
            </div>

            <div class="form-group">
                <label for="ddlSemester" class="sr-only">Семестър:</label>
                <asp:DropDownList ID="ddlSemester" runat="server" class="form-control">
                    <asp:ListItem>1ви семестър</asp:ListItem>
                    <asp:ListItem>2ри семестър</asp:ListItem>
                    <asp:ListItem>3ти семестър</asp:ListItem>
                    <asp:ListItem>4ти семестър</asp:ListItem>
                    <asp:ListItem>5ти семестър</asp:ListItem>
                    <asp:ListItem>6ти семестър</asp:ListItem>
                    <asp:ListItem>7ми семестър</asp:ListItem>
                    <asp:ListItem>8ми семестър</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="txtEmail" class="sr-only">Имейл:</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Имейл адрес" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Невалиден имейл адрес" Style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            </div>

            <div class="form-group">
                <label for="studentPicture" class="sr-only">Снимка:</label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="btnChangePicture" runat="server" OnClick="btnChangePicture_Click" Text="Качи снимка" class="btn btn-lg btn-primary btn-block" />
            </div>
            <asp:Button ID="btnUpdate" runat="server" class="btn btn-lg btn-primary btn-block" Text="Обнови" OnClick="btnUpdate_Click" />
            <br />
            <span onclick="return confirm('Are you sure you want to Delete the Record?')">
                <asp:Button ID="btnDelete" runat="server" class="btn btn-lg btn-primary btn-block" Text="Изтрии" OnClick="btnDelete_Click" />
            </span>

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
