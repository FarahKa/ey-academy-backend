using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;
using Persistence;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Application.Mobile
{
    public class TrainingsWithGroups
    {
        public class Query : IRequest<List<TrainingWithGroups>>
        {
            public string idFormer { get; set; }

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
                //List<Training> trainings = new List<Training>();
                var trainings = await _context.Trainings
                .Where(a => _context.LFormerAssigned
                      .Any(e => e.UserId.Equals(request.idFormer) && e.TrainingId == a.Id)).ToListAsync();

                List<TrainingWithGroups> tswgs = new List<TrainingWithGroups>();

                foreach (var training in trainings)
                {
                    TrainingWithGroups twgs = new TrainingWithGroups(training.TrainingName, training.Id, training.TrainingDate, training.EndDate);
                    var groupsbytraining = await _context.GroupByTrainings.Where(e => e.TrainingId == training.Id).ToListAsync();


                    var groups = await _context.Groups.Where(a => _context.GroupByTrainings
                    .Any(e => e.GroupId == a.Id && e.TrainingId == training.Id)).ToListAsync();
                    List<GroupWConsultants> gswcs = new List<GroupWConsultants>();

                    foreach (var group in groups)
                    {
                        var gbt = await _context.GroupByTrainings.FirstAsync(e => e.GroupId == group.Id && e.TrainingId == training.Id);
                        var consultants = await _context.Users.Where(a => _context.GroupConsultants.Any(b => b.GroupId == group.Id && b.UserId == a.Id)).ToListAsync();
                        List<SUser> cs = new List<SUser>();
                        foreach (var consultant in consultants)
                        {
                            SUser u = new SUser(consultant.Id, consultant.DisplayName, consultant.Name, consultant.LastName, consultant.Email, consultant.PhoneNumber);
                            cs.Add(u);
                        }
                        GroupWConsultants gwcs = new GroupWConsultants(group.Name, group.Id, gbt.Id, gbt.code, cs);

                        if (_context.FormerAssessments.Any(e => e.GroupTrainingId == gbt.Id && e.UserId == request.idFormer))
                        {
                            gwcs.evaluated = true;
                        }
                        else
                        {
                            gwcs.evaluated = false;
                        }

                        gswcs.Add(gwcs);

                    }
                    twgs.groups = gswcs;


                    tswgs.Add(twgs);

                }

                return tswgs;







                // List<Training> trainings = new List<Training>();
                // var ListTrainings = await _context.LFormerAssigned.Where(e => e.UserId.Equals(request.idFormer)).ToListAsync();
                // foreach (var item in ListTrainings)

                // {
                //     var training = await _context.Trainings.FindAsync(item.TrainingId);
                //     var groups = await _context.Groups.Where(a => _context.GroupByTrainings
                //     .Any(e => e.GroupId == a.Id && e.TrainingId == item.TrainingId)).ToListAsync();
                //     foreach (var group in groups)
                //     {
                //         var groupConsultants = await _context.GroupConsultants.Where(b => b.GroupId == group.Id).ToListAsync();
                //         foreach(var gc in groupConsultants){
                //             var consultants= await _context.Users.Where(e => e.Id == gc.UserId).ToListAsync();
                //         }
                //         //var consultants = await _context.Users.Where(a => _context.GroupConsultants.Any(b => b.GroupId == group.Id && b.UserId == a.Id)).ToListAsync();
                //         var gbt = await _context.GroupByTrainings.Where(e => e.GroupId == group.Id && e.TrainingId == training.Id).FirstOrDefaultAsync();

                //     }
                //     trainings.Add(training);
                // }
                // return trainings;



                // List<TrainingWithGroups> ls = new List<TrainingWithGroups>();

                // var ListTrainings = await _context.LFormerAssigned.Where(e => e.UserId.Equals(request.idFormer)).ToListAsync();
                // foreach (var item in ListTrainings)

                // {
                //     var training = await _context.Trainings.FindAsync(item.TrainingId);
                //     var groups = await _context.Groups.Where(a => _context.GroupByTrainings
                //     .Any(e => e.GroupId == a.Id && e.TrainingId == item.TrainingId)).ToListAsync();

                //     TrainingWithGroups tr = new TrainingWithGroups();
                //     tr.training = training;



                //     foreach (var group in groups)
                //     {
                //         var consultants = await _context.Users
                //         .Where(a => _context.GroupConsultants
                //                     .Any(b => b.GroupId == group.Id && b.UserId == a.Id))
                //         .ToListAsync();

                //         var gbt = await _context.GroupByTrainings.Where(e => e.GroupId == group.Id && e.TrainingId == training.Id).FirstOrDefaultAsync();
                //         tr.groups.Add(new GroupWConsultants(group, consultants/*, gbt*/));
                //     }
                //     Console.WriteLine("AAAAAAAAAAAAAAAAAAAAAA");
                //     Console.WriteLine(tr);

                //     ls.Add(tr);

                // }



                // return ls;
            }
        }
    }
}