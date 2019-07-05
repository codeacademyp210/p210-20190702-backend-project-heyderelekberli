namespace ASPNetTask.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class create : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Image = c.String(),
                        UserName = c.String(),
                        Email = c.String(),
                        ContactNumber = c.String(),
                        Gender = c.String(),
                        Adress = c.String(),
                        City = c.String(),
                        PinCode = c.String(),
                        Country = c.String(),
                        Status = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Users");
        }
    }
}
