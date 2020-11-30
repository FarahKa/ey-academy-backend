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
    public class GetTemplateJury
    {

        public class Query : IRequest<TemplateJury>
        {
            //public string Code { get; set; }

        }
        public class Handler : IRequestHandler<Query, TemplateJury>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<TemplateJury> Handle(Query request, CancellationToken cancellationToken)
            {

                TemplateJuryAssessment tja = await _context.TemplateJuryAssessments.FirstOrDefaultAsync();
                var tjaId = tja.Id;

                TemplateJury result = new TemplateJury(tjaId);

//(TJAId, JThemeId)
                List<ThemeJA> themes = await _context.ThemeJA
                .Where(a => _context.TJAThemes
                       .Any(e => e.JThemeId == a.Id && e.TJAId == tjaId)).ToListAsync();

                
                foreach(var theme in themes){
                    JThemes ts = new JThemes(theme.Id, theme.Title);

                    List<CriterionJA> criteria = await _context.CriterionJA.Where(e => e.ThemeJAId == theme.Id).ToListAsync();
                    foreach(var crit in criteria){
                        JCriterion ca = new JCriterion(crit.Id, crit.CriterionField);
                        ts.criteria.Add(ca);
                    }
                    result.themes.Add(ts);
                }

                return result;

            }
        }
    }
}