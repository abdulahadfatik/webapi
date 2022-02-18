using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Context;

namespace WebApplication1
{
    using System.Linq;
    using WebApplication1.Context;
    using WebApplication1.Models;
    public static class InitialData
    {
        public static void Seed(this CompanyContext dbContext)
         {
            if (!dbContext.Employee.Any())
            {
                dbContext.Employee.Add(new Employee
                    {
                        EmployeeName = "Emp01",
                        Gender = "Male",
                        DateOfBirth = "01-01-1990",
                        Nationality = "Pakistan",
                        City = "Rawalpindi",
                        CurrentAddress = "Current Address",
                        PermanentAddress = "Permanent Address",
                        PINCode = "051"
                    });
                    dbContext.Employee.Add(new Employee
                    {
                        EmployeeName = "Emp02",
                        Gender = "Female",
                        DateOfBirth = "02-02-1995",
                        Nationality = "Afghan",
                        City = "Kabul",
                        CurrentAddress = "Current Address",
                        PermanentAddress = "Permanent Address",
                        PINCode = "0721"
                    });
                    dbContext.Employee.Add(new Employee
                    {
                        EmployeeName = "Emp03",
                        Gender = "Male",
                        DateOfBirth = "03-03-1999",
                        Nationality = "Indian",
                        City = "Bangalore",
                        CurrentAddress = "Current Address",
                        PermanentAddress = "Permanent Address",
                        PINCode = "560078"
                    });

                    dbContext.SaveChanges();
                }
            }
       
    }
}
