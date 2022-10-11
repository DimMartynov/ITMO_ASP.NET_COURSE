using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab2_task1.Models
{
    public enum AccountType
    {
        Checking,
        Deposit
    }

    public struct BankAccount
    {
        public long accNo;
        public decimal accBal;
        public AccountType accType;

        public override string ToString()
        {
            string res = $"Номер счета {accNo}, баланс {accBal}, тип {accType}";
            return res;
        }

    }

    


    public class StudyCsharp
    {
    }
}