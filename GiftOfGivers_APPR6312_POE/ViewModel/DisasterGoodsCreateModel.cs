using GiftOfGivers_APPR6312_POE.Models;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace GiftOfGivers_APPR6312_POE.ViewModel
{
    public class DisasterGoodsCreateModel
    {
        public DisasterGoods DisasterGoods { get; set; }
        public IEnumerable<SelectListItem> DisasterData { get; set; }
    }
}
