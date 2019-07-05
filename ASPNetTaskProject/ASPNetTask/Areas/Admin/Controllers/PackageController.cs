using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class PackageController : MainController
    {
        // GET: Admin/Package
        public ActionResult Index()
        {
            return View();
        }
    }
}