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
    public class ListPlanningsJ
    {
          public class Query : IRequest<List<GroupByTraining>>
        {
        public  string idJury {get;set;}

        }
        public class Handler : IRequestHandler<Query, List<GroupByTraining>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<GroupByTraining>> Handle(Query request, CancellationToken cancellationToken)
            {  Console.WriteLine("______________________________");
                 Console.WriteLine(request.idJury);   
                 Console.WriteLine("______________________________");              
                var gbts =  await _context.GroupByTrainings.Where(e => e.Training.LJuriesAssigned.Any((ja) => ja.UserId == request.idJury)).Include(planning => planning.Training).Include(p => p.Group).ToListAsync();           
                // var plannings = new List<Planning>();
                // foreach(var gbt in gbts){
                //     var p = new Planning();
                //     p.Id= gbt.Id;
                //     p.Training = gbt.Training;
                //     p.Location = gbt.location;
                //     p.StartDate = gbt.startEvalDate;
                //     p.EndDate = gbt.endEvalDate;
                //     p.Name=gbt.Group.Name;
                //     p.QRCode = Int32.Parse(gbt.code);
                //     plannings.Add(p);
                // }
                return gbts;
            }
        }
    }
}