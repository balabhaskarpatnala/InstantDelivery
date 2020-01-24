﻿using InstantDelivery.Common.Enums;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;

namespace InstantDelivery.Model.Packages
{
    /// <summary>
    /// Obiekt DTO paczki.
    /// </summary>
    public class PackageDto : ValidationBase
    {
        /// <summary>
        /// Identyfikator paczki
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Waga paczki
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        [Range(1, 150, ErrorMessage = "Paczka posiada niedopuszczalną wagę")]
        public decimal Weight { get; set; }

        /// <summary>
        /// Wysokość paczki
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        [Range(1, 100, ErrorMessage = "Paczka posiada niedopuszczalną wysokość")]
        public double Height { get; set; }

        /// <summary>
        /// Szerokość paczki
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        [Range(1, 100, ErrorMessage = "Paczka posiada niedopuszczalną szerokość")]
        public double Width { get; set; }

        /// <summary>
        /// Długość paczki
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        [Range(1, 250, ErrorMessage = "Paczka posiada niedopuszczalną długość")]
        public double Length { get; set; }

        /// <summary>
        /// Koszt paczki
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        public decimal Cost { get; set; }

        /// <summary>
        /// Status packi
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public PackageStatus Status { get; set; }

        /// <summary>
        /// Identyfikator pracownika który agreguje paczki
        /// </summary>
        public string EmployeeId { get; set; }

        /// <summary>
        /// Adres dostawy paczki.
        /// </summary>
        public AddressDto ShippingAddress { get; set; } = new AddressDto();

        public string Sender { get; set; }
        public string Recipient { get; set; }
    }
}
