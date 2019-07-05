using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class ScheduleController : Controller
    {
       
        public ActionResult Rooms()
        {
            return View();
        }
        public ActionResult CourseSchedule()
        {
            return View();
        }
        public ActionResult Courses()
        {
            return View();
        }
        public ActionResult Trainers()
        {
            return View();
        }
    }
}