<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" MasterPageFile ="~/Site.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">
    <div>
         <h2>Приглашения</h2>
         <h3>Выступающие с докладом: </h3>
         <table>
            <thead>
                <tr>
                    <th>Имя</th>
                    <th>Email</th>
                    <th>Телефон</th>
                </tr>
            </thead>
            <tbody>
                <%= GetNoShowHtml()%>
            </tbody>
         </table>
     </div>
 </asp:Content>