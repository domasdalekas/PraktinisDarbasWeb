﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using PraktinisDarbasWeb.Models;

namespace PraktinisDarbasWeb.Controllers
{
    public enum Filter
    {
        None,
        All,
        Active,
        Inactive
    }
    public class EmployeeController : Controller
    {

        private readonly EmployeeEntities1 _dbContext = new EmployeeEntities1();
       
       
        public ActionResult Index(FormCollection submittedForm)
        {

            Filter filter = Filter.None;
            if (submittedForm.GetValue("EmployeeFilter") != null)
            {
                filter = (Filter)Enum.Parse(typeof(Filter), submittedForm["EmployeeFilter"].ToString());
            }
            IEnumerable<Employee> employees = _dbContext.Employees.ToList();
            IEnumerable<Employee> filteredEmployees;
            switch(filter)
            {
                case Filter.None:
                case Filter.All:
                    filteredEmployees = employees;
                    break;
                case Filter.Active:
                    filteredEmployees = employees.Where(e => e.Active);
                    break;
                case Filter.Inactive:
                    filteredEmployees = employees.Where(e => !e.Active);
                    break;
                default:
                    throw new InvalidOperationException("Filter Type Not Recognized");

            }
            return View(filteredEmployees.ToList()) ;
        }
        public ActionResult AddEmployee()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddEmployee([Bind(Include = "Id,Name,Surname,HomeAddress,JobResponsibilites,Active,BirthDate")]Employee employee)
        {
            Random random = new Random();
            var randomid = random.Next(100000);
            try
            {
                if(ModelState.IsValid)
                {
                    employee.ID = randomid;
                    _dbContext.Employees.Add(employee);
                    _dbContext.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            catch (DataException dex )
            {
                            
            }

            return View(employee);
        }
        public ActionResult EditEmployee(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            Employee employee = _dbContext.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
            
        }

        [HttpPost]
        public ActionResult EditEmployee([Bind(Include = "Id,Name,Surname,HomeAddress,JobResponsibilites,Active,BirthDate")] Employee employee)
        {
           
           if(ModelState.IsValid)
            {
                _dbContext.Entry(employee).State = EntityState.Modified;
                _dbContext.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(employee);
        }
        public ActionResult FilterView(FormCollection form)
        {
            return View();
        }

    }
}