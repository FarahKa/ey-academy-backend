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
    public class DeleteFeedback
    {

        public class Query : IRequest
        {
            public Guid TrainingId { get; set; }

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
                var assessment = await _context.Feedbacks.FirstAsync(e => e.TrainingId == request.TrainingId && e.UserId == request.UserId);
               var marks= await _context.Answers.Where(e => e.FeedbackId == assessment.Id).ToListAsync();
                foreach(var mark in marks){
                    _context.Answers.Remove(mark);
                }

                var feedbackSections = await _context.FeedbackSections.Where(a => a.FeedbackId == assessment.Id).ToListAsync();
                 foreach(var fs in feedbackSections){
                    _context.FeedbackSections.Remove(fs);
                }

                var success = await _context.SaveChangesAsync() > 0;

                if (success)
                {

                    _context.Feedbacks.Remove(assessment);
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