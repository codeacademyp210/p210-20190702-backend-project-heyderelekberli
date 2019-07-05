using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class UserController : MainController
    {
        // GET: Admin/User
        public ActionResult UsersList()
        {
            return View();
        }
        public ActionResult AddUser()
        {
            return View();
        }
        public ActionResult Payments()
        {
            return View();
        }
    
    }
}