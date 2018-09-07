<%@ Page Title="Добави въпрос" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>

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
            <a class="nav-item nav-link" href="Faculty.aspx">Факулети</a>
            <a class="nav-item nav-link" href="Subject.aspx">Дисциплини</a>
            <a class="nav-item nav-link active" href="DisplayQuestion.aspx">Въпроси<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <div id="cardEditStudent" class="card">
            <h1 class="h3 mb-3 font-weight-normal">Добави въпрос</h1>

            <div class="form-group">
                <label for="txtQuestionID" class="sr-only">ID на въпрос:</label>
                <asp:TextBox ID="txtQuestionID" runat="server" class="form-control" placeholder="ID на въпрос" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuestionID" Display="Dynamic" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtQuestionID" Display="Dynamic" ErrorMessage="Невалидно ID" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <div class="form-group">
                <label for="txtTitle" class="sr-only">Въпрос:</label>
                <asp:TextBox ID="txtTitle" runat="server" class="form-control" placeholder="Въпрос" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTitle" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtAnswer1" class="sr-only">Отговор 1:</label>
                <asp:TextBox ID="txtAnswer1" runat="server" class="form-control" placeholder="Отговор 1" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAnswer1" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtAnswer2" class="sr-only">Отговор 2:</label>
                <asp:TextBox ID="txtAnswer2" runat="server" class="form-control" placeholder="Отговор 2" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer2" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtAnswer3" class="sr-only">Отговор 3:</label>
                <asp:TextBox ID="txtAnswer3" runat="server" class="form-control" placeholder="Отговор 3" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAnswer3" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtAnswer4" class="sr-only">Отговор 4:</label>
                <asp:TextBox ID="txtAnswer4" runat="server" class="form-control" placeholder="Отговор 4" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAnswer4" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="ddlCorrectAnswer">Правилен отговор:</label>
                <asp:DropDownList ID="ddlCorrectAnswer" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlCorrectAnswer" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="txtAnswerExplanation" class="sr-only">Обяснение на отговора:</label>
                <asp:TextBox ID="txtAnswerExplanation" runat="server" class="form-control" placeholder="Обяснение на отговора" TextMode="MultiLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlQuestionOrder" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="ddlQuestionOrder">Номер на въпрос:</label>
                <asp:DropDownList ID="ddlQuestionOrder" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem Value="16"></asp:ListItem>
                    <asp:ListItem Value="17"></asp:ListItem>
                    <asp:ListItem Value="18"></asp:ListItem>
                    <asp:ListItem Value="19"></asp:ListItem>
                    <asp:ListItem Value="20"></asp:ListItem>
                    <asp:ListItem Value="21"></asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem Value="23"></asp:ListItem>
                    <asp:ListItem Value="24"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlQuestionOrder" ErrorMessage="Полето е задължително" Style="color: #FF0000" />
            </div>

            <div class="form-group">
                <label for="ddlExamID">ID на теста:</label>
                <asp:DropDownList ID="ddlExamID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ExamID" DataValueField="ExamID" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                    SelectCommand="SELECT [ExamID] FROM [Exam]" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ErrorMessage="Полето е задължително" Style="color: #FF0000" ControlToValidate="ddlExamID" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ddlExamID" Display="Dynamic" ErrorMessage="Грешно ID на тест" Style="color: #FF0000" ValidationExpression="^\d+$" />
            </div>

            <asp:Button ID="btnAddQuestion" runat="server" class="btn btn-lg btn-primary btn-block" Text="Добави въпрос" OnClick="btnAddQuestion_Click" />

            <input id="Reset1" type="reset" class="btn btn-lg btn-primary btn-block" value="Изчисти" />

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
