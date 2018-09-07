<%@ Page Title="Въпроси" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DisplayQuestion.aspx.cs" Inherits="Default2" %>

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
            <a class="nav-item nav-link" href="Subject.aspx">Дисциплини</a>
            <a class="nav-item nav-link active" href="DisplayQuestion.aspx">Въпроси<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="container" style="margin-top: 100px">

        <div>
            <asp:LinkButton ToolTip="Добави" runat="server" PostBackUrl="~/AddQuestions.aspx">
                <i class="fas fa-plus fa-2x"></i>
            </asp:LinkButton>
            <span>ID на тест:
                <asp:DropDownList ID="ddlExamID" runat="server" AutoPostBack="True" />
            </span>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                SelectCommand="SELECT DISTINCT [ExamID] FROM [Question]"></asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="QuestionID" DataSourceID="SqlDataSource2" CssClass="table table-bordered">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Обнови" />
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отказ" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Промени" />
                            <span onclick="return confirm('Are you sure you want to Delete the Record?')">
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрии" />
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="QuestionID" HeaderText="ID на въпрос" ReadOnly="True" SortExpression="QuestionID" />
                    <asp:BoundField DataField="Title" HeaderText="Въпрос" SortExpression="Title" />
                    <asp:BoundField DataField="Answer1" HeaderText="Отговор 1" SortExpression="Answer1" />
                    <asp:BoundField DataField="Answer2" HeaderText="Отговор 2" SortExpression="Answer2" />
                    <asp:BoundField DataField="Answer3" HeaderText="Отговор 3" SortExpression="Answer3" />
                    <asp:BoundField DataField="Answer4" HeaderText="Отговор 4" SortExpression="Answer4" />
                    <asp:BoundField DataField="QuestionOrder" HeaderText="Подредба" SortExpression="QuestionOrder" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                DeleteCommand="DELETE FROM [Question] WHERE [QuestionID] = @QuestionID"
                InsertCommand="INSERT INTO [Question] ([QuestionID], [Title], [Answer1], [Answer2], [Answer3], [Answer4], [QuestionOrder]) VALUES (@QuestionID, @Title, @Answer1, @Answer2, @Answer3, @Answer4, @QuestionOrder)"
                SelectCommand="SELECT [QuestionID], [Title], [Answer1], [Answer2], [Answer3], [Answer4], [QuestionOrder] FROM [Question] WHERE ([ExamID] = @ExamID)"
                UpdateCommand="UPDATE [Question] SET [Title] = @Title, [Answer1] = @Answer1, [Answer2] = @Answer2, [Answer3] = @Answer3, [Answer4] = @Answer4, [QuestionOrder] = @QuestionOrder WHERE [QuestionID] = @QuestionID">
                <DeleteParameters>
                    <asp:Parameter Name="QuestionID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="QuestionID" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Answer1" Type="String" />
                    <asp:Parameter Name="Answer2" Type="String" />
                    <asp:Parameter Name="Answer3" Type="String" />
                    <asp:Parameter Name="Answer4" Type="String" />
                    <asp:Parameter Name="QuestionOrder" Type="Byte" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlExamID" DefaultValue="NULL" Name="ExamID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Answer1" Type="String" />
                    <asp:Parameter Name="Answer2" Type="String" />
                    <asp:Parameter Name="Answer3" Type="String" />
                    <asp:Parameter Name="Answer4" Type="String" />
                    <asp:Parameter Name="QuestionOrder" Type="Byte" />
                    <asp:Parameter Name="QuestionID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>

    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>
