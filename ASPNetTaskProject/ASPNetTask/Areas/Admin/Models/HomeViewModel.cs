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
        public List<Package> Package { get; set; }
        public List<Room> Room { get; set; }
        public List<Trainer> Trainer { get; set; }
        public List<Cours> Cours { get; set; }
        public List<Payment> Payment { get; set; }
        public List<Day> Day { get; set; }
        public List<Schedule> Schedule { get; set; }
    }
}