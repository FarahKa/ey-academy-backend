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
    public class GetTemplateFeedback
    {

        public class Query : IRequest<List<Section>>
        {
            //public string Code { get; set; }

        }
        public class Handler : IRequestHandler<Query, List<Section>>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<List<Section>> Handle(Query request, CancellationToken cancellationToken)
            {

                List<Section> result = await _context.Sections.Include(section => section.Questions).ToListAsync();

                return result;



            }
        }
    }
}