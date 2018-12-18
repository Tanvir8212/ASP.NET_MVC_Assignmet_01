using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ATP2_Assignment2.Model
{
    public class MyDatabaseContext : DbContext
    {
        public DbSet<User> Users { get; set; }
    }
}