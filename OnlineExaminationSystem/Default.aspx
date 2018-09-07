<%@ Page Title="Онлайн тестова система" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="about" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="Default.aspx">Начало<span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="Student.aspx">Студенти</a>
            <a class="nav-item nav-link" href="About.aspx">За нас</a>
            <a class="nav-item nav-link" href="ModelQuestion.aspx">Примерни въпроси</a>
            <a class="nav-item nav-link" href="UserHelp.aspx">Помощ</a>
            <a class="nav-item nav-link" href="Contact.aspx">Контакт</a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h2>Добре дошли</h2>
    <br />
    <p>
        Онлайн тестовата система представлява решаване на тестове чрез интернет. Този проект ще помогне на университета / института да оцени изпитвания чрез въпроси с един правилен отговор. Този проект помага на мениджмънта да проверява онлайн и да пести ресурси. Университетът / институцията може да проведе онлайн изпита и да обяви резултата веднага след като тестът приключи. Както се предполага от името на проекта "Онлайн система за изпитни тестове", системата / приложението трябва да управлява тестовете за различни факултети на учебното заведение.
           
    </p>

</asp:Content>

