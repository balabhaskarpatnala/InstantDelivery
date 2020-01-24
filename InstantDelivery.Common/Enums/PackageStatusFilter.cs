﻿using System.ComponentModel;

namespace InstantDelivery.Common.Enums
{
    /// <summary>
    /// Definicja filtra  po statusie paczki
    /// </summary>
    public enum PackageStatusFilter
    {
        [Description("Dostarczone")]
        Delivered,
        [Description("Nowe")]
        New,
        [Description("Do odebrania")]
        ToPickUp,
        [Description("W dostawie")]
        InDelivery,
        [Description("Wszystkie")]
        All
    }
}