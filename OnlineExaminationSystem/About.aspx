<%@ Page Title="За нас" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="about" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="Server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Styles/signin.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="navbar-nav">
                    <a class="nav-item nav-link" href="Default.aspx">Начало</a>
                    <a class="nav-item nav-link" href="Student.aspx">Студенти</a>
                    <a class="nav-item nav-link active" href="About.aspx">За нас<span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="ModelQuestion.aspx">Примерни въпроси</a>
                    <a class="nav-item nav-link" href="UserHelp.aspx">Помощ</a>
                    <a class="nav-item nav-link" href="Contact.aspx">Контакт</a>
                </div>
            </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Повече за системата</h2>
    <br />
    <p>Системата за онлайн изпити е система за проверка на знанията на студентите, която осигурява лесна за използване среда както за преподавателите да създават, така и за студенти, да се явяват на онлайн изпити. Основната цел на системата е да предостави всички функции, които трябва да има система за изпити. 
    </p>
    <p>По-рано това беше много времеотнемащ и досаден процес, при който както студентите, така и преподавателите изпълняваха всички задачи ръчно, като регистрация на студенти, създаване на изпитен тест, задаване на график за обявяване на резултати. По-късно процесът стана много по-лесен, когато бяха разработени уеб приложения, които превърнаха всички тези задачи в автоматизирани такива. </p>
</asp:Content>

