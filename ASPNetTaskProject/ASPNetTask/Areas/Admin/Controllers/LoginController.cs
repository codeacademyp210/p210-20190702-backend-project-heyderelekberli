using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        private readonly AdminConnectEntities db;
        public LoginController()
        {
            db = new AdminConnectEntities();
        }    
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Log Log)
        {
            bool isMatch = false;
            if (string.IsNullOrEmpty(Log.Username) || string.IsNullOrEmpty(Log.Password))
            {
                Session["loginError"] = "Email or Password is wrong!";
                return RedirectToAction("Index", "Login");
            }
                Log log = db.Logs.FirstOrDefault(l=>l.Username == Log.Username);
                if (log != null)
                {
                    isMatch = Crypto.VerifyHashedPassword(log.Password, Log.Password);
                    if (isMatch == true)
                    {
                        Session["isLogin"] = true;
                        return RedirectToAction("Index", "Home", new { area ="Admin"});
                    }
                }
                Session["loginError"] = "Email or Password is wrong!";
                return RedirectToAction("Index", "Login");
        }
        public ActionResult Logout()
        {
            Session["isLogin"] = null;
            return RedirectToAction("Index", "Login");
        }
        public ActionResult HashPass()
        {
            string p = "Admin1234";
            string hashedPass = Crypto.HashPassword(p);
            return Content(hashedPass);
        }
    }
}