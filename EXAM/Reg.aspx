<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg"  MasterPageFile ="~/Site.master" UnobtrusiveValidationMode="None"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">
    <div>
        <h1>Добавление студента</h1>
        <p></p>

        <div>
            <label>Имя студента:</label><asp:TextBox ID="firstName"
            runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstName" ErrorMessage="Заполните поле имени" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Фамилия студента:</label><asp:TextBox ID="lastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" ErrorMessage="Заполните поле адреса" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Оценка за Математику:</label><asp:TextBox ID="mathGrade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mathGrade" ErrorMessage="Заполните поле ввода телефона" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Неверный формат оценки по Математике" ValidationExpression="[1-5]" ControlToValidate="mathGrade" ForeColor="Red">Оценка должна быть больше 0 и меньше 6</asp:RegularExpressionValidator>
        </div>
         <div>
            <label>Оценка за Английский:</label><asp:TextBox ID="engGrade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="engGrade" ErrorMessage="Заполните поле ввода телефона" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Неверный формат оценки по Анлгийскому" ValidationExpression="[1-5]" ControlToValidate="engGrade" ForeColor="Red">Оценка должна быть больше 0 и меньше 6</asp:RegularExpressionValidator>
        </div>
         <div>
            <label>Оценка за Физру:</label><asp:TextBox ID="peGrade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="peGrade" ErrorMessage="Заполните поле ввода телефона" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Неверный формат оценки по Физре" ValidationExpression="[1-5]" ControlToValidate="peGrade" ForeColor="Red">Оценка должна быть больше 0 и меньше 6</asp:RegularExpressionValidator>
        </div>
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowModelStateErrors="true" />
        
        <div>
                <button type="submit" >Добавить студента</button>
        </div>

    </div>
    
</asp:Content>