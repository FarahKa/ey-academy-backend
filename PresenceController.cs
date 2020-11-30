using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Application.JuryAssessments;
using Domain;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Application.Mobile;

namespace API.Controllers 
{
    public class PresenceController: BaseController
    {

        [AllowAnonymous]
        [HttpPost("checkin")]
        public async Task<ActionResult<Unit>> CheckInUser (CheckIn.Query query)
        {

            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("previouscheckins")]
        public async Task<ActionResult<List<Attendance>>> PreviousCheckins (PreviousCheckIns.Query query)
        {

            return await Mediator.Send(query);
        }
        
    }
}