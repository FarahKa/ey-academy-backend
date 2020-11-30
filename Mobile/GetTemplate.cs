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
    public class GetTemplate
    {

        public class Query : IRequest<TemplateTrainer>
        {
            //public string Code { get; set; }

        }
        public class Handler : IRequestHandler<Query, TemplateTrainer>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<TemplateTrainer> Handle(Query request, CancellationToken cancellationToken)
            {

                TemplateFormerAssessment tfa = await _context.TemplateFormerAssessments.FirstOrDefaultAsync();
                var tfaId = tfa.Id;

                TemplateTrainer result = new TemplateTrainer(tfaId);


                List<ThemeFA> themes = await _context.ThemeFA
                .Where(a => _context.TFAThemes
                       .Any(e => e.ThemeFId == a.Id && e.TFAId == tfaId)).ToListAsync();

                
                foreach(var theme in themes){
                    SThemes ts = new SThemes(theme.Id, theme.Title);

                    List<CriterionFA> criteria = await _context.CriterionFA.Where(e => e.ThemeFAId == theme.Id).ToListAsync();
                    foreach(var crit in criteria){
                        SCriterion ca = new SCriterion(crit.Id, crit.CriterionField);
                        ts.criteria.Add(ca);
                    }
                    result.themes.Add(ts);
                }

                return result;


            }
        }
    }
}