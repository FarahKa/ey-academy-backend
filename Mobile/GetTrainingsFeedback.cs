using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;
using Persistence;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using System;

namespace Application.Mobile
{
    public class GetTrainingsFeedback
    {
        public class Query : IRequest<List<TrainingWithGroups>>
        {
            public string idC { get; set; }

        }
        public class Handler : IRequestHandler<Query, List<TrainingWithGroups>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<TrainingWithGroups>> Handle(Query request, CancellationToken cancellationToken)
            {

                var groups = _context.Groups.Where(a => _context.GroupConsultants.Any(b => b.UserId.Equals(request.idC) && b.GroupId.Equals(a.Id)));

                List<TrainingWithGroups> tswgs = new List<TrainingWithGroups>();

                foreach (var group in groups)
                {
                    var gbt = await _context.GroupByTrainings.FirstAsync(e => e.GroupId == group.Id);
                    var consultants = await _context.Users.Where(a => _context.GroupConsultants.Any(b => b.GroupId == group.Id && b.UserId == a.Id)).ToListAsync();
                    List<SUser> cs = new List<SUser>();
                    foreach (var consultant in consultants)
                    {
                        SUser u = new SUser(consultant.Id, consultant.DisplayName, consultant.Name, consultant.LastName, consultant.Email, consultant.PhoneNumber);
                        cs.Add(u);
                    }
                    GroupWConsultants gwcs = new GroupWConsultants(group.Name, group.Id, gbt.Id, gbt.code, cs);
 
                    var training = await _context.Trainings.FirstAsync(a => _context.GroupByTrainings.Any(b => b.TrainingId.Equals(a.Id) && b.GroupId.Equals(group.Id)));
                    TrainingWithGroups twgs = new TrainingWithGroups(training.TrainingName, training.Id, training.TrainingDate, training.EndDate);



                    if (_context.Feedbacks.Any(e => e.TrainingId == training.Id && e.UserId == request.idC))
                        {
                            twgs.evaluated = true;
                        }
                        else
                        {
                            twgs.evaluated = false;
                        }



                    
                    List<SUser> ts = new List<SUser>();
                    var trainers = await _context.Users.Where(u => _context.LFormerAssigned.Any(x => x.TrainingId == training.Id && x.UserId == u.Id)).ToListAsync();
                    foreach (var trainer in trainers)
                    {
                        SUser u = new SUser(trainer.Id, trainer.DisplayName, trainer.Name, trainer.LastName, trainer.Email, trainer.PhoneNumber);
                        ts.Add(u);
                    }
                    gwcs.trainers = ts;


                    List<GroupWConsultants> gswcs = new List<GroupWConsultants>();
                    gswcs.Add(gwcs);

                    twgs.groups = gswcs;

                    tswgs.Add(twgs);


                }

                return (tswgs);

            }
        }
    }
}