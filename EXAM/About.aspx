<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" MasterPageFile="~/Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <h2>Суммарный балл</h2>
         <h3>Студенты: </h3>
         <table>
            <thead>
                <tr>
                    <th>Имя</th>
                    <th>Фамилия</th>
                    <th>Сумм балл</th>
                </tr>
            </thead>
            <tbody>
                <%
                    using (StudentContext db = new StudentContext())
                    {
                        var yesData = db.Students;
                        foreach (var student in yesData)
                        {
                            string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td>",
                                                               student.FirstName, student.LastName, student.MathGrade + student.EnglishGrade + student.PEGrade);
                            Response.Write(htmlString);
                        }
                    }
                %>

                
            </tbody>
         </table>
     </div>
</asp:Content>



