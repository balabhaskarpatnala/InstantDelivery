using System.Collections.Generic;
using System.ComponentModel;

namespace InstantDelivery.Model.Paging
{
    /// <summary>
    /// Obiekt reprezentuj�cy zapytanie o stron� danych
    /// </summary>
    public class PageQuery
    {
        /// <summary>
        /// Rozmiar strony
        /// </summary>
        public int PageSize { get; set; }

        /// <summary>
        /// Numer strony
        /// </summary>
        public int PageIndex { get; set; }

        /// <summary>
        /// Filtry danych
        /// </summary>
        public IDictionary<string, string> Filters { get; } =
            new Dictionary<string, string>();

        /// <summary>
        /// W�a�ciwo��, po kt�rej dane maj� by� sortowane
        /// </summary>
        public string SortProperty { get; set; }

        /// <summary>
        /// Kierunek sortowania
        /// </summary>
        public ListSortDirection? SortDirection { get; set; }
    }
}