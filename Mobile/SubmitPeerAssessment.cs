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
    public class SubmitPeerAssessment
    {

        public class Query : IRequest<SelfandPeerAssessment>
        {
            public string UserId { get; set; }
            public Guid GroupTrainingId { get; set; }

            public Guid TCAId { get; set; }

            public List<Note> Marks { get; set; }
        }

        public class Note
        {
            public String consultantId;
            public List<CAMark> criteria;
        }

        public class Handler : IRequestHandler<Query, SelfandPeerAssessment>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<SelfandPeerAssessment> Handle(Query request, CancellationToken cancellationToken)
            {
                if (!request.Marks.Any())
                {
                    throw new Exception("Empty Marks List submitted. Exiting.");
                }

                SelfandPeerAssessment assessment = new SelfandPeerAssessment();
                assessment.SelfandPeerAssessmentId = Guid.NewGuid();
                assessment.UserId = request.UserId;
                assessment.TCAId = request.TCAId;
                assessment.GroupTrainingId = request.GroupTrainingId;
                assessment.Date = DateTime.Now;

                _context.SelfandPeerAssessments.Add(assessment);

                var success = await _context.SaveChangesAsync() > 0;

                if (success)
                {
                    foreach (var marksConsultant in request.Marks)
                    {
                        foreach (var mark in marksConsultant.criteria)
                        {
                            mark.Id = Guid.NewGuid();
                            mark.CAId = assessment.SelfandPeerAssessmentId;
                            mark.ConsultantNoteId = marksConsultant.consultantId;
                            _context.CAMarks.Add(mark);
                        }

                    }
                    var successAgain = await _context.SaveChangesAsync() > 0;
                    if (successAgain)
                    {
                        return assessment;
                    }
                    else
                    {
                        throw new Exception("Marks could not be saved.");
                    }

                }
                else
                {
                    throw new Exception("Assessment could not be saved.");
                }

            }
        }



    }
}