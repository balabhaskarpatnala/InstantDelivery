﻿using InstantDelivery.Domain.Entities;
using InstantDelivery.Model;
using InstantDelivery.Model.Packages;
using InstantDelivery.Service.Pricing;
using Xunit;

namespace InstantDelivery.Tests
{
    public class RegularPricingStrategyTests
    {
        [Fact]
        public void GetCost_SmallPackage()
        {
            var strategy = new RegularPricingStrategy();
            var package = new PackageDto
            {
                Width = 50,
                Length = 50,
                Height = 50,
                Weight = 2
            };

            decimal cost = strategy.GetCost(package);

            Assert.Equal(18.75M, cost);
        }

        [Fact]
        public void GetCost_LargePackage()
        {
            var strategy = new RegularPricingStrategy();
            var package = new PackageDto
            {
                Width = 50,
                Length = 100,
                Height = 50,
                Weight = 2
            };

            decimal cost = strategy.GetCost(package);

            Assert.Equal(25M, cost);
        }
    }
}
