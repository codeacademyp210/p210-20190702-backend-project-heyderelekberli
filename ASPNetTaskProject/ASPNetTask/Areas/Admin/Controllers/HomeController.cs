using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    [Authorize]
    public class HomeController : MainController
    {
        public ActionResult Index()
        {
            HomeViewModel models = new HomeViewModel();
            models.User = db.Users.ToList();
            models.ClubInfo = ClubInfo;
            return View(models);
        }
    }
}