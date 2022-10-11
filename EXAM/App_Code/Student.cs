using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Сводное описание для Student
/// </summary>
public class Student
{
    public int Id { get; set; }

    public string FirstName { get; set; }
    public string LastName { get; set; }    
    public int MathGrade { get; set; }
    public int EnglishGrade { get; set; }
    public int PEGrade { get; set; }
    public Student()
    {
        //
        // TODO: добавьте логику конструктора
        //
    }
}