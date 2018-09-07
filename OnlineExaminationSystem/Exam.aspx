<%@ Page Title="Тестове" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/examPage.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="MyProfile.aspx">Профил</a>
            <a class="nav-item nav-link" href="ChangePasswordStudent.aspx">Смени парола</a>
            <a class="nav-item nav-link active" href="Exam.aspx">Тестове<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="Student.aspx">Излез</a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="container" style="margin-top: 100px">

        <div id="availableTests">
            <h1 class="h3 mb-3 font-weight-normal">Налични тестове</h1>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" CssClass="table table-bordered">
                <ItemTemplate>
                    <b>Тест</b>
                    <th>Описание</th>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server"
                                NavigateUrl='<%# "Start.aspx?testid=" + Eval("ExamID") %>' Text='<%# Eval("Subject") %>' /></td>
                        <td>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' /></td>
                    </tr>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                SelectCommand="SELECT [Subject], [Description], [ExamID] FROM [Exam] WHERE (([Faculty] = @Faculty) AND ([Semester] = @Semester))">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="Faculty" SessionField="Faculty" Type="String" />
                    <asp:SessionParameter DefaultValue="" Name="Semester" SessionField="Semester" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div id="testHistory">
            <h1 class="h3 mb-3 font-weight-normal">Резулати</h1>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CssClass="table table-bordered" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                SelectCommand="SELECT Exam.Subject AS Дисциплина, StudentExam.DateTimeComplete AS Дата, StudentExam.Score AS Точки FROM StudentExam INNER JOIN Exam ON StudentExam.ExamID = Exam.ExamID WHERE (StudentExam.Username = @Username) ORDER BY StudentExam.DateTimeComplete">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="Username" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

    </div>
</asp:Content>
