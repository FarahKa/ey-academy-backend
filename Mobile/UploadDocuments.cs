// using System;
// using System.Threading;
// using System.Threading.Tasks;
// using Domain;
// using MediatR;
// using Persistence;
// using System.Collections.Generic;
// using Microsoft.AspNetCore.Http;
// using System.IO;

// namespace Application.Mobile
// {
//     public class UploadDocument
//     {

//         public class Query : IRequest<string>
//         {
//             public IFormFile files;
//             public string description;
//             public Guid trainingId;
//         }

//         public class Handler : IRequestHandler<Query, string>
//         {
//             private readonly DataContext _context;
//             public Handler(DataContext context)
//             {
//                 _context = context;
//             }

//             public async Task<string> Handle(Query request, CancellationToken cancellationToken)
//             {
//                 Console.WriteLine("______________");
//                 Console.WriteLine(request.description);
//                 Console.WriteLine("_________");

//                 try
//                 {
                    
//                         if (request.files != null)
//                         {
//                             if (request.files.Length > 0)
//                             {
//                                 //Getting FileName
//                                 var fileName = Path.GetFileName(request.files.FileName);
//                                 var Id = new Guid();

//                                 var doc = new Document()
//                                 {
//                                     Id = Id,
//                                     Title = fileName,
//                                     Description = request.description,
//                                     TrainingId = request.trainingId,
//                                     Date = DateTime.Now,
//                                     Path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"Documents\", String.Concat(Id, Path.GetExtension(fileName)))
//                                 };

//                                 Console.WriteLine(doc.Path);

//                                 using (var stream = System.IO.File.Create(doc.Path))
//                                 {
//                                     await request.files.CopyToAsync(stream);
//                                     stream.Flush();
//                                 }

//                                 _context.Documents.Add(doc);
//                                 _context.SaveChanges();

//                             }
//                         }

                    
//                     return "yes";
//                 }
//                 catch (Exception ex)
//                 {
//                     return ex.Message.ToString();
//                 }

//             }
//         }
//     }
// }

