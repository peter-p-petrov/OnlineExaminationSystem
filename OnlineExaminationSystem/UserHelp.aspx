<%@ Page Title="Помощ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserHelp.aspx.cs" Inherits="UserHelp" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="navigation" class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="navbar-nav">
                    <a class="nav-item nav-link" href="Default.aspx">Начало</a>
                    <a class="nav-item nav-link" href="Student.aspx">Студенти</a>
                    <a class="nav-item nav-link" href="About.aspx">За нас</a>
                    <a class="nav-item nav-link" href="ModelQuestion.aspx">Примерни въпроси</a>
                    <a class="nav-item nav-link active" href="UserHelp.aspx">Помощ<span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="Contact.aspx">Контакт</a>
                </div>
            </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>
   Как да използваме системата за тестове?</h2>
    <ol class="style1">
        <li>След успешно влизане студентът може да види информацията за неговия профил.</li>
        <li>Студентите могат също да променят своята парола от менюто <b>Смени парола</b>.</li>
        <li>За да се явите на изпит, отидете в меню <b>Тестове</b>.</li>
        <li>Ще бъде показан списък на всички налични тестове.</li>
        <li>Кликнете върху съотвения тест, който искате решите.</li>
        <li>Студентът ще бъде заведен в страницата <b>Преди да започне теста</b></li>
        <li>Прочетете всички Общи условия и кликнете върху бутона <b>Начало</b>, за да започнете теста</li>
        <li>Прочетете внимателно въпроса и изберете правилния отговор от падащия списък и кликнете върху <b>Следващ въпрос</b></li>
        <li>Нямате право да се връщате или да правите промени, за да отговорите, след като преминете към следващия въпрос</li>
        <li>Повторете стъпка 8, докато не приключите с въпросите</li>
        <li>След завършване на теста, Вашите резултати ще бъдат показани в таблицата с резултати заедно с подробностите</li>
        <li>Можете да кликнете върху бутона <b>Избор</b> и да видите повече подробности, ако искате</li>
        <li>За да видите резултата, кликнете върху <b>Върнете се към главното меню</b> в долната част на резултата от теста</li>
        <li>Можете да видите резултата си в историята на резултатите от теста и отново да изберете теста, който искате да положите, ако искате</li>
    </ol>
	
</asp:Content>

