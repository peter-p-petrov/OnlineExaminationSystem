<%@ Page Title="Започни тест" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style2
        {
            font-size: large;
            color: #000000;
        }
        .style3
        {
            color: #000000;
            font-size: small;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="560" align="center">
           <tr>
                <td class="style2"><strong>Преди да започне теста</strong><span class="style3"> </span>
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="Line" src="Images/line.gif" /></td>
            </tr>
            <tr>
                <td>
                    <p class="style1">Вие сте на път да започнете тест. Тестът съдържа въпроси с няколко възможност за избор с до 25 въпроса за всяка дисциплина. Прочетете внимателно въпроса и изберете правилния според Вас отговор в падащото меню и след това изберете бутона "Следващ въпрос". Не можете да се върнете и да промените отговорите си, след като изберете "Следващ въпрос", затова обмисляйте внимателно отговора си.</p>
                    <p class="style1">Когато сте готови да започнете, натиснете бутона "Начало"</p>
                </tr>                                    
            <tr>
                <td align="right">
                    <asp:Button ID="btnStart" runat="server" Text="Начало" 
                        OnClick="startButton_Click" /></td>
            </tr>
        </table>
</asp:Content>

