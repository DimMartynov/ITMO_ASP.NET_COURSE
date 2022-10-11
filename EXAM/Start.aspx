<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" MasterPageFile ="~/Site.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">
    <div>
            <div class="rek">
                <h1>Отчётность об успеваемости студентов <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </h1>
                <p>Добро пожаловать</p>
                <p>Вы можете добавить студента и его оценки перейдя в соответсвующее меню</p>
            </div>
            <div class="info">
               
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <h1>Общее количство студентов
                        <%
                        using (StudentContext db = new StudentContext())
                        {
                            var yesData = db.Students;
                            
                                string htmlString = String.Format(yesData.Count<Student>().ToString());
                                Response.Write(htmlString);
                            
                        }
                         %>
                        </h1>
                            

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
    </div>
</asp:Content>



