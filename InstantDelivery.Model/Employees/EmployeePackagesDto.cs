﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using InstantDelivery.Model.Packages;

namespace InstantDelivery.Model.Employees
{
    /// <summary>
    /// Obiekt DTO kuriera z jego paczkami.
    /// </summary>
    public class EmployeePackagesDto : ValidationBase
    {
        /// <summary>
        /// Id pracownika
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Imię
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        [RegularExpression("[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśżź]*", ErrorMessage = "Proszę podać poprawne imię")]
        public string FirstName { get; set; }

        /// <summary>
        /// Nazwisko
        /// </summary>
        [Required(ErrorMessage = "To pole jest wymagane")]
        [RegularExpression("[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśżź]*", ErrorMessage = "Proszę podać poprawne nazwisko")]
        public string LastName { get; set; }

        /// <summary>
        /// Przesyłki pracownika
        /// </summary>
        public List<PackageDto> Packages { get; set; }
    }
}
