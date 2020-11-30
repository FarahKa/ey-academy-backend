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
    public class PreviousCheckIns
    {

        public class Query : IRequest<List<Attendance>>
        {
            public string UserId { get; set; }

        }
        public class Handler : IRequestHandler<Query, List<Attendance>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<Attendance>> Handle(Query request, CancellationToken cancellationToken)
            {

                Console.WriteLine("REQUEST IS AS SUCh: " +request.UserId);

                List<Attendance> attendances = new List<Attendance>();

                var presences = await _context.Presences.Where(e => e.UserId == request.UserId).ToListAsync();
                foreach(var presence in presences){
                    Attendance a = new Attendance();
                    a.Date = presence.DatePresence;
                    var planning= await _context.Plannings.FirstOrDefaultAsync(e => e.Id == presence.PlanningId);
                    var training = await _context.Trainings.FirstOrDefaultAsync(e => e.Id == planning.TrainingId);
                    a.TrainingName = training.TrainingName;
                    // var group = await _context.Groups.FirstOrDefaultAsync(e=> e.Id == planning.GroupId);
                    // a.GroupName=group.Name;
                    attendances.Add(a);
                }
                
                return(attendances);

            }
        }
    }
}