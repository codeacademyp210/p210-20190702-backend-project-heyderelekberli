using ASPNetTask.Areas.Admin;
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
        protected AdminConnectEntities db;
        protected User User;
        protected ClubInfo ClubInfo;
        protected Package Package;
        protected Room Room;
        protected Trainer Trainer;
        protected Day Day;
        protected Cours Course;
        protected Schedule Schedule;

        protected MainController()
        {
            db = new AdminConnectEntities();
            User = db.Users.FirstOrDefault();
            ClubInfo = db.ClubInfoes.FirstOrDefault();
            Package = db.Packages.FirstOrDefault();
            Room = db.Rooms.FirstOrDefault();
            Trainer = db.Trainers.FirstOrDefault();
            Day = db.Days.FirstOrDefault();
            Course = db.Courses.FirstOrDefault();
            Schedule = db.Schedules.FirstOrDefault();
        }
    }
}