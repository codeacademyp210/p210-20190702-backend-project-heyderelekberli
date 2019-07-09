using ASPNetTask.Areas.Admin.Helpers;
using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    [Auth]
    public class UserController : MainController
    {
        // GET: Admin/User
        public ActionResult UsersList()
        {
            HomeViewModel models = new HomeViewModel();
            models.User = db.Users.ToList();
            return View(models);
        }
        public ActionResult AddUser()
        {
            return View();
        }
        public ActionResult Payments()
        {
            HomeViewModel models = new HomeViewModel();
            models.Payment = db.Payments.ToList();
            return View(models);
        }
    
    }
}