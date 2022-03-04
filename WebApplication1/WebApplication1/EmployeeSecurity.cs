using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1
{
    public class EmployeeSecurity
    {
        private static object entities;

        public static bool Login(string username, string password) => entities.users.Any(user =>
                                                                                           user.Username.Equals(username, StringComparison.OrdinalIgnoreCase)
                                                                                                              && user.Password == password);

    }
}
