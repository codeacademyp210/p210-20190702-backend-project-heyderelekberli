using ASPNetTask.Areas.Admin.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ASPNetTask.Areas.Admin.DAL
{
    public class AdminContext : DbContext
    {
        public AdminContext() : base("AdminConnect")
        {
        }

        public DbSet<User> Users { get; set; }
        public DbSet<ClubInfo> ClubInfos { get; set; }
    }
}