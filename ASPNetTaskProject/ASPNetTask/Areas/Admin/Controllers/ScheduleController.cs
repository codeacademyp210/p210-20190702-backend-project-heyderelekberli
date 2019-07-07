using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPNetTask.Areas.Admin.Controllers
{
    public class ScheduleController : MainController
    {
       
        public ActionResult Rooms()
        {
            HomeViewModel models = new HomeViewModel();
            models.Room = db.Rooms.ToList();
            return View(models);
        }
        public ActionResult CourseSchedule()
        {
            HomeViewModel models = new HomeViewModel();
            models.Schedule = db.Schedules.ToList();
            models.Day = db.Days.ToList();
            return View(models);
        }
        public ActionResult Courses()
        {
            HomeViewModel models = new HomeViewModel();
            models.Cours = db.Courses.ToList();
            return View(models);
        }
        public ActionResult Trainers()
        {
            HomeViewModel models = new HomeViewModel();
            models.Trainer = db.Trainers.ToList();
            return View(models);
        }
    }
}