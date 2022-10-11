using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

/// <summary>
/// Сводное описание для StudentContext
/// </summary>
public class StudentContext : DbContext
{
    public StudentContext()
        : base("DbConnection")
    { }

    public DbSet<Student> Students { get; set; }

}