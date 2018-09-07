<%@ Page Title="Преподаватели" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="MemberSetting" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
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
    <div class="container" style="margin-top: 100px">

        <div>

            <asp:LinkButton ID="LinkButton1" ToolTip="Промени" runat="server" PostBackUrl="~/EditStudent.aspx">
                <i class="fas fa-user-edit fa-2x"></i>
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" ToolTip="Добави" runat="server" PostBackUrl="~/AddStudent.aspx">
                <i class="fas fa-user-plus fa-2x"></i>
            </asp:LinkButton>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" CssClass="table table-bordered">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                CommandName="Update" Text="Обнови"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                CommandName="Cancel" Text="Отказ"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                CommandName="Edit" Text="Промени"></asp:LinkButton>
                            &nbsp;
                     
                          <span onclick="return confirm('Are you sure you want to Delete the Record?')">
                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                  CommandName="Delete" Text="Изтрии"></asp:LinkButton>
                          </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MemberID" HeaderText="ID" ReadOnly="True"
                        SortExpression="MemberID" />
                    <asp:BoundField DataField="Username" HeaderText="Потребителско име"
                        SortExpression="Username" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                DeleteCommand="DELETE FROM [Member] WHERE [MemberID] = @MemberID"
                InsertCommand="INSERT INTO [Member] ([MemberID], [Username]) VALUES (@MemberID, @Username)"
                SelectCommand="SELECT [MemberID], [Username] FROM [Member] ORDER BY [MemberID]"
                UpdateCommand="UPDATE [Member] SET [Username] = @Username WHERE [MemberID] = @MemberID">
                <DeleteParameters>
                    <asp:Parameter Name="MemberID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MemberID" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="MemberID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>

    <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>
