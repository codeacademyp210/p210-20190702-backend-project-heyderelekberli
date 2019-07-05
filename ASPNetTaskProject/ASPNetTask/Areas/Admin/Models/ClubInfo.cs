using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNetTask.Areas.Admin.Models
{
    public class ClubInfo
    {
        public int ID { get; set; }
        public string Image { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Pincode { get; set; }
        public string Fax { get; set; }
        public string Website { get; set; }
    }
}