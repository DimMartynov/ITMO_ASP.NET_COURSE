using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Page.Validate();
            if (!Page.IsValid)
                return;
            using (StudentContext db = new StudentContext())
            {
                Student student = new Student { FirstName = firstName.Text, LastName = lastName.Text,
                    MathGrade = Int32.Parse(mathGrade.Text), EnglishGrade = Int32.Parse(engGrade.Text),
                    PEGrade = Int32.Parse(peGrade.Text)
                };
                

                // добавляем их в бд
                db.Students.Add(student);
                db.SaveChanges();
            }
        }
    }
}