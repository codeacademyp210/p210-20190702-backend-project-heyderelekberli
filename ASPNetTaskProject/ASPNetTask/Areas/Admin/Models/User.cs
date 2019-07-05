using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNetTask.Areas.Admin.Models
{
    public class User
    {
        public int ID { get; set; }
        public string Image { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string ContactNumber { get; set; }
        public string Gender { get; set; }
        public string Adress { get; set; }
        public string City { get; set; }
        public string PinCode { get; set; }
        public string Country { get; set; }
        public string Status { get; set; }
    }
}