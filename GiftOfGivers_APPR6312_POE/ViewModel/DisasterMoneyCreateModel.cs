using Microsoft.AspNetCore.Mvc.Rendering;
using GiftOfGivers_APPR6312_POE.Models;
using System.Collections.Generic;

namespace GiftOfGivers_APPR6312_POE.ViewModel
{
    public class DisasterMoneyCreateModel
    {
        public DisasterMoney DisasterMoney { get; set; }
        public IEnumerable<SelectListItem> DisasterData { get; set; }
    }
}
