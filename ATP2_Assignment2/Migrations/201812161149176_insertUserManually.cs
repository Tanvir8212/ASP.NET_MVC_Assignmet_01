namespace ATP2_Assignment2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class insertUserManually : DbMigration
    {
        public override void Up()
        {
            Sql("Insert into Users values ('Tanvir','sajid8212@gmail.com','1121')");
        }
        
        public override void Down()
        {
        }
    }
}
