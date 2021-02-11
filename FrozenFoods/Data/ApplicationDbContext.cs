using FrozenFoods.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FrozenFoods.Data
{
    public class ApplicationDbContext:IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Company> Companies { get; set; }
        public DbSet<FoodCategory> FoodCategories { get; set; }
        public DbSet<FoodInfo> FoodInfos { get; set; }
        public DbSet<FoodOrder> FoodOrders { get; set; }
    }
}
