using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class SecurityController : Controller
    {
        AdminConnectEntities db = new AdminConnectEntities();
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Log log)
        {
            var logInDb = db.Logs.FirstOrDefault(m=>m.Username == log.Username && m.Password == log.Password);
            if (logInDb != null)
            {
                FormsAuthentication.SetAuthCookie(logInDb.Username, false);
                return RedirectToAction("Index","Home");

            }
            else
            {
                ViewBag.Message = "Email or Password is wrong";
                return View();
            }
        }
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }
    }
}