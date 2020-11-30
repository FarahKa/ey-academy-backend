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
    public class ListPlanningsF
    {
          public class Query : IRequest<List<Planning>>
        {
        public  string idFormer {get;set;}

        }
        public class Handler : IRequestHandler<Query, List<Planning>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<Planning>> Handle(Query request, CancellationToken cancellationToken)
            {  Console.WriteLine("______________________________");
                 Console.WriteLine(request.idFormer);   
                 Console.WriteLine("______________________________");              
                var listSeances =  await _context.Plannings.Where(e => e.FormerId == request.idFormer).Include(planning => planning.Training).ToListAsync();           
                Console.WriteLine("______________________________");
                Console.WriteLine(listSeances);
                Console.WriteLine("______________________________");
                return listSeances;
            }
        }
    }
}