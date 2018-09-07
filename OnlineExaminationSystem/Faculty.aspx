<%@ Page Title="Факултети" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

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
            <a class="nav-item nav-link active" href="Faculty.aspx">Факултети<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="Subject.aspx">Дисциплини</a>
            <a class="nav-item nav-link" href="DisplayQuestion.aspx">Въпроси</a>
            <a class="nav-item nav-link" href="LogoutMember.aspx">Излез</a>
        </div>
    </div>
    <!-- end of naviagaion -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="container" style="margin-top: 100px">

        <div>
            <asp:LinkButton ToolTip="Добави" runat="server" PostBackUrl="~/AddFaculty.aspx">
                <i class="fas fa-plus fa-2x"></i>
            </asp:LinkButton>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered">
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
                    <asp:BoundField DataField="FacultyID" HeaderText="ID на факултет" ReadOnly="True" SortExpression="FacultyID" />
                    <asp:BoundField DataField="Faculty" HeaderText="Факултет" SortExpression="Faculty" />
                    <asp:BoundField DataField="Duration" HeaderText="Продължителност" SortExpression="Duration" />
                    <asp:BoundField DataField="Fee" HeaderText="Такса" SortExpression="Fee" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConflictDetection="CompareAllValues"
                ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                DeleteCommand="DELETE FROM [Faculty] WHERE [FacultyID] = @original_FacultyID AND [Faculty] = @original_Faculty AND [Duration] = @original_Duration AND [Fee] = @original_Fee"
                InsertCommand="INSERT INTO [Faculty] ([FacultyID], [Faculty], [Duration], [Fee]) VALUES (@FacultyID, @Faculty, @Duration, @Fee)"
                OldValuesParameterFormatString="original_{0}"
                SelectCommand="SELECT * FROM [Faculty]"
                UpdateCommand="UPDATE [Faculty] SET [Faculty] = @Faculty, [Duration] = @Duration, [Fee] = @Fee WHERE [FacultyID] = @original_FacultyID AND [Faculty] = @original_Faculty AND [Duration] = @original_Duration AND [Fee] = @original_Fee">
                <DeleteParameters>
                    <asp:Parameter Name="original_FacultyID" Type="String" />
                    <asp:Parameter Name="original_Faculty" Type="String" />
                    <asp:Parameter Name="original_Duration" Type="String" />
                    <asp:Parameter Name="original_Fee" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FacultyID" Type="String" />
                    <asp:Parameter Name="Faculty" Type="String" />
                    <asp:Parameter Name="Duration" Type="String" />
                    <asp:Parameter Name="Fee" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Faculty" Type="String" />
                    <asp:Parameter Name="Duration" Type="String" />
                    <asp:Parameter Name="Fee" Type="Decimal" />
                    <asp:Parameter Name="original_FacultyID" Type="String" />
                    <asp:Parameter Name="original_Faculty" Type="String" />
                    <asp:Parameter Name="original_Duration" Type="String" />
                    <asp:Parameter Name="original_Fee" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>

    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>
