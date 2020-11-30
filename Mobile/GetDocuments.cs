using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;
using Persistence;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using System;
using Domain;

namespace Application.Mobile
{
    public class GetDocuments
    {
        public class Query : IRequest<List<Training>>
        {
            public string idC { get; set; }

        }
        public class Handler : IRequestHandler<Query, List<Training>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<Training>> Handle(Query request, CancellationToken cancellationToken)
            {

                var trainings = await _context.Trainings.Where(a => _context.GroupByTrainings.Any(b => b.TrainingId.Equals(a.Id) && b.Group.GroupConsultants.Any(gc => gc.UserId == request.idC))).Include(t => t.Documents).ToListAsync();

                return (trainings);

            }
        }
    }
}