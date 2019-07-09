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
    public class HomeController : MainController
    {
        HomeViewModel models = new HomeViewModel();

        public ActionResult Index()
        {
            models.User = db.Users.ToList();
            models.ClubInfo = ClubInfo;
            return View(models);
        }
    }
}