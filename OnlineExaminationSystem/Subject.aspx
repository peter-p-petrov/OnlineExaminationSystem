<%@ Page Title="Дисциплини" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Content/all.css" rel="stylesheet" />
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
    <div class="container" style="margin-top: 100px">

        <div>
            <asp:LinkButton ToolTip="Добави" runat="server" PostBackUrl="~/AddSubject.aspx">
                <i class="fas fa-plus fa-2x"></i>
            </asp:LinkButton>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ExamID" DataSourceID="SqlDataSource1" CssClass="table table-bordered">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Обнови" />
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отказ" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Промени" />
                            <span onclick="return confirm('Are you sure you want to Delete the Record?')">
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрии" />
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ExamID" HeaderText="ID" ReadOnly="True" SortExpression="ExamID" />
                    <asp:BoundField DataField="Subject" HeaderText="Дисциплина" SortExpression="Subject" />
                    <asp:BoundField DataField="Faculty" HeaderText="Факултет" SortExpression="Faculty" />
                    <asp:BoundField DataField="Semester" HeaderText="Семестър" SortExpression="Semester" />
                    <asp:BoundField DataField="Description" HeaderText="Описание" SortExpression="Description" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                DeleteCommand="DELETE FROM [Exam] WHERE [ExamID] = @ExamID"
                InsertCommand="INSERT INTO [Exam] ([ExamID], [Subject], [Faculty], [Semester], [Description]) VALUES (@ExamID, @Subject, @Faculty, @Semester, @Description)"
                SelectCommand="SELECT * FROM [Exam] ORDER BY [ExamID]"
                UpdateCommand="UPDATE [Exam] SET [Subject] = @Subject, [Faculty] = @Faculty, [Semester] = @Semester, [Description] = @Description WHERE [ExamID] = @ExamID">
                <DeleteParameters>
                    <asp:Parameter Name="ExamID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ExamID" Type="Int32" />
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="Faculty" Type="String" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="Faculty" Type="String" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ExamID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>

    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>

