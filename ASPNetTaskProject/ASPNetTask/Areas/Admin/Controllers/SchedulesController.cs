using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ASPNetTask.Areas.Admin.Helpers;
using ASPNetTask.Areas.Admin.Models;

namespace ASPNetTask.Areas.Admin.Controllers
{
    [Auth]
    public class SchedulesController : Controller
    {
        private AdminConnectEntities db = new AdminConnectEntities();

        // GET: Admin/Schedules
        public ActionResult Index()
        {
            return RedirectToAction("Create");
        }

        // GET: Admin/Schedules/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Schedule schedule = db.Schedules.Find(id);
            if (schedule == null)
            {
                return HttpNotFound();
            }
            return View(schedule);
        }

        // GET: Admin/Schedules/Create
        public ActionResult Create()
        {
            ViewBag.CourseID = new SelectList(db.Courses, "ID", "Name");
            ViewBag.DayID = new SelectList(db.Days, "ID", "Name");
            ViewBag.RoomID = new SelectList(db.Rooms, "ID", "Name");
            ViewBag.TrainerID = new SelectList(db.Trainers, "ID", "Name");
            var schedules = db.Schedules.Include(s => s.Cours).Include(s => s.Day).Include(s => s.Room).Include(s => s.Trainer);
            ViewBag.Schedules = schedules;
            return View();
        }

        // POST: Admin/Schedules/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,DayID,From,To,CourseID,RoomID,TrainerID,Description,Status")] Schedule schedule)
        {
            if (ModelState.IsValid)
            {
                db.Schedules.Add(schedule);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CourseID = new SelectList(db.Courses, "ID", "Name", schedule.CourseID);
            ViewBag.DayID = new SelectList(db.Days, "ID", "Name", schedule.DayID);
            ViewBag.RoomID = new SelectList(db.Rooms, "ID", "Name", schedule.RoomID);
            ViewBag.TrainerID = new SelectList(db.Trainers, "ID", "Name", schedule.TrainerID);
            return View(schedule);
        }

        // GET: Admin/Schedules/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Schedule schedule = db.Schedules.Find(id);
            if (schedule == null)
            {
                return HttpNotFound();
            }
            ViewBag.CourseID = new SelectList(db.Courses, "ID", "Name", schedule.CourseID);
            ViewBag.DayID = new SelectList(db.Days, "ID", "Name", schedule.DayID);
            ViewBag.RoomID = new SelectList(db.Rooms, "ID", "Name", schedule.RoomID);
            ViewBag.TrainerID = new SelectList(db.Trainers, "ID", "Name", schedule.TrainerID);
            return View(schedule);
        }

        // POST: Admin/Schedules/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,DayID,From,To,CourseID,RoomID,TrainerID,Description,Status")] Schedule schedule)
        {
            if (ModelState.IsValid)
            {
                db.Entry(schedule).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "ID", "Name", schedule.CourseID);
            ViewBag.DayID = new SelectList(db.Days, "ID", "Name", schedule.DayID);
            ViewBag.RoomID = new SelectList(db.Rooms, "ID", "Name", schedule.RoomID);
            ViewBag.TrainerID = new SelectList(db.Trainers, "ID", "Name", schedule.TrainerID);
            return View(schedule);
        }

        // GET: Admin/Schedules/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Schedule schedule = db.Schedules.Find(id);
            if (schedule == null)
            {
                return HttpNotFound();
            }
            return View(schedule);
        }

        // POST: Admin/Schedules/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Schedule schedule = db.Schedules.Find(id);
            db.Schedules.Remove(schedule);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
