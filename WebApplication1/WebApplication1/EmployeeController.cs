using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication1
{
    using Microsoft.AspNetCore.Mvc;
    using System.Collections.Generic;
    using System.Linq;
    using WebApplication1.Context;
    using WebApplication1.Models;
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private CompanyContext _companyContext;

        public EmployeeController(CompanyContext companyContext)
        {
            _companyContext = companyContext;
        }
        // GET: api/<EmployeeController>
        [HttpGet]
        public IEnumerable<Employee> Get()
        {
            return _companyContext.Employee;
        }

        // GET api/<EmployeeController>/5
        [HttpGet("{id}")]
        public Employee Get(int id)
        {
            return _companyContext.Employee.FirstOrDefault(s => s.EmployeeId == id);
        }

        // POST api/<EmployeeController>
        [HttpPost]
        public void Post([FromBody] Employee value)
        {
            _companyContext.Employee.Add(value);
            _companyContext.SaveChanges();
        }

        // PUT api/<EmployeeController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] Employee value)
        {
            var emp = _companyContext.Employee.FirstOrDefault(s => s.EmployeeId == id);
            if (emp != null)
            {
                _companyContext.Entry<Employee>(emp).CurrentValues.SetValues(value);
                _companyContext.SaveChanges();
            }
        }

        // DELETE api/<EmployeeController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            var delemp = _companyContext.Employee.FirstOrDefault(s => s.EmployeeId == id);
            if (delemp != null)
            {
                _companyContext.Employee.Remove(delemp);
                _companyContext.SaveChanges();
            }
        }
    }
}
