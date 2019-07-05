using ASPNetTask.Areas.Admin.DAL;
using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class MainController : Controller
    {
        protected AdminContext db;
        protected User User;
        protected ClubInfo ClubInfo;

        protected MainController()
        {
            db = new AdminContext();
            User = db.Users.FirstOrDefault();
            ClubInfo = db.ClubInfos.FirstOrDefault();
        }
    }
}