﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class ProfileController : MainController
    {
        // GET: Admin/Profile
        public ActionResult Index()
        {
            return View();
        }
    }
}