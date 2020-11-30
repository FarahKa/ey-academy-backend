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
    public class DeletePeerReview
    {

        public class Query : IRequest
        {
            public Guid gbtId { get; set; }

            public string UserId { get; set; }

        }
        public class Handler : IRequestHandler<Query>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<Unit> Handle(Query request, CancellationToken cancellationToken)
            {
                var assessment = await _context.SelfandPeerAssessments.FirstAsync(e => e.GroupTrainingId == request.gbtId && e.UserId == request.UserId);
               var marks= await _context.CAMarks.Where(e => e.CAId == assessment.SelfandPeerAssessmentId).ToListAsync();
                foreach(var mark in marks){
                    _context.CAMarks.Remove(mark);
                }

                var success = await _context.SaveChangesAsync() > 0;

                if (success)
                {

                    _context.SelfandPeerAssessments.Remove(assessment);
                    var secondSuccess = await _context.SaveChangesAsync() > 0;
                    if (secondSuccess)
                    {
                        return Unit.Value;
                    }
                    else
                    {
                        throw new Exception("failed deleting assessment");
                    }

                }
                else
                {
                    throw new Exception("failed deleting marks");
                }

            }
        }
    }
}