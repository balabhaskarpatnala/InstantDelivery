﻿using AutoMapper.QueryableExtensions;
using InstantDelivery.Common.Enums;
using InstantDelivery.Domain;
using InstantDelivery.Domain.Entities;
using InstantDelivery.Model;
using InstantDelivery.Model.Paging;
using InstantDelivery.Service.Paging;
using Microsoft.AspNet.Identity;
using System;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;

namespace InstantDelivery.Service.Controllers
{
    /// <summary>
    /// Kontroler użytkowników
    /// </summary>
    [Authorize(Roles = "Admin")]
    [RoutePrefix("Users")]
    public class UsersController : ApiController
    {
        private readonly InstantDeliveryContext context;
        private readonly UserManager<User, string> userManager;

        /// <summary>
        /// Konstruktor kontrolera
        /// </summary>
        /// <param name="context"></param>
        /// <param name="userManager"></param>
        public UsersController(InstantDeliveryContext context, UserManager<User, string> userManager)
        {
            this.context = context;
            this.userManager = userManager;
        }

        /// <summary>
        /// Zwraca stronę użytkowników
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        [Route("Page"), HttpGet]
        public IHttpActionResult GetPage([FromUri] PageQuery query)
        {
            var dtos = context.Employees.Include(e => e.User)
                .AsQueryable()
                .Where(e => e.User != null)
                .ProjectTo<UserDto>();
            var result = PagingHelper.GetPagedResult(dtos, query);
            foreach (var dto in result.PageCollection)
            {
                dto.Role = (Role)Enum.Parse(typeof(Role), userManager.GetRoles(dto.Id).First());
            }
            return Ok(result);
        }

        /// <summary>
        /// Zmienia rolę użytkownika
        /// </summary>
        /// <param name="username">Nazwa użytkownika</param>
        /// <param name="newRole">Nowa rola</param>
        /// <returns></returns>
        [Route("ChangeRole/{username}"), HttpPost]
        public async Task<IHttpActionResult> ChangeRole(string username, [FromBody]Role newRole)
        {
            User user = await userManager.FindByNameAsync(username);
            if (user == null)
            {
                return NotFound();
            }
            string[] allRoles = context.Roles.Select(r => r.Name).ToArray();
            foreach (var role in allRoles)
            {
                await userManager.RemoveFromRoleAsync(user.Id, role);
            }
            var result = await userManager.AddToRoleAsync(user.Id, newRole.ToString());
            if (result.Succeeded)
            {
                return Ok();
            }
            return BadRequest();
        }
    }
}
