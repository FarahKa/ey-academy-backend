using System;
using System.IO;
using Domain;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Persistence;

namespace API.Controllers
{


    public class DocumentController : BaseController
    {

        private readonly DataContext _context;
        public DocumentController(DataContext context)
        {
            _context = context;
        }

        public class InfoPacket
        {
            public string description { get; set; }
            public Guid trainingId {get; set;}

            public IFormFile files { get; set; }
        }

        [AllowAnonymous]
        [HttpPost("upload")]
        public string OnPostUploadAsync([FromForm]InfoPacket packet)
        {
            try
            {

                if (packet.files != null)
                {
                    if (packet.files.Length > 0)
                    {
                        //Getting FileName
                        var fileName = Path.GetFileName(packet.files.FileName);
                        var Id = Guid.NewGuid();

                        var doc = new Document()
                        {
                            Id = Id,
                            Title = fileName,
                            Description = packet.description,
                            TrainingId = packet.trainingId,
                            Date = DateTime.Now,
                            Path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"Documents\", String.Concat(Id, Path.GetExtension(fileName)))
                        };


                        Console.WriteLine(doc.Path);

                        using (var stream = System.IO.File.Create(doc.Path))
                        {
                            packet.files.CopyToAsync(stream);
                            stream.Flush();
                        }

                        _context.Documents.Add(doc);
                        _context.SaveChanges();

                    }
                }
                return "yes";
            }
            catch (Exception ex)
            {
                return ex.Message.ToString();
            }

        }

    }

}