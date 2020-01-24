﻿using InstantDelivery.Model.Packages;
using InstantDelivery.ViewModel.Proxies;

namespace InstantDelivery.ViewModel
{
    /// <summary>
    /// Model widoku z paczkami zalogowanego kuriera
    /// </summary>
    public class CourierPackagesViewModel : CourierPackagesViewModelBase
    {
        private readonly PackagesServiceProxy service;

        /// <summary>
        /// Konstruktor modelu widoku
        /// </summary>
        /// <param name="service"></param>
        public CourierPackagesViewModel(PackagesServiceProxy service)
            : base(service)
        {
            this.service = service;
        }

        public async void Delivered(PackageDto package)
        {
            await service.MarkAsDelivered(package.Id);
            UpdateData();
        }

        public async void NoticeLeft(PackageDto package)
        {
            await service.DetachPackageFromEmployee(package.Id);
            UpdateData();
        }
    }
}