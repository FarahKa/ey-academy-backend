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
    public class SubmitAssessmentJury
    {

        public class Query : IRequest
        {
            public string JuryId { get; set; }
            public Guid groupByTrainingId { get; set; }

            public Guid TJAId { get; set; }

            public string RemarkablePerformance { get; set; }
            public string RemarkablePerformanceComment { get; set; }

            public List<Note> Marks { get; set; }


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
                if(!request.Marks.Any()){
                    throw new Exception("Empty Marks List submitted. Exiting.");

                }

                JuryAssessment assessment = new JuryAssessment();
                assessment.Id = Guid.NewGuid();
                assessment.UserId = request.JuryId;
                assessment.TJAId = request.TJAId;
                assessment.GroupTrainingId = request.groupByTrainingId;
                assessment.Comment=request.RemarkablePerformanceComment;
                assessment.consultantName = request.RemarkablePerformance;

                _context.JuryAssessments.Add(assessment);

                var success = await _context.SaveChangesAsync() > 0;

                if (success)
                {
                    foreach (var mark in request.Marks)
                    {
                        mark.Id = Guid.NewGuid();
                        mark.JAId = assessment.Id;
                        _context.Notes.Add(mark);
                    }
                    var successAgain = await _context.SaveChangesAsync() > 0;
                    if(successAgain){
                        return Unit.Value;
                    } else {
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