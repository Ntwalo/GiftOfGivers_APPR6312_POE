using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using GiftOfGivers_APPR6312_POE.Models;

namespace GiftOfGivers_APPR6312_POE.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<MonetaryDon> MonetaryDon { get; set; } = default!;
        public DbSet<GoodsDonations> Goods { get; set; }
        public DbSet<GiftOfGivers_APPR6312_POE.Models.DisasterData> DisasterData { get; set; } = default!;
        public DbSet<GiftOfGivers_APPR6312_POE.Models.AddGoods> AddGoods { get; set; } = default!;
        public DbSet<GiftOfGivers_APPR6312_POE.Models.DisasterMoney> DisasterMoney { get; set; } = default!;
        public DbSet<GiftOfGivers_APPR6312_POE.Models.DisasterGoods> DisasterGoods { get; set; } = default!;
    }
}
