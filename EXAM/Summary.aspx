<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" MasterPageFile ="~/Site.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">
    <div>
         <h2>Студенты</h2>
         <h3>Общая информация : </h3>
         <table>
            <thead>
                <tr>
                    <th>Имя</th>
                    <th>Фамилия</th>
                    <th>Математика</th>
                    <th>Английский</th>
                    <th>Физра</th>
                </tr>
            </thead>
            <tbody>
                <%
                    using (StudentContext db = new StudentContext())
                    {
                        var yesData = db.Students;
                        foreach (var student in yesData)
                        {
                            string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td>",
                                                               student.FirstName, student.LastName, student.MathGrade, student.EnglishGrade, student.PEGrade);
                            Response.Write(htmlString);
                        }
                    }
                %>

                
            </tbody>
         </table>
     </div>
 </asp:Content>