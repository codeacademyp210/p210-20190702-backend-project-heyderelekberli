﻿using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class ClubInfoController : MainController
    {
        // GET: Admin/ClubInfo
        public ActionResult Index()
        {
            HomeViewModel models = new HomeViewModel();
            models.ClubInfo = ClubInfo;
            return View(models);
           
        }
    }
}