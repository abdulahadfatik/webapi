using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Context
{
    using Microsoft.EntityFrameworkCore;
    using WebApplication1.Models;
    using System.Linq;
    using WebApplication1.Models;

    public class CompanyContext:DbContext
    {
        public CompanyContext(DbContextOptions<CompanyContext> options) : base(options)
        {

        }
        public DbSet<Employee> Employee { get; set; }
    }

   
}
