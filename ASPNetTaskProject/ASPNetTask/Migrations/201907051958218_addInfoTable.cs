namespace ASPNetTask.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addInfoTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ClubInfoes",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Image = c.String(),
                        Username = c.String(),
                        Email = c.String(),
                        PhoneNumber = c.String(),
                        Address = c.String(),
                        City = c.String(),
                        Pincode = c.String(),
                        Fax = c.String(),
                        Website = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.ClubInfoes");
        }
    }
}
