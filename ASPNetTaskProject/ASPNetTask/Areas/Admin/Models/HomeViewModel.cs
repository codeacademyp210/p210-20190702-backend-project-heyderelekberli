using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNetTask.Areas.Admin.Models
{
    public class HomeViewModel 
    {
        public List<User> User { get; set; }
        public ClubInfo ClubInfo { get; set; }
    }
}