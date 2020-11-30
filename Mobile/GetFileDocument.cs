using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;
using Persistence;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using System;
using Domain;
using System.IO;
using System.Net.Http;
using System.Net;
using Microsoft.AspNetCore.Mvc;

namespace Application.Mobile
{
    public class GetFileDocument
    {
        public class Query : IRequest<FileStreamResult>
        {
            public Guid idDoc { get; set; }

        }


        public class Handler : IRequestHandler<Query, FileStreamResult>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<FileStreamResult> Handle(Query request, CancellationToken cancellationToken)
            {

                Document d = await _context.Documents.FindAsync(request.idDoc);
                var file = await System.IO.File.ReadAllBytesAsync(d.Path);
                var dataStream = new MemoryStream(file);

                var stream = new FileStreamResult(dataStream,  "application/octetstream"){FileDownloadName = d.Title};
               
               return (stream);

            }
        }
    }
}