<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Top" MasterPageFile="~/Site.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Лучшие/Худшие студенты (по 5 на страницу таблицы)</h2>
    <div>
         
         <h3>Лучшие Студенты: 
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" AllowPaging="True" PageSize ="5" >
                 
                 <Columns>
                     <asp:BoundField DataField="FirstName" HeaderText="Имя" ReadOnly="True" SortExpression="FirstName" />
                     <asp:BoundField DataField="LastName" HeaderText="Фамилия" ReadOnly="True" SortExpression="LastName" />
                     <asp:BoundField DataField="sum" HeaderText="Сумм балл" ReadOnly="True" SortExpression="sum" />
                 </Columns>
             </asp:GridView>
             <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="StudentContext" EntityTypeName="" OrderBy="(MathGrade + PEGrade + EnglishGrade) DESC"
                 Select="new (FirstName, LastName, (MathGrade + PEGrade + EnglishGrade) as sum)" TableName="Students">
             </asp:LinqDataSource>
         </h3>
         
     </div>
    <div>
         <h3>Худшие Студенты: 
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource2" AllowPaging="true" PageSize ="5" >
                 
                 <Columns>
                     <asp:BoundField DataField="FirstName" HeaderText="Имя" ReadOnly="True" SortExpression="FirstName" />
                     <asp:BoundField DataField="LastName" HeaderText="Фамилия" ReadOnly="True" SortExpression="LastName" />
                     <asp:BoundField DataField="sum" HeaderText="Сумм балл" ReadOnly="True" SortExpression="sum" />
                 </Columns>
             </asp:GridView>
             <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="StudentContext" EntityTypeName="" OrderBy="(MathGrade + PEGrade + EnglishGrade) ASC"
                 Select="new (FirstName, LastName, (MathGrade + PEGrade + EnglishGrade) as sum)" TableName="Students">
             </asp:LinqDataSource>
         </h3>
         
     </div>

</asp:Content>