using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Domain;
using MediatR;
using Persistence;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Application.Mobile
{
    public class GetTemplatePeer
    {

        public class Query : IRequest<TemplateConsultantAssessment>
        {

        }
        public class Handler : IRequestHandler<Query, TemplateConsultantAssessment>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<TemplateConsultantAssessment> Handle(Query request, CancellationToken cancellationToken)
            {

                TemplateConsultantAssessment tca = await _context.TemplateConsultantAssessments.Include(tca => tca.TCACategories).ThenInclude(pivot => pivot.Category).FirstOrDefaultAsync();
                return tca;

            }
        }
    }
}