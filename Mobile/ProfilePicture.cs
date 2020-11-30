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
    public class ProfilePicture
    {

        public class Query : IRequest<Image>
        {
            public string id { get; set; }

        }
        public class Handler : IRequestHandler<Query, Image>
        {
            private readonly DataContext _context;
            public Handler(DataContext context)
            {
                _context = context;
            }

            public async Task<Image> Handle(Query request, CancellationToken cancellationToken)
            {

                var photo = await _context.Images.FirstOrDefaultAsync(i => i.idUser == request.id);
                
                return(photo);

            }
        }
    }
}