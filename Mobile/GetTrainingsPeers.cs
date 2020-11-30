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
    public class GetTrainingsPeers
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



                    if (_context.SelfandPeerAssessments.Any(e => e.GroupTrainingId == gbt.Id && e.UserId == request.idC))
                        {
                            gwcs.evaluated = true;
                        }
                        else
                        {
                            gwcs.evaluated = false;
                        }


                    var training = await _context.Trainings.FirstAsync(a => _context.GroupByTrainings.Any(b => b.TrainingId.Equals(a.Id) && b.GroupId.Equals(group.Id)));
                    TrainingWithGroups twgs = new TrainingWithGroups(training.TrainingName, training.Id, training.TrainingDate, training.EndDate);

                    
                    // List<SUser> ts = new List<SUser>();
                    // var trainers = await _context.Users.Where(u => _context.LFormerAssigned.Any(x => x.TrainingId == training.Id && x.UserId == u.Id)).ToListAsync();
                    // foreach (var trainer in trainers)
                    // {
                    //     SUser u = new SUser(trainer.Id, trainer.DisplayName, trainer.Name, trainer.LastName, trainer.Email, trainer.PhoneNumber);
                    //     ts.Add(u);
                    // }
                    // gwcs.trainers = ts;


                    List<GroupWConsultants> gswcs = new List<GroupWConsultants>();
                    gswcs.Add(gwcs);

                    twgs.groups = gswcs;

                    tswgs.Add(twgs);


                }

                return (tswgs);

                // //List<Training> trainings = new List<Training>();
                // var trainings = await _context.Trainings
                // .Where(a => _context.GroupConsultants
                //       .Any(b => b.UserId.Equals(request.idC) && _context.GroupByTrainings
                //                                                 .Any(c => c.GroupId.Equals(b.GroupId)
                //                                                && c.TrainingId.Equals(a.Id)))

                //         ).ToListAsync();


                // Console.WriteLine(trainings);


                // List<TrainingWithGroups> tswgs = new List<TrainingWithGroups>();

                // foreach (var training in trainings)
                // {
                //     TrainingWithGroups twgs = new TrainingWithGroups(training.TrainingName, training.Id, training.TrainingDate);
                //     var groupsbytraining = await _context.GroupByTrainings.Where(e => e.TrainingId == training.Id).ToListAsync();


                //     var groups = await _context.Groups.Where(a => _context.GroupByTrainings
                //     .Any(e => e.GroupId == a.Id && e.TrainingId == training.Id && _context.GroupConsultants.Any(z => z.UserId.Equals(request.idC) && z.GroupId.Equals(a.Id)))).ToListAsync();
                //     List<GroupWConsultants> gswcs = new List<GroupWConsultants>();

                //     foreach (var group in groups)
                //     {
                //         var gbt = await _context.GroupByTrainings.FirstAsync(e => e.GroupId == group.Id && e.TrainingId == training.Id);
                //         var consultants = await _context.Users.Where(a => _context.GroupConsultants.Any(b => b.GroupId == group.Id && b.UserId == a.Id)).ToListAsync();
                //         List<SUser> cs = new List<SUser>();
                //         foreach (var consultant in consultants)
                //         {
                //             SUser u = new SUser(consultant.Id, consultant.DisplayName, consultant.Name, consultant.LastName, consultant.Email, consultant.PhoneNumber);
                //             cs.Add(u);
                //         }
                //         GroupWConsultants gwcs = new GroupWConsultants(group.Name, group.Id, gbt.Id, cs);

                //         if (_context.FormerAssessments.Any(e => e.GroupTrainingId == gbt.Id && e.UserId == request.idC))
                //         {
                //             gwcs.evaluated = true;
                //         }
                //         else
                //         {
                //             gwcs.evaluated = false;
                //         }

                //         gswcs.Add(gwcs);

                //     }
                //     twgs.groups = gswcs;


                //     tswgs.Add(twgs);

                // }

                // return tswgs;
            }
        }
    }
}