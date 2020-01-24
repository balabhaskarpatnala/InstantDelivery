﻿using InstantDelivery.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;

namespace InstantDelivery.Service.Helpers
{
    /// <summary>
    /// Klasa umożliwiające wysyłanie maila.
    /// </summary>
    public class EMailHelper : IDisposable
    {
        /// <summary>
        /// Konstruktor
        /// </summary>
        public EMailHelper()
        {
            DefaultAccount = new EmailAccount
            {
                DisplayName = "Instant Delivery",
                Email = ConfigurationManager.AppSettings["NotificationEmailUsername"],
                EnableSsl = true,
                UseDefaultCredentials = false,
                Password = ConfigurationManager.AppSettings["NotificationEmailPassword"],
                Username = ConfigurationManager.AppSettings["NotificationEmailUsername"],
                Host = "smtp.gmail.com",
                Port = 587
            };
        }

        private readonly EmailAccount DefaultAccount;

        /// <summary>
        /// Sends an email
        /// </summary>
        /// <param name="replyTo"></param>
        /// <param name="subject">Subject</param>
        /// <param name="body">Body</param>
        /// <param name="toAddress">To address</param>
        public void SendEmail(string toAddress, string subject, string body, string replyTo = null)
        {
            if (string.IsNullOrEmpty(toAddress)) return;
            try
            {
                SendEmail(DefaultAccount, subject, body,
                          new MailAddress("rosyjski031@gmail.com", "Instant Delivery"), new MailAddress(toAddress), replyTo);
            }
            catch (Exception)
            {
                throw new Exception("Sending an email failed.");
            }
        }


        /// <summary>
        /// Sends an email
        /// </summary>
        /// <param name="emailAccount">Email account to use</param>
        /// <param name="subject">Subject</param>
        /// <param name="body">Body</param>
        /// <param name="from">From address</param>
        /// <param name="to">To address</param>
        /// <param name="replyTo"></param>
        /// <param name="bcc">BCC addresses list</param>
        /// <param name="cc">CC addresses ist</param>
        private static void SendEmail(EmailAccount emailAccount, string subject, string body,
                                       MailAddress from, MailAddress to, string replyTo,
                                      IEnumerable<string> bcc = null, IEnumerable<string> cc = null)
        {
            var message = new MailMessage { From = @from };
            message.To.Add(to);
            if (!string.IsNullOrEmpty(replyTo))
                message.ReplyToList.Add(new MailAddress(replyTo));

            if (null != bcc)
            {
                foreach (var address in bcc.Where(bccValue => !string.IsNullOrWhiteSpace(bccValue)))
                {
                    message.Bcc.Add(address.Trim());
                }
            }
            if (null != cc)
            {
                foreach (var address in cc.Where(ccValue => !string.IsNullOrWhiteSpace(ccValue)))
                {
                    message.CC.Add(address.Trim());
                }
            }
            message.Subject = subject;
            message.Body = body;
            message.IsBodyHtml = true;

            using (var smtpClient = new SmtpClient())
            {
                smtpClient.UseDefaultCredentials = emailAccount.UseDefaultCredentials;
                smtpClient.Host = emailAccount.Host;
                smtpClient.Port = emailAccount.Port;
                smtpClient.EnableSsl = emailAccount.EnableSsl;
                smtpClient.Credentials = emailAccount.UseDefaultCredentials ? CredentialCache.DefaultNetworkCredentials : new NetworkCredential(emailAccount.Username, emailAccount.Password);

                try
                {
                    smtpClient.Send(message);
                }
                catch (Exception)
                {
                    throw new Exception("Sending an email failed.");
                }
            }
        }

        /// <summary>
        /// Waliduje email
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        public static bool ValidateEmail(string email)
        {

            const string emailRegEx = "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";

            if (string.IsNullOrEmpty(email) || (email.Trim().Length == 0))
            {
                return false;
            }

            try
            {
                var match = Regex.Match(email, emailRegEx, RegexOptions.Compiled);
                var matchEmailPattern = ((match.Success && (match.Index == 0)) && (match.Length == email.Length));
                if (!matchEmailPattern) return false;
                var serverIndex = email.IndexOf('@') + 1;
                var server = email.Substring(serverIndex);

                var pingReply = new Ping().Send(server, 300, new byte[] { 0xFF });
                var isLive = pingReply != null && pingReply.Status == IPStatus.Success;
                var reply = new Ping().Send(server, 300, new byte[] { 0xFF });
                if (reply != null)
                    isLive = isLive || reply.Status == IPStatus.Success;
                var send = new Ping().Send(server, 300, new byte[] { 0xFF });
                if (send != null)
                    isLive = isLive || send.Status == IPStatus.Success;

                return isLive;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Represents an email account
        /// </summary>
        private class EmailAccount
        {
            /// <summary>
            /// Gets or sets an email address
            /// </summary>
            public string Email { get; set; }

            /// <summary>
            /// Gets or sets an email display name
            /// </summary>
            public string DisplayName { get; set; }

            /// <summary>
            /// Gets or sets an email host
            /// </summary>
            public string Host { get; set; }

            /// <summary>
            /// Gets or sets an email port
            /// </summary>
            public int Port { get; set; }

            /// <summary>
            /// Gets or sets an email user name
            /// </summary>
            public string Username { get; set; }

            /// <summary>
            /// Gets or sets an email password
            /// </summary>
            public string Password { get; set; }

            /// <summary>
            /// Gets or sets a value that controls whether the SmtpClient uses Secure Sockets Layer (SSL) to encrypt the connection
            /// </summary>
            public bool EnableSsl { get; set; }

            /// <summary>
            /// Gets or sets a value that controls whether the default system credentials of the application are sent with requests.
            /// </summary>
            public bool UseDefaultCredentials { get; set; }

        }

        public void Dispose() { }

        /// <summary>
        /// Zwraca treść HTML wiadomomości po rejestracji.
        /// </summary>
        /// <param name="employee"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public string RegistrationBody(Employee employee, string password)
        {
            return @"Witaj " + employee.FirstName + " " + employee.LastName + " , " +
                   "<br /><br />Twoje konto zostało zarejestrowane.<br />Nazwa użytkownika: <strong>"
                   + employee.User.UserName + "</strong><br />" +
                   "Hasło: <strong>" + password +
                   "</strong><em><br /><br />Pozdrawiamy, <br />Zespół Instant Delivery</em>";
        }

        /// <summary>
        /// Zwraca treść wiadomości HTML po przypisaniu paczki do kuriera.
        /// </summary>
        /// <param name="employee"></param>
        /// <returns></returns>
        public string AssignedPackageBody(Employee employee)
        {
            return @"Witaj " + employee.FirstName + " " + employee.LastName + " , " +
                   "<br />Otrzymałeś nowe zlecenie. Sprawdź stan w systemie." +
                   "</strong><em><br /><br />Pozdrawiamy, <br />Zespół Instant Delivery</em>";
        }
    }
}