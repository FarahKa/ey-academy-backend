using System;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Threading.Tasks;
using Domain;
using MediatR;
using Persistence;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Application.Mobile
{
    public class CheckIn
    {

        public class Query : IRequest
        {
            public int QRCode { get; set; }

            public string UserId { get; set; }

        }
        public class Handler : IRequestHandler<Query>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<Unit> Handle(Query request, CancellationToken cancellationToken)
            {
                Console.WriteLine("REQUEST IS AS SUCh:"+ request.QRCode +request.UserId);

                var planning = await _context.Plannings.FirstOrDefaultAsync(e => e.QRCode == request.QRCode);
                if(planning == null){
                    throw new Exception ("The QR code is wrong.");
                }
                Console.WriteLine(planning.QRCode);

                Console.WriteLine(planning.StartDate.ToShortDateString() + "   " + DateTime.Now.ToShortDateString());

                //in prod, check if now is date of planning and there exists a link between user and group
                var notexists = !_context.Presences.Any(o => (o.UserId == request.UserId && o.PlanningId == planning.Id));
                var gooddate = planning.StartDate.ToShortDateString().Equals(DateTime.Now.ToShortDateString());
                // var useringroup = _context.GroupConsultants.Any(o => (o.UserId == request.UserId ));
                // //&& o.GroupId == planning.GroupId
                //&& useringroup
                if (notexists
                 && gooddate
                 )
                {
                    Console.WriteLine("true");
                    var presence = new Presence
                    {
                        DatePresence = DateTime.Now,
                        UserId = request.UserId,
                        PlanningId = planning.Id
                    };

                    Console.Write(presence);

                    _context.Presences.Add(presence);
                    var success = await _context.SaveChangesAsync() > 0;
                    if (success) return Unit.Value;

                }

                // if (!useringroup)
                // {
                //     throw new Exception("You're not in this group");
                // }

                if (!notexists)
                {
                    throw new Exception("Already checked in");
                }
                if (!gooddate)
                {
                    throw new Exception("Too early or too late to check in");
                }

                throw new Exception("Problem saving changes");

            }
        }
    }
}