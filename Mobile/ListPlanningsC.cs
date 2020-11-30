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
    public class ListPlanningsC
    {
        public class Query : IRequest<List<Planning>>
        {
            public string idC { get; set; }

        }
        public class Handler : IRequestHandler<Query, List<Planning>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<Planning>> Handle(Query request, CancellationToken cancellationToken)
            {
                List<Planning> ls = new List<Planning>();
                List<Group> groups = new List<Group>();
                List<Planning> planings = new List<Planning>();

                var lisGroups = await _context.GroupConsultants.Where(e => e.UserId.Equals(request.idC)).ToListAsync();
                foreach (var groupC in lisGroups)
                {
                    var group = await _context.Groups.FindAsync(groupC.GroupId);
                    groups.Add(group);
                }
                foreach (var group in groups)
                {
                    var seances = await _context.GroupPlanings.Where(e => e.GroupId.Equals(group.Id)).ToListAsync();
                    foreach (var item in seances)
                    {
                        var seance = await _context.Plannings.Include(planning => planning.Training).FirstOrDefaultAsync(e => e.Id == item.PlaningId);
                        seance.GroupPlanings = null;
                        planings.Add(seance);
                    }

                }
                return planings;
            }
        }
    }
}