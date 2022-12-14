using Lab2_task5.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Lab2_task5.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        //public ActionResult Index()
        //{
        //    return View();
        //}
        public string Index(string hel)
        {
            int hour = DateTime.Now.Hour;
            string Greeting = ModelClass.ModelHello() + ", " + hel;

            //string res = ExeEnum();
            //return res;

            //string res = ExeStruct();
            //string res = StudyCsharp.SetStatus(3);
            //string res = StudyCsharp.ExeSwitch(StudyCsharp.SetStatus(3));

            //string res = StudyCsharp.GetFunction(0, 9);
            //string res = ExeFactorial(5);

            //string res = ExeTriangle();
            //string res = ExeCircle();
            //string res = ExePolim();

            //string res = ExeCollection();
            string res = ExeCollectionTr();

            return res;

        }


        public string ExeCollectionTr()
        {
           
            List<Triangle> trg = new List<Triangle>
            {
                new Triangle(1,2,3),
                new Triangle(5,6,8),
                new Triangle(3,4,5)
            };
       
            trg.Add(new Triangle(2,3,7));
           
            trg.Sort();
          
            StringBuilder str = new StringBuilder();
            foreach (Shape item in trg)
            {
                str.AppendFormat("Это фигура {0}", item.Name + "<p>");
            }
            return str.ToString();
        }

        public string ExeCollection()
        {
            List<Circle> cirs = new List<Circle>
            {
                new Circle(12),
                new Circle(5),
                new Circle(15),
                new Circle(6)
            };
            cirs.Add(new Circle(7));
            cirs.Sort();

            StringBuilder str = new StringBuilder();
            foreach (Shape item in cirs)
            {
                str.AppendFormat("Это фигура {0}", item.Name + "<p>");
            }
            return str.ToString();

        }

        public string ExePolim()
        {
            StringBuilder str = new StringBuilder(); // п.2
            // п.3
            Shape[] sh = {
                new Triangle(1,2,3),
                new Circle(5),
                new Triangle(5,6,8)
            };
            // п.4
            foreach (Shape item in sh)
            {
                str.AppendFormat("Это фигура {0}", item.Name + "<p>");
            }
            // п.5
            return str.ToString();
        }


        public string ExeCircle()
        {
            Circle cir1 = new Circle(3);
            string sq = String.Format("Площадь фигуры {0} равна: {1:0.##}", cir1.Name, cir1.Area);
            return sq;
        }

        public string ExeTriangle()
        {
            Triangle tr1 = new Triangle(3, 5, 6);
            string sq1 = String.Format("Площадь фигуры {0} равна: {1:0.##}", tr1.Name, tr1.Area);
            return sq1;
        }



        public string ExeFactorial(int x)
        {
            int f;
            bool ok = StudyCsharp.Factorial(x, out f);
            if (ok)
                return String.Format("Факториал числа {0} равен {1} ",
                x, f);
            else
                return "Невозможно вычислить факториал";
            
        }


        public string ExeStruct()
        {
            BankAccount goldBankAccount;
            goldBankAccount.accType = AccountType.Checking;
            goldBankAccount.accBal = (decimal)3200.00;
            goldBankAccount.accNo = 123;
            string res = String.Format("Информация о банковском счете: {0}", goldBankAccount);
            return res;
        }

        public string ExeEnum()
        {
            AccountType goldAccount;
            AccountType platinumAccount;
            goldAccount = AccountType.Checking;
            platinumAccount = AccountType.Deposit;
            string res1 = String.Format("Тип банковского счета {0}", goldAccount);
            string res2 = String.Format("Тип банковского счета {0}",
            platinumAccount);
            string res = res1 + "<p>" + res2;
            return res;
        }
    }
}