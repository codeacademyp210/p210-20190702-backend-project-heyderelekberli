namespace ASPNetTask.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<ASPNetTask.Areas.Admin.DAL.AdminContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(ASPNetTask.Areas.Admin.DAL.AdminContext context)
        {
            context.Users.AddOrUpdate(nu => nu.ID,
          new Areas.Admin.Models.User { ID = 1, Image = "user1.png", UserName="Bella", Email= "gankunding@hotmail.com", ContactNumber= "(999) 999-9999", Status="Active" }
                );
            context.ClubInfos.AddOrUpdate(nu => nu.ID,
            new Areas.Admin.Models.ClubInfo { ID = 1, Image = "avatar1.jpg", Username = "Nataliapery", Email = "Nataliapery@example.com", PhoneNumber = "	999-999-9999", Address = "Sydney, Australia", City = "Nakia",  Pincode = "999999", Fax = "12345", Website = "https://www.example.com" }
                );
        }
    }
}
