<%@ Page Title="Студенти" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageStudent.aspx.cs" Inherits="ManageStudent" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/all.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav collapse navbar-collapse">
            <a class="nav-item nav-link" href="Home.aspx">Начало</a>
            <a class="nav-link dropdown-toggle active" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Настройки<span class="sr-only">(current)</span></a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="ManageStudent.aspx">Студенти</a>
                <a class="dropdown-item" href="Member.aspx">Преподаватели</a>
                <a class="dropdown-item" href="ChangePasswordMember.aspx">Промени парола</a>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Име" />
                    <asp:BoundField DataField="RollNumber" HeaderText="Факултетен номер" />
                    <asp:BoundField DataField="Username" HeaderText="Потребителско име" />
                    <asp:BoundField DataField="Faculty" HeaderText="Факултет" />
                    <asp:BoundField DataField="Semester" HeaderText="Семестър" />
                    <asp:BoundField DataField="Email" HeaderText="Имейл адрес" />
                    <asp:TemplateField HeaderText="Снимка">
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height="100px" Width="100px" runat="server" ImageUrl='<%# Bind("Photo") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

    </div>

     <script type="text/javascript" src="Scripts/jquery-3.0.0.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script type="text/javascript">window.jQuery || document.write('<script src="Scripts/jquery-3.0.0.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="Scripts/popper.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</asp:Content>
