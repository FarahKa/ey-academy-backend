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
    public class SubmitFeedback
    {

        public class Query : IRequest<Feedback>
        {
            public string UserId { get; set; }
            public Guid TrainingId { get; set; }

            public DateTime Date { get; set; }

            public List<Answer> Answers { get; set; }
        }

        public class Handler : IRequestHandler<Query, Feedback>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<Feedback> Handle(Query request, CancellationToken cancellationToken)
            {
                if (!request.Answers.Any())
                {
                    throw new Exception("Empty Answers List submitted. Exiting.");
                }

                Feedback feedback = new Feedback();
                feedback.Id = Guid.NewGuid();
                feedback.UserId = request.UserId;
                feedback.TrainingId = request.TrainingId;
                feedback.Date = request.Date;

                _context.Feedbacks.Add(feedback);

                var success =  true;
                //await _context.SaveChangesAsync() > 0;


                //not sure what the use of feedbacksections is but it's in the database
                var Sections = _context.Sections.ToList();
                foreach (var item in Sections)
                {
                    FeedbackSection feedbacksection = new FeedbackSection();

                    feedbacksection.FeedbackId = feedback.Id;
                    feedbacksection.SectionId = item.Id;


                    _context.FeedbackSections.Add(feedbacksection);
                    _context.SaveChanges();
                }


                if (success)
                {
                    foreach (var answer in request.Answers)
                    {
                            answer.Id = Guid.NewGuid();
                            answer.FeedbackId = feedback.Id;
                            _context.Answers.Add(answer);

                    }
                    var successAgain = await _context.SaveChangesAsync() > 0;
                    if (successAgain)
                    {
                        return feedback;
                    }
                    else
                    {
                        throw new Exception("Answers could not be saved.");
                    }

                }
                else
                {
                    throw new Exception("Feedback could not be saved.");
                }

            }
        }



    }
}