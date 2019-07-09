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
    public class InfoController : Controller
    {
        private AdminConnectEntities db = new AdminConnectEntities();

        // GET: Admin/Info
        public ActionResult Index()
        {
            return RedirectToAction("Create");
        }

        // GET: Admin/Info/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClubInfo clubInfo = db.ClubInfoes.Find(id);
            if (clubInfo == null)
            {
                return HttpNotFound();
            }
            return View(clubInfo);
        }

        // GET: Admin/Info/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Info/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Image,Username,Email,PhoneNumber,Address,City,Pincode,Fax,Website,Status")] ClubInfo clubInfo)
        {
            if (ModelState.IsValid)
            {
                db.ClubInfoes.Add(clubInfo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(clubInfo);
        }

        // GET: Admin/Info/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClubInfo clubInfo = db.ClubInfoes.Find(id);
            if (clubInfo == null)
            {
                return HttpNotFound();
            }
            return View(clubInfo);
        }

        // POST: Admin/Info/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Image,Username,Email,PhoneNumber,Address,City,Pincode,Fax,Website,Status")] ClubInfo clubInfo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(clubInfo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(clubInfo);
        }

        // GET: Admin/Info/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClubInfo clubInfo = db.ClubInfoes.Find(id);
            if (clubInfo == null)
            {
                return HttpNotFound();
            }
            return View(clubInfo);
        }

        // POST: Admin/Info/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ClubInfo clubInfo = db.ClubInfoes.Find(id);
            db.ClubInfoes.Remove(clubInfo);
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
